<?php
$ns1 = ['id'=>1,'nim'=>'01101','uts'=>80,'uas'=>84,'tugas'=>78];
$ns2 = ['id'=>2,'nim'=>'01121','uts'=>70,'uas'=>50,'tugas'=>68];
$ns3 = ['id'=>3,'nim'=>'01130','uts'=>60,'uas'=>86,'tugas'=>70];
$ns4 = ['id'=>4,'nim'=>'01134','uts'=>90,'uas'=>91,'tugas'=>82];

$ar_nilai = [$ns1, $ns2 , $ns3, $ns4];

?>

<h3>Daftar Nilai Siswa</h3>
<table>
	<thead>
		<tr>
			<th>No</th>
			<th>NIM</th>
			<th>UTS</th>
			<th>Tugas</th>
			<th>Nilai Akhir</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$no = 1;
		foreach ($ar_nilai as $ns) {
			echo "<tr><td>" .$no."</td>" ;
            echo "<td>" .$ns['nim']."</td>";
            echo "<td>" .$ns['uts']."</td>";
            echo "<td>" .$ns['tugas']."</td>";
			echo "</tr>";
            
            $no++;
		}
        ?>
	</tbody>
</table>