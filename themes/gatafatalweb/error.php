<?php $v->layout("_theme"); ?>
<!-- Main content -->
<section class="content mt-5 mb-5">
    <div class="error-page">
        <h2 class="headline text-warning">&bull;<?= $error->code; ?>&bull;</h2>

        <div class="error-content">
            <h3><i class="fa fa-exclamation-triangle text-warning" aria-hidden="true"></i> <?= $error->title; ?></h3>
            <p>
                <?= $error->message; ?>
            </p>
            <?php if ($error->link): ?>
                <a class="btn btn-warning"
                   title="<?= $error->linkTitle; ?>" href="<?= $error->link; ?>">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i> <?= $error->linkTitle; ?>
                </a>
            <?php endif; ?>
        </div>
        <!-- /.error-content -->
    </div>
    <!-- /.error-page -->
</section>
<!-- /.content -->
