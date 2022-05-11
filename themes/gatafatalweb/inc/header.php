<!-- Navbar -->
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white bg-color-primary">
    <div class="container">
        <a href="<?= url() ?>" class="navbar-brand">
            <img src="<?= theme("assets/img/logo.png")?>" alt="<?= CONF_SITE_NAME ?>" class="logo">
        </a>

        <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Right navbar links -->
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   class="nav-link link-cadastro dropdown-toggle">CADASTRE-SE GRÁTIS</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                    <li><a href="#" class="dropdown-item">Quero ser contratante</a></li>
                    <li><a href="#" class="dropdown-item">Quero ser anuciante</a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   class="nav-link dropdown-toggle">LOGIN</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                    <li><a href="#" class="dropdown-item">Entrar como contratante</a></li>
                    <li><a href="#" class="dropdown-item">Entrar como anuciante</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<!-- /.navbar -->