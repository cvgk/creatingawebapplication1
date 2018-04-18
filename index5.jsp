<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dao.*,model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
   a{
      text-decoration: underline;
      color: #0066cc;
      cursor:pointer;
   }
</style>
<script>
     function method1(cb){
    	 var x = cb.id;
    	 var array = document.getElementsByClassName(x);
    	 var serino= document.getElementById("a1").innerHTML;
    	 var glideno= document.getElementById("a2").innerHTML;
    	 var baslangictarihi= document.getElementById("a3").innerHTML;
    	 var bitistarihi= document.getElementById("a4").innerHTML;
    	 var sure= document.getElementById("a5").innerHTML;
    	 var afetturu= document.getElementById("a6").innerHTML;
    	 var il= document.getElementById("a7").innerHTML;
    	 var ilce= document.getElementById("a8").innerHTML;
    	 var koy= document.getElementById("a9").innerHTML;
    	 var mahalle= document.getElementById("a10").innerHTML;
    	 var belde= document.getElementById("a11").innerHTML;
    	 var neden= document.getElementById("a12").innerHTML;
    	 var enlem= document.getElementById("a13").innerHTML;
    	 var boylam= document.getElementById("a14").innerHTML;
    	 var nedenaciklama= document.getElementById("a15").innerHTML;
    	 var etkilendigialanlar= document.getElementById("a16").innerHTML;
    	 var kaynak= document.getElementById("a17").innerHTML;
    	 var onay= document.getElementById("a18").innerHTML;
    	 var array1=[serino,glideno,baslangictarihi,bitistarihi,sure,afetturu,il,ilce,koy,mahalle,belde,neden,
    	          enlem,boylam,nedenaciklama,etkilendigialanlar,kaynak,onay];
    	 var s ="";
    	 for(var i=0;i<array.length;i++)
    	 {
    		 if(i==array.length-1){
    			 s+=array1[i]+"="+array[i].value; 
    		 }else{
    			 s+=array1[i]+"="+array[i].value+"&"; 	 
    		 }
         }
    	 window.location.replace("index8.jsp?"+s);
    	 
     }
     function method2(cd){
    	 var x = cd.id;
    	 var y = x.substring(1,2);
    	 var array = document.getElementsByClassName(y);
    	 var serino= document.getElementById("a1").innerHTML;
    	 var glideno= document.getElementById("a2").innerHTML;
    	 var baslangictarihi= document.getElementById("a3").innerHTML;
    	 var bitistarihi= document.getElementById("a4").innerHTML;
    	 var sure= document.getElementById("a5").innerHTML;
    	 var afetturu= document.getElementById("a6").innerHTML;
    	 var il= document.getElementById("a7").innerHTML;
    	 var ilce= document.getElementById("a8").innerHTML;
    	 var koy= document.getElementById("a9").innerHTML;
    	 var mahalle= document.getElementById("a10").innerHTML;
    	 var belde= document.getElementById("a11").innerHTML;
    	 var neden= document.getElementById("a12").innerHTML;
    	 var enlem= document.getElementById("a13").innerHTML;
    	 var boylam= document.getElementById("a14").innerHTML;
    	 var nedenaciklama= document.getElementById("a15").innerHTML;
    	 var etkilendigialanlar= document.getElementById("a16").innerHTML;
    	 var kaynak= document.getElementById("a17").innerHTML;
    	 var onay= document.getElementById("a18").innerHTML;
    	 var array1=[serino,glideno,baslangictarihi,bitistarihi,sure,afetturu,il,ilce,koy,mahalle,belde,neden,
    	          enlem,boylam,nedenaciklama,etkilendigialanlar,kaynak,onay];
    	 var s ="";
    	 for(var i=0;i<array.length;i++)
    	 {
    		 if(i==array.length-1){
    			 s+=array1[i]+"="+array[i].value; 
    		 }else{
    			 s+=array1[i]+"="+array[i].value+"&"; 	 
    		 }
         }
    	 window.location.replace("index18.jsp?"+s);
     }
</script>
</head>
<body>
    <table border="1">
    <tr>
       <th id="a1">Seri No</th>
       <th id="a2">Glide No</th>
       <th id="a3">Baslangic Tarihi</th>
       <th id="a4">Bitis Tarihi</th>
       <th id="a5">sure</th>
       <th id="a6">afet turu</th>
       <th id="a7">il</th>
       <th id="a8">ilce</th>
       <th id="a9">koy</th>
       <th id="a10">mahalle</th>
       <th id="a11">belde</th>
       <th id="a12">neden</th>
       <th id="a13">enlem</th>
       <th id="a14">boylam</th>
       <th id="a15">neden aciklama</th>
       <th id="a16">etkilendigi alanlar</th>
       <th id="a17">kaynak</th>
       <th id="a18">onay</th>
       <th>Guncelle ve Sil</th>
    </tr>
    
    <%
       UserDAOImpl impl = new UserDAOImpl();
       List<Users> list = impl.listele();
       for(int i=0;i<list.size();i++)
       {
    	   Users users = list.get(i);
    	   %>
    	   
    	      <tr>
    	         <td><% out.println(users.getSn()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getSn());%>"></td>
    	         <td><% out.println(users.getGn()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getGn());%>"></td>
    	         <td><% out.println(users.getBaslangictarihi()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getBaslangictarihi());%>"></td>
    	         <td><% out.println(users.getBitistarihi());%>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getBitistarihi());%>"></td>
    	         <td><% out.println(users.getSure()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getSure());%>"></td>
    	         <td><% out.println(users.getAfetturu()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getAfetturu());%>"></td>
    	         <td><% out.println(users.getIl()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getIl());%>"></td>
    	         <td><% out.println(users.getIlce()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getIlce());%>"></td>
    	         <td><% out.println(users.getKoy()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getKoy());%>"></td>
    	         <td><% out.println(users.getMahalle()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getMahalle());%>"></td>
    	         <td><% out.println(users.getBelde()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getBelde());%>"></td>
    	         <td><% out.println(users.getNeden()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getNeden());%>"></td>
    	         <td><% out.println(users.getEnlem()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getEnlem());%>"></td>
    	         <td><% out.println(users.getBoylam()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getBoylam());%>"></td>
    	         <td><% out.println(users.getNedenaciklama()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getNedenaciklama());%>"></td>
    	         <td><% out.println(users.getEtkilendigialanlar()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getEtkilendigialanlar());%>"></td>
    	         <td><% out.println(users.getKaynak()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getKaynak());%>"></td>
    	         <td><% out.println(users.getOnay()); %>
    	         <input type="hidden" class="<%out.println(i);%>" value="<%out.println(users.getOnay());%>"></td>
    	         <td><a onclick="method1(this)" id="<%out.println(i);%>">Guncelle</a><br><div align="center">
    	         <a onclick="method2(this)" id="<%out.println("m"+i);%>">sil</a></div></td>
    	      </tr>
    	   
    	   <% 
       }
    %>
    
    </table>
    <a href="index.jsp">Ana sayfaya donmek icin tiklayiniz.</a>
</body>
</html>