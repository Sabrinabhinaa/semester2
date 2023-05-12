<?php 
require_once "layouts/header.php";
require_once "layouts/menu.php";

$mahasiswa1 = [
    'id'=>1,
    'nama'=>"jaja",
    'nim'=>0110122134,
    'uts'=>97,
    'uas'=>87,
    'tugas'=>90,
];


$mahasiswa2 = [
    'id'=>2,
    'nama'=>"jali",
    'nim'=>0110122135,
    'uts'=>96,
    'uas'=>86,
    'tugas'=>89,
];
$mahasiswa3 = [
    'id'=>3,
    'nama'=>"jaki",
    'nim'=>0110122136,
    'uts'=>95,
    'uas'=>85,
    'tugas'=>88,
];

$ar_nilai = [$mahasiswa1, $mahasiswa2, $mahasiswa3];

?>

?><div class="container">
        <h3>Daftar Nilai Mahasiswa</h3>
            <table class="table table-stripped">
                <tr>
                    <th>id</th>
                    <th>nama</th>
                    <th>nim</th>
                    <th>uts</th>
                    <th>uas</th>
                    <th>tugas</th>
                </tr>
                <?php foreach($ar_nilai as $nilai){?>
                <tr>
                    <td><?= $nilai["id"]; ?></td>
                    <td><?= $nilai["nama"]; ?></td>
                    <td><?= $nilai["nim"]; ?></td>
                    <td><?= $nilai["uts"]; ?></td>
                    <td><?= $nilai["uas"]; ?></td>
                    <td><?= $nilai["tugas"]; ?></td>
                </tr>
                <?php } ?>
            </table>
    </div>

    <?php require_once "layouts/footer.php";?>