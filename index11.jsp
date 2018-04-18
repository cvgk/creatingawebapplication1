<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dao.*,model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
    function method1(cb)
    {
    	var x = document.getElementsByClassName(cb.id);
    	for(var i=0;i<x.length;i++)
    	{
    		x[i].innerHTML ="";
    	}
    }
    function method2()
    {
    	var array = document.getElementsByTagName("input");
        for(var i=0;i<array.length;i++)
        {
          if(array[i].value=="Temizle")
          continue;
          else if(array[i].value=="Kaydet")
          continue;
          else if(array[i].value=="Dosya Ekle")
           continue;
          else if(array[i].value=="Update")
            continue;
          else
        	  array[i].value="";
        }
        var array1 = document.getElementsByTagName("select");
        for(var j=0;j<array1.length;j++)
        {
        	array1[j].value="";
        }
    }
    var il,afetturu,bt,serino,glideno,bittar,sure,belde,neden,enlem,boylam,
    nedenaciklama,etkilendigialanlar,kaynak,ilce,koy,mahalle;
   function method3()
   {
	    il = document.getElementById("il").value;
	    afetturu = document.getElementById("afetturu").value;
	    bt = document.getElementById("bt").value;
	    serino = document.getElementById("serino").value;
	    glideno = document.getElementById("glideno").value;
	    bittar = document.getElementById("bittar").value;
	    sure = document.getElementById("sure").value;
	    belde = document.getElementById("belde").value;
	    neden = document.getElementById("neden").value;
	    enlem = document.getElementById("enlem").value;
	    boylam = document.getElementById("boylam").value;
	    nedenaciklama = document.getElementById("nedenaciklama").value;
	    etkilendigialanlar = document.getElementById("etkilendigialanlar").value;
	    kaynak = document.getElementById("kaynak").value;
	    
	    window.location.replace("index9.jsp?il="+il+"&afetturu="+afetturu+"&baslangictarihi="+bt+"&serino="+
	    		serino+"&glideno="+glideno+"&bittar="+bittar+"&sure="+sure+"&belde="+belde+"&neden="+neden+
	    		 "&enlem="+enlem+"&boylam="+boylam+"&nedenaciklama="+nedenaciklama+"&etkilendigialanlar="+
	    		 etkilendigialanlar+"&kaynak="+kaynak);
   }
   function method4()
   {
	    il = document.getElementById("il").value;
	    afetturu = document.getElementById("afetturu").value;
	    bt = document.getElementById("bt").value;
	    serino = document.getElementById("serino").value;
	    glideno = document.getElementById("glideno").value;
	    bittar = document.getElementById("bittar").value;
	    sure = document.getElementById("sure").value;
	    belde = document.getElementById("belde").value;
	    neden = document.getElementById("neden").value;
	    enlem = document.getElementById("enlem").value;
	    boylam = document.getElementById("boylam").value;
	    nedenaciklama = document.getElementById("nedenaciklama").value;
	    etkilendigialanlar = document.getElementById("etkilendigialanlar").value;
	    kaynak = document.getElementById("kaynak").value;
	    ilce = document.getElementById("ilce").value;
	    koy = document.getElementById("koy").value;
	    window.location.replace("index10.jsp?il="+il+"&afetturu="+afetturu+"&baslangictarihi="+bt+"&serino="+
	    		serino+"&glideno="+glideno+"&bittar="+bittar+"&sure="+sure+"&belde="+belde+"&neden="+neden+
	    		 "&enlem="+enlem+"&boylam="+boylam+"&nedenaciklama="+nedenaciklama+"&etkilendigialanlar="+
	    		 etkilendigialanlar+"&kaynak="+kaynak+"&ilce="+ilce);
   }
   function method5()
   {
	    il = document.getElementById("il").value;
	    afetturu = document.getElementById("afetturu").value;
	    bt = document.getElementById("bt").value;
	    serino = document.getElementById("serino").value;
	    glideno = document.getElementById("glideno").value;
	    bittar = document.getElementById("bittar").value;
	    sure = document.getElementById("sure").value;
	    belde = document.getElementById("belde").value;
	    neden = document.getElementById("neden").value;
	    enlem = document.getElementById("enlem").value;
	    boylam = document.getElementById("boylam").value;
	    nedenaciklama = document.getElementById("nedenaciklama").value;
	    etkilendigialanlar = document.getElementById("etkilendigialanlar").value;
	    kaynak = document.getElementById("kaynak").value;
	    ilce = document.getElementById("ilce").value;
	    koy = document.getElementById("koy").value;
	    window.location.replace("index11.jsp?il="+il+"&afetturu="+afetturu+"&baslangictarihi="+bt+"&serino="+
	    		serino+"&glideno="+glideno+"&bittar="+bittar+"&sure="+sure+"&belde="+belde+"&neden="+neden+
	    		 "&enlem="+enlem+"&boylam="+boylam+"&nedenaciklama="+nedenaciklama+"&etkilendigialanlar="+
	    		 etkilendigialanlar+"&kaynak="+kaynak+"&ilce="+ilce+"&koy="+koy);
   }
   function method6()
   {
	    il = document.getElementById("il").value;
	    afetturu = document.getElementById("afetturu").value;
	    bt = document.getElementById("bt").value;
	    serino = document.getElementById("serino").value;
	    glideno = document.getElementById("glideno").value;
	    bittar = document.getElementById("bittar").value;
	    sure = document.getElementById("sure").value;
	    belde = document.getElementById("belde").value;
	    neden = document.getElementById("neden").value;
	    enlem = document.getElementById("enlem").value;
	    boylam = document.getElementById("boylam").value;
	    nedenaciklama = document.getElementById("nedenaciklama").value;
	    etkilendigialanlar = document.getElementById("etkilendigialanlar").value;
	    kaynak = document.getElementById("kaynak").value;
	    ilce = document.getElementById("ilce").value;
	    koy = document.getElementById("koy").value;
	    mahalle = document.getElementById("mahalle").value;
	    window.location.replace("index12.jsp?il="+il+"&afetturu="+afetturu+"&baslangictarihi="+bt+"&serino="+
	    		serino+"&glideno="+glideno+"&bittar="+bittar+"&sure="+sure+"&belde="+belde+"&neden="+neden+
	    		 "&enlem="+enlem+"&boylam="+boylam+"&nedenaciklama="+nedenaciklama+"&etkilendigialanlar="+
	    		 etkilendigialanlar+"&kaynak="+kaynak+"&ilce="+ilce+"&koy="+koy+"&mahalle="+mahalle);
   }
