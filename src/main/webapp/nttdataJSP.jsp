<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.nttdata.grcarlos.tomcat.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Prueba</title>
</head>
<body>
	<!-- Este es un fichero para probar las distintas cosas que podemos hacer en JSP. -->
	
	<h1>JSP Prueba</h1>
	<div>
		<!-- Prueba ejecutar código JAVA. -->
		<%
		
		for (int i = 0; i < 32; ++i) {
			out.println("i = " + i + "<br>");
		}
		
		%>
		
		<!-- Prueba ejecutar método de una clase. -->
		<p><%= NTTDataJSP.helloNTTData("Carlos") %></p>
		
		<!-- Prueba obtener variables GET -->
		<div>
			<!-- *NO* se recomienda. -->
			<p>test = <%= request.getParameter("test") %></p>
			<!-- *SÍ* se recomienda. -->
			<p>test = ${param.test}</p>
			<!-- Fuente: https://stackoverflow.com/questions/1890438/how-to-get-parameters-from-the-url-with-jsp -->
		</div>
	</div>
</body>
</html>