<!DOCTYPE html>
<html>
	<head>
		<title>Daftar Motor</title>
	</head>
	<body>
		<?php  
			// Koneksi ke mysql
			$conn = mysqli_connect("localhost", "root", "", "persediaandb");

			if (mysqli_connect_errno()) {
				echo "Koneksi Gagal".mysqli_connect_errno();
			}

			$query = mysqli_query($conn, "select * from motor");
		?>



		<!-- Body -->
		<center>
			<table width="1350" height="500" border="1" bgcolor="pink">
				<tr>
					<td>
						<center>
							<!-- Title -->
							<table width="600" height="47" border="1" align="center" bgcolor="yellow">
								<tr>
									<td width="400"><center>INPUT DATA MOTOR</center></td>
								</tr>
							</table>

							<!-- Form -->

							<table width="600" border="1" bgcolor="white">
								<tr>
								<td>Kode Motor</td>
								<td>Nama Motor</td>
								<td>Warna Motor</td>
								<td>Harga</td>					
							</tr>
						

							<?php
								while($row=mysqli_fetch_array ($query)) 
								{
									echo "<tr>";
									echo "<td>".$row["kdmotor"]."</td>";
									echo "<td>".$row["nmmotor"]."</td>";
									echo "<td>".$row["wmotor"]."</td>";
									echo "<td>".$row["harga"]."</td>";
									echo "<td><a href =delete.php?kdmotor=".$row["kdmotor"].">Delete</a></td>";
									echo "<td><a href =EditBarang.php?kdmotor=".$row["kdmotor"].">Edit</a></td>";
									echo "<td><a href='motor.php'>Back</a></td>";
									echo "<tr>";
								}
							?>
							</table>
						</center>
					</td>
				</tr>
			</table>
		</center>

		<!-- FOOTER -->
		<center>
			<div class="Frame_Footer">
				<div class="Frame_Inside_Footer" style="background-color: #800000; color: #FFFFFF;">
					<span class="style1" style="color: #FFFFFF">Copyrights by Siti Mas Sangnia</span>
					<br class="style1"/>
					<span class="style1">
						<span class="style1">
							&copy; 2023 All Rights Reserved
						</span>
					</span>
				</div>
			</div>
		</center>
	</body>
</html>