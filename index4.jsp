<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
   function method()
   {
	   var x = document.getElementById("x").value;
	   alert(x);
   }
</script>
</head>
<body>
     <select onchange="method()" id="x">
         <option>seciniz</option>
         <option>option 1</option>
         <option>option 2</option>
         <option>option 3</option>
     </select>
</body>
</html>