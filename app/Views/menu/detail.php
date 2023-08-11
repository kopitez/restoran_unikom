<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="mt-2">Detail Menu</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Menu</a></li>
              <li class="breadcrumb-item active">Detail Menu</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <div class="container">
      <div class="row justify-content-center">
        <div class="col-10">
          <div class="card mb-3" style="max-width:940px;">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="<?= base_url(); ?>/assets/img/<?= $menu['gambar']; ?>" class="img-fluid rounded-start" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h2 class="card-text mb-3"><b><?= $menu['kode_menu']; ?> - <?= $menu['nama']; ?></b></h2>
                  <p class="card-text"><b>Harga : </b><?= number_format($menu['harga'], 2, ',', '.'); ?></p>
                  <p class="card-text"><b>Stok : </b><?= $menu['stok']; ?></p>
                  <p class="card-text">
                    <medium><b>Deskripsi : </b><?= $menu['deskripsi']; ?></medium>
                  </p>
                  <a href="<?= base_url('/menu'); ?>" class="btn btn-secondary mr-2">Kembali</a>
                  <?php if (is_koki()) : ?>
                    <a href="<?= base_url(); ?>/menu/edit/<?= $menu['slug']; ?>" class="btn btn-warning">Ubah</a>
                    <!-- <form action="/menu/<?php // echo $menu['kode_menu']; 
                                              ?>" method="post" class="d-inline" >
                            <?php //echo csrf_field(); 
                            ?>
                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?');">Hapus</button>
                          </form> -->
                    <br><br>
                  <?php endif; ?>
                  <!-- <a href="/menu">Kembali ke daftar menu</a> -->
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>
<?= $this->endSection(); ?>