<?php
	// Koneksi ke mysql
	$conn = mysqli_connect("localhost", "root", "", "persediaandb");

	if (mysqli_connect_errno()) {
		echo "Koneksi Gagal".mysqli_connect_errno();
	}

	{
		$vkdmotor = $_POST['txtkdmotor']; // jadi $vkdmotor disamaain kek yang di mysql nya
		$vnmmotor = $_POST['txtnmotor'];
		$vwmotor = $_POST['txtwarna'];
		$vharga = $_POST['txtharga'];
		{
			$query = mysqli_query($conn, "insert into motor(kdmotor, nmmotor, wmotor, harga ) values('$vkdmotor', '$vnmmotor', '$vwmotor', '$vharga' )");
			
			if ($query)
				echo "Input Data Sukses<br>";
			else
				echo "Input Data Gagal<br>";
		}
		// header("location:barang.php");
	}
?>