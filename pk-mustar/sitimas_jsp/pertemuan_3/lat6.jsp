<!-- 
	Nama 	: Kisah Tegar Putra Abdi
	NPM	 	: 2021804041
	Jurusan : SI 5A PAGI
 -->

<!DOCTYPE html>
<html>
	<head>
		<title>Latihan 4</title>
	</head>
	<body>
		<form action="hasilcb.jsp" method="post">
			<pre>
				Jumlah Tiket : <input type="text" name="txtjumlah">
				
				Jenis Tiket  : <select name="cbtiket">
					<option value="0">VIP</option>
					<option value="1">VVIP</option>
					<option value="2">Eksekutif</option>
				</select>

				Asuransi     : <select name="cba">
					<option value="3">Asuransi</option>
					<option value="4">NON-Asuransi</option>
				</select>

				<input type="submit" value="Hitung">
			</pre>
		</form>
	</body>
</html>