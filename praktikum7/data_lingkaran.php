<?php
require_once "class_lingkaran.php";
echo "NILAI PHI " . Lingkaran::PHI;

$lingkaran1 = new Lingkaran(10);
$lingkaran2 = new Lingkaran(4);

echo "<br/>Luas Lingkaran ".$lingkaran1->getLuas();

?>
