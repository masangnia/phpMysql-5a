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
			String skelas = request.getParameter("cbtiket");
			String sa = request.getParameter("cba");

			if (sjumlah == "") {
				sjumlah = "0";
			}

			int ijumlah, iharga, ikelas, ibayar, ia, iba;

			iharga = 0;
			iba = 0;
			ijumlah = Integer.parseInt(sjumlah);
			ikelas = Integer.parseInt(skelas);
			ia = Integer.parseInt(sa);

			if (ijumlah > 0) {
				if (ikelas == 0) {
					out.println("Kelas = VIP<br>");
					iharga = 100000;
				}
				if (ikelas == 1) {
					out.println("Kelas = VVIP<br>");
					iharga = 200000;
				}
				if (ikelas == 2) {
					out.println("Kelas = Eksekutif<br>");
					iharga = 300000;
				}
				if (ia == 3) {
					iba = 50000;
				}
				if (ia == 4) {
					iba = 0;
				}

				ibayar = ijumlah * iharga + iba;

				out.println("Jumlah       = " + ijumlah + "<br>");
				out.println("Harga Tiket  = " + iharga + "<br>");
				out.println("Bea Asuransi = " + iba + "<br><br>");
				out.println("Total Bayar  = " + ibayar);
			} else {
				out.println("Jumlah harus lebih dari 0");
			}
			
		%>
	</body>
</html>