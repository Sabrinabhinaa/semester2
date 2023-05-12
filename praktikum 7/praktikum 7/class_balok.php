<?php

class balok {
    //membuat property
    public $p;
    public $l;
    public $t;

    //membuat method
    public function __construct($p, $l, $t){
        $this->p = $p;
        $this->l = $l;
        $this->t = $t;
    }

    public function luas(){
        return 2 * ( $this->p *  $this->l +  $this->p *  $this->t +  $this->l*  $this->t );    
    }

    public function keliling(){
        return 4 * ( $this->p+ $this->l+ $this->t);    
    }
    public function volume(){
        return   $this->p* $this->l* $this->t;    
    }
}

//membuat objek atau instance

$balok1 = new balok(5,10,15);
echo "luas balok 1 = " . $balok1->luas();
echo "<br>";
echo "keliling balok 1 = " . $balok1->keliling();
echo "<br>";
echo "volume balok 1 = " . $balok1->volume();

echo "<hr>";
$balok2 = new balok(15,20,25);
echo "luas balok 2 =  ". $balok2->luas() . " cm " ;
echo "<br>";
echo "keliling balok 2 = " . $balok2->keliling() . " cm ";
echo "<br>";
echo "volume balok 2 = " . $balok2->volume() . " cm ";