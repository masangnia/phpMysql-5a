<!-- 
	Nama 	: Kisah Tegar Putra Abdi
	NPM	 	: 2021804041
	Jurusan : SI 5A PAGI
 -->

<!DOCTYPE html>
<html>
  <head>
    <title>Hasil dengan If else 1</title>
  </head>
  <body>
    <% String snilai = request.getParameter("txtnilai"); int inilai; // Convert
    to integer inilai = Integer.parseInt(snilai); // Validate if (inilai > 100
    || inilai < 0) { // Jika nilai bukan 0-100... out.println("Salah Input!"); }
    else if(inilai >= 80) { out.println("Nilai : A"); } else if (inilai >= 70) {
    out.println("Nilai : B"); } else if (inilai >= 60) { out.println("Nilai :
    C"); } else if (inilai >= 50) { out.println("Nilai : D"); } else {
    out.println("Nilai : E"); } %>
  </body>
</html>
