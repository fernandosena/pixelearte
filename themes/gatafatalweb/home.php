<?php $v->layout("_theme"); ?>
<?php if(!empty($banners)): ?>
<div id="banner-principal">
    <div class="slider item-unico">
        <?php foreach ($banners as $banner): ?>
            <div>
                <a href="<?= url("/produto/{$banner->user()->uri}")?>">
                    <figure>
                        <img src="<?= image($banner->cove, 1280)?>" alt="<?= $banner->user()->fullname() ?>" title="<?= $banner->user()->fullname() ?>">
                        <?php if(!empty($banner->title)): ?>
                            <figcaption>
                                <div>
                                    <h2><?= $banner->title ?></h2>
                                    <p><?= $banner->description ?></p>
                                </div>
                            </figcaption>
                        <?php endif; ?>
                    </figure>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<?php endif; ?>

<div id="principal">
    <div class="container">
        <h3>Cadastre-se <strong>grátis</strong> como:</h3>
    </div>
    <div class="row">
        <div class="col-12">
            <!-- Custom Tabs -->
            <div class="">
                <div class="lista-tab d-flex justify-content-center">
                    <ul class="nav nav-pills">
                        <li class="nav-item"><a class="nav-link active" href="#anuciante" data-toggle="tab"><i class="fa fa-bullhorn" aria-hidden="true"></i> Anunciante</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contratante" data-toggle="tab"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Contratante</a></li>
                    </ul>
                </div><!-- /.card-header -->
                <div class="">
                    <div class="tab-content box-content">
                        <div class="tab-pane active" id="anuciante">
                            <div class="row">
                                <div class="col-md-6">
                                    <h2>VOCÊ É ACOMPANHANTE? ANUNCIE GRÁTIS NO <strong><?= CONF_SITE_NAME ?></strong></h2>
                                    <div>
                                        <ul>
                                            <li>Anúncio totalmente gratuíto e com acesso ilimitado;</li>
                                            <li>Publique fotos, vídeos e stories;</li>
                                            <li>Informe os serviços prestados, locais de atendimento e outros;</li>
                                            <li>Receba centenas de contatos de clientes de graça.</li>
                                        </ul>
                                    </div>
                                    <p>Apenas perfis autênticos. Sujeito à verificação de documentação e mídia de comparação.</p>
                                    <div class="flex justify-center btn-padrao bg-color-second">
                                        <a href="https://fatalmodel.com/profile/new">Quero ser anunciante!</a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="contratante">
                            <div class="row">
                                <div class="col-md-6">
                                    <h2>VOCÊ CONTRATA ACOMPANHANTES? TENHA ACESSO À FUNCIONALIDADES EXCLUSIVAS NO <strong><?= CONF_SITE_NAME ?></strong></h2>
                                    <div>
                                        <ul>
                                            <li>Favorite os seus perfis prediletos;</li>
                                            <li>Veja as publicações em primeira mão;</li>
                                            <li>Seu cadastro seguro, discreto e sigiloso;</li>
                                            <li>Tenha acesso à novas funcionalidades em primeira mão a centenas de contatos de clientes de graça.</li>
                                        </ul>
                                    </div>
                                    <div class="flex justify-center btn-padrao">
                                        <a href="https://fatalmodel.com/profile/new">Quero ser contratante!</a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div><!-- /.card-body -->
            </div>
            <!-- ./card -->
        </div>
        <!-- /.col -->
    </div>
</div>

<?php if(!empty($states)): ?>
    <div id="banner-models">
        <div class="bg-color-primary">
            <div class="title">
                <label>PRINCIPAIS CIDADES NO <strong><?= CONF_SITE_NAME ?></strong></label>
            </div>
        </div>
            <?php foreach($states as $state): ?>
                <?php if(!empty($state->address())): ?>
                    <div class="box-models">
                        <div class="container">
                            <h3><?= $state->title ?></h3>
                            <div class="slider models">
                                <?php foreach($state->address() as $address): ?>
                                    <div class="model-item">
                                        <div class="item-model">
                                            <div class="imagem">
                                                <img src="<?= image($address->model()->photo, 350)?>" alt="<?= $address->model()->fullName() ?>" title="<?= $address->model()->fullName() ?>">
                                            </div>
                                            <div class="info">
                                                <h4><?= str_limit_chars(ucfirst($address->model()->fullName()), 15) ?></h4>
                                                <label class="barra"></label>
                                                <p><i class="fa fa-map-marker" aria-hidden="true"></i> <span><?= $address->state()->title ?></span></p>
                                                <p><?= genre($address->model()->genre) ?></p>
                                                <p class="description"><?= str_limit_chars($address->model()->description, 20) ?></p>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="" class="link-perfil">
                                                <div class="perfil bg-color-primary">
                                                    <div>Visitar perfil</div>
                                                    <div><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
    </div>
<?php endif; ?>
