<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= $head; ?>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="<?= theme("plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css") ?>">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?= theme("plugins/icheck-bootstrap/icheck-bootstrap.min.css") ?>">
    <!-- JQVMap -->
    <link rel="stylesheet" href="<?= theme("plugins/jqvmap/jqvmap.min.css") ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= theme("dist/css/adminlte.min.css") ?>">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="<?= theme("plugins/overlayScrollbars/css/OverlayScrollbars.min.css") ?>">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?= theme("plugins/daterangepicker/daterangepicker.css") ?>">
    <!-- summernote -->
    <link rel="stylesheet" href="<?= theme("plugins/summernote/summernote-bs4.min.css") ?>">
    <!-- slick -->
    <link rel="stylesheet" href="<?= theme("plugins/slick/slick.css") ?>">
    <link rel="stylesheet" href="<?= theme("plugins/slick/slick-theme.css") ?>">
    <!-- CSS -->
    <link rel="stylesheet" href="<?= theme("assets/css/boot.css") ?>">
    <link rel="stylesheet" href="<?= theme("assets/css/style.css") ?>">
    <link rel="stylesheet" href="<?= theme("assets/css/responsive.css") ?>">
</head>

<body class="hold-transition layout-top-nav">
<div class="wrapper">

    <?= $v->insert("inc/header"); ?>
    <main class="main_content">
        <?= $v->section("content"); ?>
    </main>
    <?= $v->insert("inc/footer"); ?>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<?= theme("plugins/jquery/jquery.min.js") ?>"></script>
<!-- Bootstrap 4 -->
<script src="<?= theme("plugins/bootstrap/js/bootstrap.bundle.min.js") ?>"></script>
<!-- Slick -->
<script src="<?= theme("plugins/slick/slick.min.js") ?>"></script>
<!-- AdminLTE App -->
<script src="<?= theme("dist/js/adminlte.min.js") ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= theme("dist/js/demo.js") ?>"></script>
<!-- Script -->
<script src="<?= url("shared/scripts/script.js") ?>"></script>
</body>
</html>
