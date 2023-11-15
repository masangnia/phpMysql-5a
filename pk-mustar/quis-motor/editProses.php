<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Motor</title>
</head>

<body>
    <?php
    		$kdmotor = $_POST['kdmotor'];
            $nmmotor = $_POST['nmmotor'];
            $wmotor = $_POST['wmotor'];
            $harga = $_POST['harga'];
    // Koneksi ke mysql
    $conn = mysqli_connect ("localhost","root","","persediaandb");
    if (mysqli_connect_errno()){
        echo "Koneksi Gagal".mysqli_connect_error();
    }
    $query = mysqli_query($conn,"update motor set nmmotor='$_POST[nmmotor]', wmotor='$_POST[wmotor]', harga='$_POST[harga]' where kdmotor='$_POST[kdmotor]'");
    ?>
    data sudah di update
    <a href = "daftarMotor.php">lihat data</a>
</body>
</html>