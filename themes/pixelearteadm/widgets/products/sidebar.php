<div class="dash_content_sidebar">
    <h3 class="icon-asterisk">dashboard/produto</h3>
    <p class="dash_content_sidebar_desc">Aqui você gerencia todos os produtos e categorias...</p>

    <nav>
        <?php
        $nav = function ($icon, $href, $title) use ($app) {
            $active = ($app == $href ? "active" : null);
            $url = url("/admin/{$href}");
            return "<a class=\"icon-{$icon} radius {$active}\" href=\"{$url}\">{$title}</a>";
        };

        echo $nav("pencil-square-o", "products/home", "Produto");
        echo $nav("bookmark", "products/categories", "Categorias");
        echo $nav("plus-circle", "products/product", "Novo Produto");
        ?>

        <?php if (empty($noImage)): ?>
            <?php if (!empty($post->cover)): ?>
                <img class="radius" style="width: 100%; margin-top: 30px" src="<?= image($post->cover, 680); ?>"/>
            <?php endif; ?>

            <?php if (empty($subcategory->cover)): ?>
                <?php if (!empty($category->cover)): ?>
                    <img class="radius" style="width: 100%; margin-top: 30px" src="<?= image($category->cover, 680); ?>"/>
                <?php endif; ?>
            <?php endif; ?>

            <?php if (!empty($subcategory->cover)): ?>
                <img class="radius" style="width: 100%; margin-top: 30px" src="<?= image($category->cover, 680); ?>"/>
            <?php endif; ?>
        <?php endif; ?>
    </nav>
</div>