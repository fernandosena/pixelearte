<header id="cabecalho">
    <div class="superior">
        <div class="centro">
            <nav>
                <ul>
                    <a href=""><li>Central de ajuda</li></a>
                    <a href=""><li>Contato</li></a>
                    <a class="social" href="https://api.whatsapp.com/<?= CONF_SOCIAL_WHATSAPP_LINK ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-whatsapp"></i> <?= CONF_SOCIAL_WHATSAPP ?></li></a>
                    <a class="social" href="https://www.facebook.com/<?= CONF_SOCIAL_FACEBOOK_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-facebook"></i></li></a>
                    <a class="social" href="https://www.instagram.com/<?= CONF_SOCIAL_INSTAGRAM_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-instagram"></i></li></a>
                    <a class="social" href="https://www.youtube.com/<?= CONF_SOCIAL_YOUTUBE_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-youtube"></i></li></a>
                </ul>
            </nav>
        </div>
    </div>
    <div class="principal">
        <div class="centro">
            <div class="logo">
                <a href="<?= url() ?>"><img src="<?= theme("/assets/img/logo.png") ?>" alt="<?= CONF_SITE_NAME ?>" title="<?= CONF_SITE_NAME ?>"></a>
            </div>
            <div class="pesquisa">
                <form action="<?= url("/produtos/buscar")?>" method="post">
                    <input type="text" id="busca" name="s" placeholder="O que você está procurando?">
                    <button type="submit">
                        <div>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                    </button>
                </form>
            </div>
            <div class="bag">
                <div class="icone">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <i class="fa-solid fa-chevron-down"></i>
                </div>
                <div id="box-carrinho">
                    <?php
                        if(!empty($_SESSION["compras"]["carrinho"])){
                    ?>
                            <div class="produtos-carrinho">
                                <?php foreach ($_SESSION["compras"]["carrinho"] as $item): ?>
                                    <div class="item">
                                        <div>
                                            <img src="<?= image($item["image"], 350)?>" alt="<?= $item["title"] ?>" title="<?= $item["title"] ?>">
                                        </div>
                                        <div>
                                            <h4><?= $item["title"] ?></h4>
                                            <p><?= $item["value"] ?></p>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <div class="btn-grupo">
                                <a href="<?= url("/carrinho") ?>"><button>Ver carrinho</button></a>
                                <a href="<?= url("/checkout") ?>"><button>Finalizar compra</button></a>
                            </div>
                    <?php
                        }else{
                    ?>
                            <p class="msg-sem-produto">Nenhum produto adicionado ao carrinho</p>
                            <div class="btn-grupo">
                                <a href="<?= url("/carrinho") ?>"><button>Ver carrinho</button></a>
                            </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
            <div class="bar">
                <i class="fa-solid fa-bars"></i>
            </div>
        </div>
    </div>
</header>
<?php if(!empty($menu)): ?>
<div class="menu">
    <div class="centro">
        <nav>
            <ul>
                <?php
                    foreach ($menu as $li):
                    $submenu = $li->subcategory()->fetch(true);
                ?>
                        <li><a href="<?= (empty($submenu)) ? url("/produtos/categoria/{$li->uri}"): "#" ?>"> <?= $li->title ?></a> <?= (!empty($submenu)) ? '<i class="fa-solid fa-chevron-down">': null ?></i>
                        <?php if(!empty($submenu)): ?>
                            <ul>
                                <div>
                                    <?php foreach ($submenu as $ulLi): ?>
                                        <a href="<?= url("/produtos/categoria/{$li->uri}/{$ulLi->uri}")?>"><li><?= $ulLi->title?></li></a>
                                    <?php endforeach;?>
                                </div>
                            </ul>
                        <?php endif;?>
                    </li>
                <?php endforeach;?>
            </ul>
        </nav>
    </div>
</div>
<?php endif;?>