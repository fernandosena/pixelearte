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
        <div class="input-group searcch" data-toggle="modal" data-target="#exampleModalCenter">
            <span class="input-group-addon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-5096502a="">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C8.13 2 5 5.2152 5 9.19055C5 13.4741 9.42 19.3806 11.24 21.6302C11.64 22.1233 12.37 22.1233 12.77 21.6302C14.58 19.3806 19 13.4741 19 9.19055C19 5.2152 15.87 2 12 2ZM12 11.5C10.62 11.5 9.5 10.38 9.5 9C9.5 7.62 10.62 6.5 12 6.5C13.38 6.5 14.5 7.62 14.5 9C14.5 10.38 13.38 11.5 12 11.5Z" fill="#5d7a89"></path>
                </svg>
            </span>
            <input type="text" class="form-control" placeholder="Buscar cidade">
        </div>
        <!-- Right navbar links -->
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   class="nav-link link-cadastro dropdown-toggle">CADASTRE-SE GRÁTIS</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                    <li><a href="<?= url("/cadastrar/contratante") ?>" class="dropdown-item">Quero ser contratante</a></li>
                    <li><a href="<?= url("/cadastrar/anuciante") ?>" class="dropdown-item">Quero ser anuciante</a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   class="nav-link dropdown-toggle">LOGIN</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                    <li><a href="<?= url("/entrar/contratante") ?>" class="dropdown-item">Entrar como contratante</a></li>
                    <li><a href="<?= url("/entrar/anuciante") ?>" class="dropdown-item">Entrar como anuciante</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<!-- /.navbar -->