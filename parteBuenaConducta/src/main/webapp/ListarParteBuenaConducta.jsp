
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="comun.jsp" />
<title>Listar Parte Conducta</title>
<!-- 
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>-->
</head>
<body>
	<%@ page import="datos.AlumnoDAO,vo.AlumnoVO"%>
	<%@ page import="java.util.List"%>

	<h1>Lista de partes de buena conducta</h1>

	<%
	List<AlumnoVO> lista = AlumnoDAO.obtenerParte();
	request.setAttribute("lista", lista);
	%>

	<table>
		<tr>
			<th>ID</th>
			<th>Nombre y Apellidos</th>
			<th>Curso</th>
			<th>Persona de Contacto</th>
			<th>Direccion</th>
			<th>C.P</th>
			<th>Motivos</th>
			<th>Fecha Llamada</th>
			<th>Hora</th>
			<th>Fecha Registro</th>
			<th>Editar</th>
			<th>Eliminar</th>
		</tr>
		<c:forEach items="${lista}" var="parte">
			<tr>
				<td>${parte.getId()}</td>
				<td>${parte.getNombreAlumno()}</td>
				<td>${parte.getCurso()}</td>
				<td>${parte.getPersonaContacto()}</td>
				<td>${parte.getDireccionCentro()}</td>
				<td>${parte.getCp()}</td>
				<td>${parte.getMotivos()}</td>
				<td>${parte.getFecha_llamada()}</td>
				<td>${parte.getHora()}</td>
				<td>${parte.getFecha_registro()}</td>
				<td><a class="btn btn-info btn-sm rounded-0" href="formularioEditarParte.jsp?id=${parte.getId()}">Editar</a></td>
				<td><a class="btn btn-danger" href="EliminarParte.jsp?id=${parte.getId()}">Eliminar</a></td>
			</tr>
		</c:forEach>

	</table><br>
	<a class="btn btn-primary" href="NuevoParteBuenaConducta.jsp">Nuevo Parte</a>
</body>
</html>