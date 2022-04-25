<?php

namespace Source\App\Web;

use Source\Core\Controller;
use Source\Models\Category;
use Source\Models\Report\Access;
use Source\Models\Report\Online;
use Source\Support\Pager;

/**
 * Web Product
 * @package Source\App
 */
class Product extends Controller
{
    /**
     * Web constructor.
     */
    public function __construct()
    {
        parent::__construct(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/");

        (new Access())->report();
        (new Online())->report();
    }

    /**
     * SITE HOME
     */
    public function home(): void
    {
        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg")
        );

        echo $this->view->render("product", [
            "head" => $head,
            "products" => (new \Source\Models\Product())
                ->find()
                ->limit(12)
                ->fetch(true),
            "categories" => (new Category())
                ->find("type = 'product'")
                ->fetch(true),
        ]);
    }

    public function single(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg")
        );

        $product = (new \Source\Models\Product())->findByUri($data["uri"]);
        echo $this->view->render("product-single", [
            "head" => $head,
            "product"=> $product,
            "relateds" => (new \Source\Models\Product())
                ->find("category = :c AND id != :id", "c={$product->category}&id={$product->id}")
                ->limit(5)
            ->fetch(true)
        ]);
    }


    public function category(array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        if(isset($data["s"])){
            $categorySearchs = (new Category())->find("title LIKE '%{$data["s"]}%' AND type = :t",
                "t=product")
                ->limit(10)
                ->fetch(true);
            $li = null;
            if($categorySearchs){
                foreach ($categorySearchs as $categorySearch) {
                    $li .= "<li><a href='".url("/produtos/categoria/{$categorySearch->uri}")."'>{$categorySearch->title}</a></li>";
                }
            }else{
                $li .= "Nenhuma categoria encontrada, tente novamente";
            }
            echo json_encode(["div"=>"#ul-categoria","dados"=>"<ul>{$li}</ul>"]);
            return;
        }

        $category = (new Category())->findByUri($data["category"]);
        if (!$category) {
            redirect("/produtos");
        }

        $productCategory = (new \Source\Models\Product())->findProduct("category = :c", "c={$category->id}");
        $page = (!empty($data['page']) && filter_var($data['page'], FILTER_VALIDATE_INT) >= 1 ? $data['page'] : 1);
        $pager = new Pager(url("/categoria/{$category->uri}/"));
        $pager->pager($productCategory->count(), 9, $page);

        $head = $this->seo->render(
            "Categoria {$category->title} - " . CONF_SITE_NAME,
            $category->description,
            url("/categoria/{$category->uri}/{$page}"),
            ($category->cover ? image($category->cover, 1200, 628) : theme("/assets/images/share.jpg"))
        );

        echo $this->view->render("category", [
            "head" => $head,
            "title" => "Categoria: {$category->title}",
            "products" => $productCategory
                ->limit($pager->limit())
                ->offset($pager->offset())
                ->order("created_at DESC")
                ->fetch(true),
            "paginator" => $pager->render()
        ]);
    }

    public function search(array $data): void
    {
        if (!empty($data['s'])) {
            $search = str_search($data['s']);
            echo json_encode(["redirect" => url("/produtos/buscar/{$search}/1")]);
            return;
        }

        $search = str_search($data['search']);
        $page = (filter_var($data['page'], FILTER_VALIDATE_INT) >= 1 ? $data['page'] : 1);

        if ($search == "all") {
            redirect("/produtos");
        }

        $head = $this->seo->render(
            "Pesquisa por {$search} - " . CONF_SITE_NAME,
            "Confira os resultados de sua pesquisa para {$search}",
            url("/produtos/buscar/{$search}/{$page}"),
            theme("/assets/images/share.jpg")
        );

        $productSearch = (new \Source\Models\Product())->findProduct("MATCH(title, details, description) AGAINST(:s)", "s={$search}");

        if (!$productSearch->count()) {
            echo $this->view->render("category", [
                "head" => $head,
                "title" => "PESQUISA POR: {$search}"
            ]);
            return;
        }

        $pager = new Pager(url("/produtos/buscar/{$search}/"));
        $pager->pager($productSearch->count(), 9, $page);

        echo $this->view->render("category", [
            "head" => $head,
            "title" => "PESQUISA POR: {$search}",
            "products" => $productSearch->limit($pager->limit())->offset($pager->offset())->fetch(true),
            "paginator" => $pager->render()
        ]);
    }
}