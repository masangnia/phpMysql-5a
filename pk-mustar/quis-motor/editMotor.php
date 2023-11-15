<htm<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Motor</title>
</head>

<body>
    <?php

    // Koneksi ke mysql
    $conn = mysqli_connect("localhost","root","","persediaandb");

    if (mysqli_connect_errno()) {
        echo "Koneksi Gagal" . mysqli_connect_errno();
    }

    $query = mysqli_query($conn, "select * from motor where kdmotor='$_GET[kdmotor]'");
    $row = mysqli_fetch_array($query);

    ?>

    <form action="editproses.php" method="post">
        <td>
            <pre>
                kdmotor  : <input type="text" name="kdmotor" value="<?php echo $row['kdmotor']; ?>">
                nmmotor  : <input type="text" name="nmmotor" value="<?php echo $row['nmmotor']; ?>">
                wmotor   : <input type="text" name="wmotor"   value="<?php echo $row['wmotor']; ?>">
                harga    : <input type="text" name="harga"    value="<?php echo $row['harga']; ?>">
                <input type="submit" value="Update">
            </pre>
        </td>
    </form>
</body>

</html>