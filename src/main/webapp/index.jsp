<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.nttdata.grcarlos.tomcat.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Iniciar sesión</title>

<!-- Estilos CSS -->
<link rel="stylesheet" type="text/css" href="css/theme.css">

</head>
<body>
	<div class="box">
		<%
		// Inicializar datos.
		NTTDataJSP.initializeUserAccounts();

		// Obtener variables de la petición.
		String txtUsername = request.getParameter("txtUsername");
		String txtPassword = request.getParameter("txtPassword");
		int passwordHashcode = txtPassword != null ? txtPassword.hashCode() : 0;

		// Comprobar credenciales.
		if (NTTDataJSP.checkCredentials(txtUsername, passwordHashcode)) {
		%>
		<h1>Inicio de sesión correcto</h1>

		<p>¡Saludos ${param.txtUsername}!</p>
		<p>
			Su hash de contraseña es
			<%=NTTDataJSP.getUserAccounts().get(txtUsername)%></p>
		<p>
			<span class="hidden">Su contraseña es "${param.txtPassword}" >:)</span>
		</p>
		<%
		} else {
		%>
		<h1>Iniciar sesión</h1>
		<form method="POST">
			<!-- Javascript -->
			<script src="js/main.js" defer></script>

			<label for="txtUsername">Usuario</label>
			<input id="txtUsername" name="txtUsername" type="text">
			<label for="txtPassword">Contraseña</label>
			<input id="txtPassword" name="txtPassword" type="password"><br>

			<button id="btn" type="submit">Entrar</button>

			<%
			// Si ya se ha intentado iniciado sesión, indicar que las credenciales son incorrectas.
			if (txtUsername != null || txtPassword != null) {
			%>
			<div id="message">Credenciales no válidas.</div>
			<%
			} else {
			%>
			<div id="message"></div>
			<%
			}
			%>
		</form>
		<%
		}
		%>
	</div>
</body>
</html>