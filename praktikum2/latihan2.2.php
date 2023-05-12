<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
  </head>
  <body>
</head>
<body>
<form method="post">
  Nama : <input type="text" name="nama" value="" size="30"></br>
  Mata Kuliah :
  <select name="matkul">
    <option value="DDP">Dasar-Dasar Pemrograman</option>
    <option value="BDI">Basis Data</option>
    <option value="WEB1">Pemrograman Web</option>
  </select><br>
  Nilai UTS : <input type="text" name="nilai_uts" value="" size="6"><br>
  Nilai UAS : <input type="text" name="nilai_uas" value="" size="6"><br>
  Nilai Praktikum : <input type="text" name="nilai_tugas" value="" size="6"><br>
  <br>
  <button name="proses">Simpan</button>
</form>

<?php
error_reporting(0);
$proses = $_POST ['proses'];
$nama_siswa = $_POST ['nama'];
$mata_kuliah = $_POST ['matkul'];
$nilai_uts = $_POST ['nilai_uts'];
$nilai_uas = $_POST ['nilai_uas'];
$nilai_tugas = $_POST ['nilai_tugas'];
?>

<?= $proses ?>
Nama Siswa : <?= $nama_siswa ?>
<br>Mata Kuliah : <?= $mata_kuliah ?>
<br>Nilai UTS : <?= $nilai_uts ?>
<br>Nilai UAS : <?= $nilai_uas ?>
<br>Nilai Praktikum : <?= $nilai_tugas ?>
</body>
</html>