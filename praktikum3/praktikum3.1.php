<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Registrasi</title>
  </head>
  <body>
<?php

$ar_prodi = ["SI"=> "Sistem Informatika", "TI"=> "Teknik Informatika", 
    "BD"=> "Bisnis Digital"];
$ar_skill = ["HTML"=>10, "CSS"=>10, "Javascript"=>20, "RWD
    Boostrap"=>20, "PHP"=>30, "Python"=>30, "Java"=>50];

?>

    <fieldset style="background-color: pink;">
        <legend>Form Registrasi IT Club Data Science</legend>

            <table>
                <tr>
                    
                </tr>
                <tr>
                    <th><form method="POST">
                </th>
            </tr>
                <tr>
                <td>NIM 
                </td>
                <td>:
                    <input type="text" name="nim" value="" size="30"></br>
                </td>
            </tr>
            </tr>
            <td>Nama 
        </td>
        <td>:
            <input type="text" name="nama" value="" size="30"></br>
        </td>
            </tr>
        </td>
            </tr>
        <tr>
            <td>
            Jenis Kelamin
            </td>
            <td>:
            <input type="radio" name="jk" value="L" size="30">Laki-laki
            <input type="radio" name="jk" value="P" size="30">Perempuan
            </td>
        </tr>
        <tr>
            <td>
        Program Studi 
        </td>
        <td>:
        <select name="prodi">
        <?php

            foreach($ar_prodi as $prodi => $p){ ?>

        <option value="<?= $prodi ?>"><?= $p ?></option>


        <?php }?>
    </select>
            <td>
            </tr>
            <tr>
                <td> Skill Programming</td>
            <td>:
                <?php
                    foreach($ar_skill as $skill => $s){
                ?>
                <input type="checkbox" name="skill[]" value="<?= $skill ?>"><?= $skill ?>
                <?php } ?>
            </td>
            </tr>
            <td>Alamat
        </td>
        <td>:
            <input type="text" name="alamat" value="" size="30"></br>
        </td>
            </tr>
            <td>Email
        </td>
        <td>:
            <input type="text" name="email" value="" size="30"></br>
            <tr>
            <td>
        <button name="proses">Simpan</button>
    </td>
    </tr>
                    </form>
        </table>
            </fieldset>

<?php
if(isset($_POST['proses'])){ 

    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $jk = $_POST['jk'];
    $alamat = $_POST['alamat'];
    $prodi = $_POST['prodi'];
    $email = $_POST['email'];
    $skill = $_POST['skill'];
    $total = 0;


foreach ($skill as $s) {
    switch ($s) {
        case 'HTML':
            $total += 10;
            break;
        case 'CSS':
            $total += 10;
            break;
        case 'Javaacript':
            $total += 20;
            break;
        case 'RWD Bootstrap':
            $total += 20;
            break;
        case 'PHP':
            $total += 30;
            break;
        case 'Python':
                $total += 30;
                break;
        case 'java':
                $total += 50;
                break;

        }
    }

?>
NIM : <?= $nim ?><br/>
Nama : <?= $nama ?><br/>
Jenis Kelamin : <?= $jk ?><br/>
Program Studi : <?= $prodi ?><br/>
Alamat : <?= $alamat ?><br/>
Email : <?= $email ?><br/>
skor : <?= $total ?><br/>
<?php
 
        function skor_skill($total){
            if($total >= 100 && $total <= 150) {
                return "Sangat Baik";
            } elseif ($total >= 60 && $total <= 100) {
                return "Baik";
            } elseif ($total >= 40 && $total <=60) {
                return "Cukup";
            } elseif ($total >= 0 && $total <=40) {
                return "Kurang";
            } else {
                return "Tidak Memadai";
            } 
        }
    echo 'Kategori Skill :'.skor_skill($total);
}

?>

</body>
</html>