</script>
<style>
    body {
       background: #e6f5ff;
       margin:0px;
    }
    div#y {
       height:60px;
       background: #cce0ff;
       width:100%;
       margin-bottom:20px;
    }
     #x1 { position:absolute; left:0px; top:0px; width:60px; height:60px;
     float:left; background:url("afad.png") no-repeat;}
     #x2 { position:absolute; left:80px; top:0px;}
     #x2 > h2 { font-weight:100;}
     table#firsttable { width:100%;}
      td { padding-right:30px; line-height:2.5em; font-size:16px; font-weight:500;}
      select { width:160px; height:30px;}
      input { width:160px; height:24px; display:block; float:left;}
      .c {
        background:url("takvim.jpg") no-repeat;
        width:10px;
        height:10px;
      }
      .k1 {
         float:right;
      }
      .resim {
        width:10px;
        height:10px;
        background: url("resim.jpg") no-repeat;
      }
      .a1{
        width:750px;
      }
      #btn {
         background:#1aa3ff;
         color:#ffffff;
         border:none;
         padding: 0px 8px;
         font-family: Arial,Helvetica,sans-serif;
         border-radius:3px;
         display:inline;
      }
      #badu {
         background:#66c2ff;
         height:35px;
         padding-top:20px;
      }
      #badu> p {
        display:inline;
        color:#ffffff;
        font-size:16px;
        
      }
      #badu >#p1{
         padding-right:400px;
         position:relative;
         left:32px;
         
      }
      #badu >#p2 {
         padding-right:350px;
      }
      #kk td:nth-child(1)
      {
         width:20%;
         padding-right:100px;
      }
      #kk td:nth-child(2)
      {
         width:65%;
         
      }
      #kk td:nth-child(3)
      {
        width:15%;
        padding-left:100px;
      }
      #kk td a {
        color:#0066cc;
      }
      #kk td a:hover {
        text-decoration:underline;
      }
      #madu {
         height:50px;
         background:#000099;
      }
      form > p
      {
         display:inline;
         width:20px;
         height:10px;
      }
      #son >p{
        display:inline;
      }
      #buttons {
         clear:both;
         float:right;
      }
      
      #buttons  input {
          background:#66ccff;
          color:#ffffff;
          width:70px;
          height:30px;
          border-radius:3px;
          margin-right:10px;
      }
