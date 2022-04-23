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
                <form action="">
                    <input type="text" id="busca" name="q" placeholder="O que você está procurando?">
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
                                            <img src="<?= url("storage/images/{$item["image"]}")?>">
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
            <i class="fa-solid fa-bars"></i>
        </div>
    </div>
</header>
<div class="menu">
    <div class="centro">
        <nav>
            <ul>
                <li>Todos Departamentos <i class="fa-solid fa-chevron-down"></i>
                    <ul>
                        <div>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                        </div>
                    </ul>
                </li>
                <li>Todos Departamentos <i class="fa-solid fa-chevron-down"></i>
                    <ul>
                        <div>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                        </div>
                    </ul>
                </li>
                <li>Todos Departamentos <i class="fa-solid fa-chevron-down"></i>
                    <ul>
                        <div>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                        </div>
                    </ul>
                </li>
                <li>Todos Departamentos <i class="fa-solid fa-chevron-down"></i>
                    <ul>
                        <div>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                            <a href=""><li>Todos Departamentos</li></a>
                        </div>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>