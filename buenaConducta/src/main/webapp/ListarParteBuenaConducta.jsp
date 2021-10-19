
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="comun.jsp" />
<title>Listar Parte Conducta</title>

<style>
body{
width: 95%;
flex-direction:column;
	display:flex;
	align-items: center;
	padding:2em;
}
body a{
	margin-top:1em;
	display: flex;
	align-self: flex-start;
	margin-left:60px;
}
table {
	font-family: arial, sans-serif;
	
	
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
td:nth-of-type(11){
	text-align: center;
}

tr:nth-child(even) {
	background-color: #dddddd;
}

</style>
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
				
				<td><a  class="btn btn-info btn-sm rounded-0" href="formularioEditarParte.jsp?id=${parte.getId()}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a></td>
				<td ><a class="btn btn-danger" href="EliminarParte.jsp?id=${parte.getId()}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
</svg></a></td>
			</tr>
		</c:forEach>

	</table><br>
	<a class="btn btn-primary" href="NuevoParteBuenaConducta.jsp">Nuevo Parte</a>
</body>
</html>