<?php 
require_once "layouts/header.php";
require_once "layouts/menu.php";

?>

<div class="container">
    <table class="table text-uppercase table-bordered">
        <tr class="table-primary">
            <th>nama</th>
            <th>mata kuliah</th>
            <th>tugas</th>
            <th>uts</th>
            <th>uas</th>
            <th>total nilai</th>
            <th>keterangan</th>
        </tr>
        <?php require_once "../../praktikum 2/proses_nilai.php";?>
        <tr>
            <td><?=$nama; ?></td>
            <td><?=$matkul; ?></td>
            <td><?=$tugas; ?></td>
            <td><?=$uts; ?></td>
            <td><?=$uas; ?></td>
            <td><?=(int) $total_nilai; ?></td>
            <td><?=$keterangan; ?></td>
        </tr>
    </table>
  </div>
  <?php require_once "layouts/footer.php";?>