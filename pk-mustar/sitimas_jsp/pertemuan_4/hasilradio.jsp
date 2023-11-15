<!DOCTYPE html>
<html>
  <head>
    <title>Hasil Radio</title>
  </head>
  <body>
    <% 
    String sberat = request.getParameter("txtberat"); 
    String slokasi = request.getParameter("rdlok"); 
    String sa = request.getParameter("rda"); 

    int iberat,iongkir,ilokasi,ibayar,ia,iba; 
    iongkir =0; iba = 0; 
    iberat = Integer.parseInt(sberat); 
    ilokasi = Integer.parseInt(slokasi); 
    ia = Integer.parseInt(sa);

     out.println("Berat Barang = " + iberat + " kg<br />");
    ifh (ilokasi == 1) { out.println("Lokasi = Jawa <br />");
     iongkir = 10000; }
    if (ilokasi == 2) { out.println("Lokasi = Sumatera <br />"); 
    iongkir = 20000; } 
    if (ilokasi == 3) { out.println("Lokasi = Bali <br />"); 
    iongkir = 30000; }
    if (ia == 4) { iba = 5000; } if (ia == 5) { iba = 0; }
     ibayar = iberat * iongkir + iba;

    out.println("Biaya Ongkir/kg = " + iongkir + "<br />"); 
    out.println("Bea Asuransi = " + iba + "<br /><br />"); 
    out.println("total bayar = " + ibayar); 
    
    %>
  </body>
</html>
