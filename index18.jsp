<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dao.*,model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>silme sayfasi</title>
</head>
<body>
    <%
    String serino = request.getParameter("Seri No");
    String glideno = request.getParameter("Glide No");
    String baslangictarihi = request.getParameter("Baslangic Tarihi");
    String bitistarihi = request.getParameter("Bitis Tarihi");
    String sure = request.getParameter("sure");
    String afetturu = request.getParameter("afet turu");
    String il = request.getParameter("il");
    String ilce = request.getParameter("ilce");
    String koy = request.getParameter("koy");
    String mahalle = request.getParameter("mahalle");
    String belde = request.getParameter("belde");
    String neden = request.getParameter("neden");
    String enlem = request.getParameter("enlem");
    String boylam = request.getParameter("boylam");
    String nedenaciklama = request.getParameter("neden aciklama");
    String etkilendigialanlar = request.getParameter("etkilendigi alanlar");
    String kaynak = request.getParameter("kaynak");
    String onay = request.getParameter("onay");
    Users user = new Users(serino,glideno,baslangictarihi,bitistarihi,sure,afetturu,il,ilce,koy,
    		mahalle,belde,neden,enlem,boylam,nedenaciklama,etkilendigialanlar,kaynak,onay);
    UserDAOImpl userdao = new UserDAOImpl();
    userdao.delete(user);
    %>
    <a href="index5.jsp">database listesine donmek icin tiklayiniz</a>
</body>
</html>