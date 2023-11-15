<!DOCTYPE html>
<html>
	<head>
		<title>Hasil dengan If else 2</title>
	</head>
	<body>
		<%
			// Variable String
			String stoefl = request.getParameter("txttoefl");
			String stpa = request.getParameter("txttpa");
			String spsikologi = request.getParameter("txtpsikologi");
			String spengalaman = request.getParameter("txtpengalaman");
			String sumur = request.getParameter("txtumur");

			// Variable Integer
			int itoefl, itpa, ipsikologi, ipengalaman, iumur;

			// Convert to Integer
			itoefl = Integer.parseInt(stoefl);
			itpa = Integer.parseInt(stpa);
			ipsikologi = Integer.parseInt(spsikologi);
			ipengalaman = Integer.parseInt(spengalaman);
			iumur = Integer.parseInt(sumur);

			// Validate
			if(itoefl > 500 && itpa > 400 && ipsikologi > 300 && ipengalaman > 2 && iumur < 40) {
				out.println("Diterima");
			} else {
				out.println("Ditolak");
			}
		%>
	</body>
</html>