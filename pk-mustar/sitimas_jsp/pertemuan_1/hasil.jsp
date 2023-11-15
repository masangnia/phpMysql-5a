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
    String snama = request.getParameter("txtnama");
    String semail = request.getParameter("txtemail");
    out.println("Nama = " + snama + "<br />");
    out.println("Email = " + semail); 
    %>
  </body>
</html>
