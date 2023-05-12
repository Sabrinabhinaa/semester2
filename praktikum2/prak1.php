<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form nilai</title>
</head>

<body>
<form method="POST">
  Nama : <input type="text" name="nama" value="" size="30"></br>
  Nilai Praktikum : <input type="text" name="nilai" value="" size="6"><br>
  <button name="proses">Simpan</button>
</form>

<?php
$nama = $_POST ['nama'];
$nilai = $_POST ['nilai'];
$tombol = $_POST ['proses'];

$ket = ($nilai >= 55)? "lulus" : "gagal" ;

if($nilai >= 85 && $nilai <= 100) $grade = "A";
elseif ($nilai >= 70 && $nilai <= 84) $grade = "B";
elseif ($nilai >= 56 && $nilai <= 69) $grade = "C";
elseif ($nilai >= 36 && $nilai <= 55) $grade = "D";
elseif ($nilai >= 0 && $nilai <= 35) $grade = "E";
else $grade = "";

 switch ($grade) {
  case 'A': $predikat = 'Sangat Baik' ; break;
  case 'B': $predikat = 'Baik' ; break;
  case 'C': $predikat = 'Cukup' ; break;
  case 'D': $predikat = 'Kurang Baik' ; break;
  case 'E': $predikat = 'Tidak Baik' ; break;
  
  default: $predikat = '' ;
 }
 if(isset($tombol)) { ?>
 
 Nama Siswa : <?= $nama ?><br>
 Nilai : <?= $nilai ?><br>
 Keterangan : <?= $ket ?><br>
 Grade : <?= $grade ?>
<?php } ?>


</body>
</html>