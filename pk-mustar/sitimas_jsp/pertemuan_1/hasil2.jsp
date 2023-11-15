<!-- 
	Nama 	: Kisah Tegar Putra Abdi
	NPM	 	: 2021804041
	Jurusan : SI 5A PAGI
 -->

<!DOCTYPE html>
<html>
	<head>
		<title>Hasil</title>
	</head>
	<body>
		<%
			String sjumlah = request.getParameter("txtjumlah");
			String sharga = request.getParameter("txtharga");

			int ijumlah, iharga, ibayar;

			ijumlah = Integer.parseInt(sjumlah);
			iharga = Integer.parseInt(sharga);
			ibayar = ijumlah * iharga;

			out.println("Jumlah Barang = " + ijumlah + "<br>");
			out.println("Harga Barang = " + iharga + "<br>");
			out.println("Total Bayar = " + ibayar);
		%>
	</body>
</html>