</style>
</head>
<body>
        <%
       String serino = request.getParameter("serino");
       String glideno = request.getParameter("glideno");
       String baslangictarihi = request.getParameter("baslangictarihi");
       String bitistarihi = request.getParameter("bittar");
       String sure = request.getParameter("sure");
       String afetturu = request.getParameter("afetturu");
       String il = request.getParameter("il");
       String ilce = request.getParameter("ilce");
       String koy = request.getParameter("koy");
       String mahalle = request.getParameter("mahalle");
       String belde = request.getParameter("belde");
       String neden = request.getParameter("neden");
       String enlem = request.getParameter("enlem");
       String boylam = request.getParameter("boylam");
       String nedenaciklama = request.getParameter("nedenaciklama");
       String etkilendigialanlar = request.getParameter("etkilendigialanlar");
       String kaynak = request.getParameter("kaynak");
       String onay = request.getParameter("onay");
    %>
    <div id="y">
<div id="x1">
   
</div>
<div id="x2"><h2>Afet Giris</h2></div>
</div>
<form action="ServletUygulama" method="post">
 <table id="firsttable">
     <tr>
        <td>Seri No</td>
        <td><input type="text"  name="sn" id="serino" value="<%out.println(serino);%>" /></td>
        <td>GLIDE No</td>
        <td><input type="text"  name="gn" id="glideno" value="<%out.println(glideno);%>" /></td>
        <td></td>
        <td></td>
     </tr>
     
     <tr>
        <td>Baslangic Tarihi</td>
        <td><input type="text" name="baslangictarihi" id="bt" value="<%out.println(baslangictarihi);%>"><div class="c"></div></td>
        <td>Bitis Tarihi</td>
        <td><input type="text" name="bitistarihi" id="bittar" value="<%out.println(bitistarihi);%>"/><div class="c"></div></td>
        <td>Sure(Gun)</td>
        <td><input type="text" name="sure" id="sure" value="<%out.println(sure);%>"/></td>
     </tr>
     
     <tr>
        <td>Afet Turu</td>
        <td><select name="afetturu" id="afetturu">
        <option ><% out.println(afetturu); %></option>
        <%
           AfetDAO dao = new AfetDAOImpl();
           List<Afet> liste = dao.getList();
           for(int i=0;i<liste.size();i++)
           {
        	   Afet afet = liste.get(i);
        	   out.println("<option >"+afet+"</option>");
           }
        %>
        </select></td>
        <td>Il</td>
        <td><select name="il" onchange="method3()" id="il">
          <option ><% out.println(il); %></option>
          <%
            IlDAO ildao = new IlDAO();
            List<Il> iller = ildao.tumIlleriGoster();
            for(int i=0;i<iller.size();i++)
            {
            	Il ilsecimi = iller.get(i);
            	if(ilsecimi.getIlAdi().equalsIgnoreCase(il))
            	{
            		continue;
            	}else{
            	out.println("<option >"+ilsecimi+"</option>");
            	}
            }
          %>
        </select></td>
        <td>Ilce</td>
        
        <td><select name="ilce" id="ilce" onchange="method4()">
          <option><% out.println(ilce); %></option>
         <%
           IlceDAOImpl ilcedao = new IlceDAOImpl();
           List<Ilce> ilceler = ilcedao.ilceleriBul(il);
           for(int i=0;i<ilceler.size();i++)
           {
        	   Ilce secilenilce = ilceler.get(i);
        	   if(secilenilce.getIlceAdi().equalsIgnoreCase(ilce)){
        		   continue;
        	   }else{
        	   out.println("<option>"+secilenilce+"</option>");
        	   }
           }
         %>
          
        </select></td>
        
     </tr>
     
     <tr>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td class="k1"><div class="resim"></div><a href="index4.jsp">Enlem Boylam Bul</a></td>
     </tr>
     <tr>
        <td>Koy</td>
        <td><select id="koy" name="koy" onchange="method5()">
          <option><% out.println(koy); %></option>
          <%
            KoyDAOImpl koydao = new KoyDAOImpl();
            List<Koy> koyler = koydao.ilceyeGoreKoyleriBul(ilce);
            for(int i=0;i<koyler.size();i++)
            {
            	Koy k = koyler.get(i);
            	if(k.getKoyAdi().equalsIgnoreCase(koy))
            	{
            		continue;
            	}else{
            	out.println("<option>"+k+"</option>");
            	}
            }
          %>
        </select></td>
        <td>Mahalle</td>
        <td><select id="mahalle" name="mahalle" onchange="method6()">
          <option>seciniz</option>
          <%
            MahalleDAOImpl mahalledao = new MahalleDAOImpl();
            List<Mahalle> mahalleler = mahalledao.koyeGoreMahalleyiBul(koy);
            for(int i=0;i<mahalleler.size();i++)
            {
            	Mahalle m = mahalleler.get(i);
            	out.println("<option>"+m+"</option>");
            }
          %>
        </select></td>
        <td>Belde</td>
        <td><input type="text" name="belde" id="belde" value="<%out.println(belde);%>"/></td>
     </tr>
     <tr>
        <td>Neden</td>
        <td><input type="text" name="neden" id="neden" value="<%out.println(neden);%>"/></td>
        <td>Enlem</td>
        <td><input type="text" name="enlem" id="enlem" value="<%out.println(enlem);%>"/></td>
        <td>Boylam</td>
        <td><input type="text" name="boylam" id="boylam" value="<%out.println(boylam);%>"/></td>
     </tr>
     <tr>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>  
        <td class="k1"><div class="resim"></div><a href="index3.jsp">Il Ilce Bul</a></td>
     </tr>
 </table>
 <table id="secondtable">
     <tr>
        <td>Neden Aciklama</td>
        <td><input type="text" class="a1" name="nedenaciklama" id="nedenaciklama" value="<%out.println(nedenaciklama);%>"/></td>
     </tr>
     <tr>
        <td>Etkilendigi Alanlar</td>
        <td><input type="text" class="a1" name="etkilendigialanlar" id="etkilendigialanlar" value="<%out.println(etkilendigialanlar);%>"/></td>
     </tr>
     <tr>
        <td>Kaynak</td>
        <td><input type="text" class="a1" name="kaynak" id="kaynak" value="<%out.println(kaynak);%>"/></td>
     </tr>
     
     <tr>
        <td>
           <input type="submit" id="btn" value="Dosya Ekle" name="dosyaekle">
           <input type="file" id="inpf" name="as">
        </td>
     </tr>
 </table>
 
 <div id="badu">
    <p id="p1">Dosya</p>
    <p id="p2">Dosya Yolu</p>
    <p id="p3">Islemler</p>
 </div>
   <%
     
      ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
      if(list!=null){
         out.println("<table id='kk'><tr>");
    
      for(int i=0;i<list.size();i++)
      {
    	  out.println("<td class="+i+"><img src='databaseden gelecek' width:'15px' height:'15px'></td>");
    	  out.println("<td class="+i+">"+list.get(i)+"</td>");
    	  out.println("<td class="+i+">"+"<a onclick='method1(this)' id="+i+">sil</a>"+"</td>");
    	  
      }
         out.println("</tr></table>");
      }
   %>
   
   <div id="madu"></div>
   <div id="son">
      <table style="width:160%;">
          <tr>
              <td><b>Onay Durumu</b></td>
              <td><input type="radio" name="onay" value="Onay Bekliyor" checked/>Onay Bekliyor</td>
              <td><input type="radio" name="onay" value="Onaylandi"/>Onaylandi</td>
              <td><input type="radio" name="onay" value="Reddedildi"/>Reddedildi</td>
              <td><input type="radio" name="onay" value="Yayinda"/>Yayinda</td>
          </tr>
      </table>  
   </div>
   <div id="buttons">
       
       <input type="submit" value="Kaydet" name="kaydet"/>
       <input type="submit" value="Update" name="update"/>
       <input type="button" value="Temizle" onclick="method2()"/>
   </div>
   </form>
   <a href="index5.jsp">Kayitlari Databaseden Cekerek Listele</a>
</body>
</html>