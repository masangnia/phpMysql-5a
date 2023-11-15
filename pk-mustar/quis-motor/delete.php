<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Motor</title>
</head>

<body>
    <?php
    // Koneksi ke mysql
    $conn = mysqli_connect("localhost", "root", "", "persediaandb");

    if (mysqli_connect_errno()) {
        echo "Koneksi Gagal" . mysqli_connect_errno();
    }

    $kdmotor = '$_GET[kdmotor]';

    $query = mysqli_query($conn, "delete from motor where kdmotor='$kdmotor'") or die(mysqli_error($conn));
    ?>

    data sudah di hapus
    <a href="daftarMotor.php">lihat data</a>
</body>

</html>