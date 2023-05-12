<?php

class lingkaran {
    //membuat property
    public $jari_jari;
    public const PHI = 3.14 ;

    //membuat method
    public function  __construct($r){
        $this->jari_jari = $r;
    }
    public function luas(){
        return self::PHI *  $this->jari_jari *  $this->jari_jari;    
    }

    public function keliling(){
        return 2 * self::PHI *  $this->jari_jari;    
    }
}

//membuat objek atau instance

$lingkaran1 = new lingkaran(10);
echo "luas lingkaran = " . $lingkaran1->luas();
echo "<br>";
echo "keliling lingkaran = " . $lingkaran1->keliling();