<?php 

class Fruit{
    // membuat property
    public $name;
    public $color;
    public $flavor;

    // membuat method
    public function getName(){
        return $this->name;
    }

    public function getInfo(){
        return "Nama Buah = " . $this->name . "<br>Warna Buah = " . $this->color . "<br>Rasa Buah = " . $this->flavor;
    } 
    
   
        
}

// membuat objek atau instance
$fruit1 = new Fruit();
$fruit1->name = "Mangga";
$fruit1->color = "Hijau ";
$fruit1->flavor = "Manis & Asam";



echo $fruit1-> getName();
echo "<br>";
echo $fruit1-> getInfo();
echo "<br>";


echo "<hr>";
$fruit2 = new Fruit();
$fruit2->name = "Semangka";
$fruit2->color = "Hijau ";
$fruit2->flavor = "Manis";



echo $fruit2-> getName();
echo "<br>";
echo $fruit2-> getInfo();
echo "<br>";

echo "<hr>";
$fruit3 = new Fruit();
$fruit3->name = "Jeruk";
$fruit3->color = "Kuning ";
$fruit3->flavor = "Asam";



echo $fruit3-> getName();
echo "<br>";
echo $fruit3-> getInfo();
echo "<br>";


?>