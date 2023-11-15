<!DOCTYPE html>
<html>
	<head>
		<title>Hasil Radio 2</title>
	</head>
	<body>
		<%
			String sgol = request.getParameter("rdgo");
			String sanak = request.getParameter("rdanak");

			int igol, ianak, igapok, itunj, igajber;

			igapok = 0;
			itunj = 0;
			igajber = 0;
			igol = Integer.parseInt(sgol);
			ianak = Integer.parseInt(sanak);

			out.println("Golongan = " + igol + "<br>");
			
			if (igol == 1) {
				igapok = 1000000; 
			}
			if (igol == 2) {
				igapok = 2000000; 
			}
			if (igol == 3) {
				igapok = 3000000;
			}
			if (ianak == 4) {
				ijumanak = 0;
				itunj = 300000; 
			}
			if (ianak == 5) {
				ijumanak = 1; 
				itunj = 600000;
			}
			if (ianak == 6) {
				ijumanak = 2; 
				itunj = 900000;
			}

			igajber = igapok + (itunj * ianak);

			
			
			out.println("Gaji bersih = " + igajber);
		%>
	</body>
</html>