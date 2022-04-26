<?php

namespace Source\App\Admin;

use Source\Models\Category;
use Source\Models\Post;
use Source\Models\User;
use Source\Support\Pager;
use Source\Support\Thumb;
use Source\Support\Upload;

/**
 * Class Product
 * @package Source\App\Admin
 */
class Product extends Admin
{
    /**
     * Blog constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @param array|null $data
     */
    public function home(?array $data): void
    {
        //search redirect
        if (!empty($data["s"])) {
            $s = str_search($data["s"]);
            echo json_encode(["redirect" => url("/admin/products/home/{$s}/1")]);
            return;
        }

        $search = null;
        $product = (new \Source\Models\Product())->find();

        if (!empty($data["search"]) && str_search($data["search"]) != "all") {
            $search = str_search($data["search"]);
            $product = (new \Source\Models\Product())->find("MATCH(title, details, description) AGAINST(:s)", "s={$search}");
            if (!$product->count()) {
                $this->message->info("Sua pesquisa não retornou resultados")->flash();
                redirect("/admin/products/home");
            }
        }

        $all = ($search ?? "all");
        $pager = new Pager(url("/admin/products/home/{$all}/"));
        $pager->pager($product->count(), 12, (!empty($data["page"]) ? $data["page"] : 1));

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Produtos",
            CONF_SITE_DESC,
            url("/admin"),
            url("/admin/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("widgets/products/home", [
            "app" => "products/home",
            "head" => $head,
            "products" => $product->limit($pager->limit())
                ->offset($pager->offset())
                ->order("created_at DESC")
                ->fetch(true),
            "paginator" => $pager->render(),
            "search" => $search
        ]);
    }

    /**
     * @param array|null $data
     * @throws \Exception
     */
    public function product(?array $data): void
    {
        //MCE Upload
        if (!empty($data["upload"]) && !empty($_FILES["image"])) {
            $files = $_FILES["image"];
            $upload = new Upload();
            $image = $upload->image($files, "product-" . time());

            if (!$image) {
                $json["message"] = $upload->message()->render();
                echo json_encode($json);
                return;
            }

            $json["mce_image"] = '<img style="width: 100%;" src="' . url("/storage/{$image}") . '" alt="{title}" title="{title}">';
            echo json_encode($json);
            return;
        }

        //create
        if (!empty($data["action"]) && $data["action"] == "create") {
            $content = $data["description"];
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $productCreate = new \Source\Models\Product();
            $productCreate->category = $data["category"];
            $productCreate->title = $data["title"];
            $productCreate->uri = str_slug($productCreate->title);
            $productCreate->details = $data["details"];
            $productCreate->description = str_replace(["{title}"], [$productCreate->title], $content);
            $productCreate->size = $data["size"];
            $productCreate->old_price = $data["old_price"];
            $productCreate->price = $data["price"];
            $productCreate->quantity = $data["quantity"];

            //upload image
            if (!empty($_FILES["image"])) {
                $files = $_FILES["image"];
                $upload = new Upload();
                $image = $upload->image($files, $productCreate->title);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $productCreate->image = $image;
            }

            if (!$productCreate->save()) {
                $json["message"] = $productCreate->message()->render();
                echo json_encode($json);
                return;
            }

            $this->message->success("Produto cadastrado com sucesso...")->flash();
            $json["redirect"] = url("/admin/products/product/{$productCreate->id}");

            echo json_encode($json);
            return;
        }

        //update
        if (!empty($data["action"]) && $data["action"] == "update") {
            $content = $data["description"];
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $productEdit = (new \Source\Models\Product())->findById($data["product_id"]);
            if (!$productEdit) {
                $this->message->error("Você tentou atualizar um produto que não existe ou foi removido")->flash();
                echo json_encode(["redirect" => url("/admin/products/home")]);
                return;
            }

            if(!empty($data["old_price"])){
                if($data["old_price"] <= $data["price"]){
                    $json["message"] = $this->message->warning("O valor de promoção deve ser maior ao valor anterior")->render();
                    echo json_encode($json);
                    return;
                }
            }

            $productEdit->category = $data["category"];
            $productEdit->title = $data["title"];
            $productEdit->uri = str_slug($productEdit->title);
            $productEdit->details = $data["details"];
            $productEdit->description = str_replace(["{title}"], [$productEdit->title], $content);
            $productEdit->size = $data["size"];
            $productEdit->old_price = $data["old_price"];
            $productEdit->price = $data["price"];
            $productEdit->quantity = $data["quantity"];

            //upload image
            if (!empty($_FILES["image"])) {
                if ($productEdit->image && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$productEdit->image}")) {
                    unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$productEdit->image}");
                    (new Thumb())->flush($productEdit->image);
                }

                $files = $_FILES["image"];
                $upload = new Upload();
                $image = $upload->image($files, $productEdit->title);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $productEdit->image = $image;
            }

            if (!$productEdit->save()) {
                $json["message"] = $productEdit->message()->render();
                echo json_encode($json);
                return;
            }

            $this->message->success("Produto atualizado com sucesso...")->flash();
            echo json_encode(["reload" => true]);
            return;
        }

        //delete
        if (!empty($data["action"]) && $data["action"] == "delete") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            $productDelete = (new \Source\Models\Product())->findById($data["product_id"]);

            if (!$productDelete) {
                $this->message->error("Você tentou excluir um produto que não existe ou já foi removido")->flash();
                echo json_encode(["reload" => true]);
                return;
            }

            if ($productDelete->image && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$productDelete->image}")) {
                unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$productDelete->image}");
                (new Thumb())->flush($productDelete->image);
            }

            $productDelete->destroy();
            $this->message->success("O produto foi excluído com sucesso...")->flash();

            echo json_encode(["reload" => true]);
            return;
        }

        $productEdit = null;
        if (!empty($data["product_id"])) {
            $productId = filter_var($data["product_id"], FILTER_VALIDATE_INT);
            $productEdit = (new \Source\Models\Product())->findById($productId);
        }

        $head = $this->seo->render(
            CONF_SITE_NAME . " | " . ($productEdit->title ?? "Novo Produto"),
            CONF_SITE_DESC,
            url("/admin"),
            url("/admin/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("widgets/products/product", [
            "app" => "products/product",
            "head" => $head,
            "product" => $productEdit,
            "categories" => (new Category())->find("type = :type", "type=product")->order("title")->fetch(true),
            "authors" => (new User())->find("level >= :level", "level=5")->fetch(true)
        ]);
    }

    /**
     * @param array|null $data
     */
    public function categories(?array $data): void
    {
        $categories = (new Category())->find();
        $pager = new Pager(url("/admin/products/categories/"));
        $pager->pager($categories->count(), 6, (!empty($data["page"]) ? $data["page"] : 1));

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Categorias",
            CONF_SITE_DESC,
            url("/admin"),
            url("/admin/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("widgets/products/categories", [
            "app" => "products/categories",
            "head" => $head,
            "categories" => $categories->order("title")->limit($pager->limit())->offset($pager->offset())->fetch(true),
            "paginator" => $pager->render()
        ]);
    }

    /**
     * @param array|null $data
     * @throws \Exception
     */
    public function category(?array $data): void
    {
        //create
        if (!empty($data["action"]) && $data["action"] == "create") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $categoryCreate = new Category();
            $categoryCreate->title = $data["title"];
            $categoryCreate->uri = str_slug($categoryCreate->title);
            $categoryCreate->description = $data["description"];

            //upload image
            if (!empty($_FILES["image"])) {
                $files = $_FILES["image"];
                $upload = new Upload();
                $image = $upload->image($files, $categoryCreate->title);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $categoryCreate->image = $image;
            }

            if (!$categoryCreate->save()) {
                $json["message"] = $categoryCreate->message()->render();
                echo json_encode($json);
                return;
            }

            $this->message->success("Categoria criada com sucesso...")->flash();
            $json["redirect"] = url("/admin/blog/category/{$categoryCreate->id}");

            echo json_encode($json);
            return;
        }

        //update
        if (!empty($data["action"]) && $data["action"] == "update") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            $categoryEdit = (new Category())->findById($data["category_id"]);

            if (!$categoryEdit) {
                $this->message->error("Você tentou editar uma categoria que não existe ou foi removida")->flash();
                echo json_encode(["redirect" => url("/admin/blog/categories")]);
                return;
            }

            $categoryEdit->title = $data["title"];
            $categoryEdit->uri = str_slug($categoryEdit->title);
            $categoryEdit->description = $data["description"];

            //upload image
            if (!empty($_FILES["image"])) {
                if ($categoryEdit->image && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$categoryEdit->image}")) {
                    unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$categoryEdit->image}");
                    (new Thumb())->flush($categoryEdit->image);
                }

                $files = $_FILES["image"];
                $upload = new Upload();
                $image = $upload->image($files, $categoryEdit->title);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $categoryEdit->image = $image;
            }

            if (!$categoryEdit->save()) {
                $json["message"] = $categoryEdit->message()->render();
                echo json_encode($json);
                return;
            }

            $this->message->success("Categoria atualizada com sucesso...")->flash();
            echo json_encode(["reload" => true]);
            return;
        }

        //delete
        if (!empty($data["action"]) && $data["action"] == "delete") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            $categoryDelete = (new Category())->findById($data["category_id"]);

            if (!$categoryDelete) {
                $json["message"] = $this->message->error("A categoria não existe ou já foi excluída antes")->render();
                echo json_encode($json);
                return;
            }

            if ($categoryDelete->posts()->count()) {
                $json["message"] = $this->message->warning("Não é possível remover pois existem posts cadastrados")->render();
                echo json_encode($json);
                return;
            }

            if ($categoryDelete->image && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$categoryDelete->image}")) {
                unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$categoryDelete->image}");
                (new Thumb())->flush($categoryDelete->image);
            }

            $categoryDelete->destroy();

            $this->message->success("A categoria foi excluída com sucesso...")->flash();
            echo json_encode(["reload" => true]);

            return;
        }

        $categoryEdit = null;
        if (!empty($data["category_id"])) {
            $categoryId = filter_var($data["category_id"], FILTER_VALIDATE_INT);
            $categoryEdit = (new Category())->findById($categoryId);
        }

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Categoria",
            CONF_SITE_DESC,
            url("/admin"),
            url("/admin/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("widgets/products/category", [
            "app" => "products/categories",
            "head" => $head,
            "category" => $categoryEdit
        ]);
    }
}