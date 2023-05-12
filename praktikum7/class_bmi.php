<?php 
if(isset($_POST['submit'])) {
$nama = $_POST['nama'];
$umur = $_POST['umur'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$berat = $_POST['berat'];
$tinggi = $_POST['tinggi'];

class bmi{
    public $nama;
    public $umur;
    public $jenis_kelamin;
    public $berat;
    public $tinggi;

    public function __construct($nama, $umur, $jenis_kelamin, $berat, $tinggi){
        $this->nama = $nama;
        $this->umur = $umur;
        $this->$jenis_kelamin = $jenis_kelamin;
        $this->berat = $berat;
        $this->tinggi = $tinggi;
    }
    public function hasil(){
       $tinggi_badan = $this->tinggi / 100;
       $hasil = $this->berat / ($tinggi_badan * $tinggi_badan);
       return ($tinggi_badan);
    }
    public function status(){
        $hasil = $this->hasil();
        if($hasil <= 18.5){
            echo "normal";
        }elseif($hasil >=18.5 && $hasil <=24.9){
            echo "kelebihan berat badan";
        }elseif($hasil >=25.0 && $hasil <=29.9){
            echo "Kegemukan";
        }elseif($hasil >=30.0){
            echo "obesitas";
        }else{
            echo "masukan berat";
        }
    }
}
$person = new bmi($nama, $umur, $jenis_kelamin, $berat, $tinggi);
}
?>