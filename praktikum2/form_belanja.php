<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Belanja Online</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
    <h2>Belanja Online</h2>
        <div class="row mt-6">
        <div class="col-8">
        <form method="post" action="">
        <div class="form-group row">
              <label for="costumer" class="col-4 col-form-label">Customer</label> 
              <div class="col-8">
              <input id="costumer" name="costumer" name="costumer" placeholder="Nama Costomer" type="text" required="required" class="form-control">
              </div>
  </div>
  <div class="form-group row">
  <label class="col-4">Pilih Produk</label> 
    <div class="col-8">
    <div class="custom-control custom-radio custom-control-inline">
        <input name="produk" id="produk_0" type="radio" class="custom-control-input" value="TV"> 
        <label for="produk_0" class="custom-control-label">TV</label>
    </div>
    <div class="custom-control custom-radio custom-control-inline">
        <input name="produk" id="produk_1" type="radio" class="custom-control-input" value="Kulkas"> 
        <label for="produk_1" class="custom-control-label">Kulkas</label>
    </div>
    <div class="custom-control custom-radio custom-control-inline">
        <input name="produk" id="produk_2" type="radio" class="custom-control-input" value="Mesin Cuci"> 
        <label for="produk_2" class="custom-control-label">Mesin Cuci</label>
      </div>
      </div>
      </div>
  <div class="form-group row">
    <label for="jumlah" class="col-4 col-form-label">Jumlah</label> 
    <div class="col-8">
    <input id="jumlah" name="jumlah" name="costumer" placeholder="Jumlah" type="text" required="required" class="form-control">
    </div>
    </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Kirim</button>
    </div>
  </div>
</form>
            </div>
            <div class="col-md-4">
            <ul class="list-group">
            <li class="list-group-item active" aria-current="true">Daftar Harga</li>
            <li class="list-group-item">TV : 4.200.000</li>
            <li class="list-group-item">KULKAS : 3.100.000</li>
            <li class="list-group-item">MESIN CUCI : 3.800.000</li>
            <li class="list-group-item active" aria-current="true">Harga Dapat Berubah Setiap Saat</li>
            </ul>
            </div>


            </div>

<?php if(isset($_POST['submit'])) : ?>

    Nama Customer : <?= $_POST['costumer']?>
    <br>
    Produk Pilihan : <?= $_POST['produk']?>
    <br>
    Jumlah Beli : <?= $_POST['jumlah']?>
    <br>

    <?php
     if($_POST['produk'] == "Tv" && $_POST['jumlah'] >= 1){
        $harga = 4200000 * $_POST['jumlah'];
        echo "TOTAL HARGA : " . number_format($harga,0,".",".");
     } elseif ($_POST['produk'] == "Kulkas" && $_POST['jumlah'] >=1){
        $harga = 3100000 * $_POST['jumlah'];
        echo "TOTAL HARGA : " . number_format($harga,0,".",".");
     } elseif ($_POST['produk'] == "Mesin Cuci" && $_POST['jumlah'] >=1){
        $harga = 3800000 * $_POST['jumlah'];
        echo "TOTAL HARGA : " . number_format($harga,0,".",".");
     }
    ?>

 <?php endif ?>
</div>
</body>
</html>