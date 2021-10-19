
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="datos.AlumnoDAO,vo.AlumnoVO"%>
<jsp:useBean id="e" class="vo.AlumnoVO"></jsp:useBean>
<jsp:setProperty property="*" name="e"/>

<% 
	int id = e.getId();
System.out.println("El valor del id a modificar "+id);

	AlumnoVO parteAlumno = AlumnoDAO.obtenerAlumnoID(id);
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilo.css">
<title>Parte de Buena Conducta</title>
</head>
<body>
	<div class="logo">
	<img src="ies.png">
	<form action="editarParteBuenaConducta.jsp" method="post">
	</div>
	<input type="hidden" name="id" value="<%=parteAlumno.getId()%>">
	<div class="contenedorNombre">
		Sr. De <input type="text" id="nombreAlumno" name="nombreAlumno"  placeholder="Nombre y apellidos" value="<%=parteAlumno.getNombreAlumno()%>"><br>
		C/PI/Avda<input type="text" id="direccionCentro" name="direccionCentro"placeholder="Dirección" value="<%=parteAlumno.getDireccionCentro()%>">      
		
		<br>C.P<input type="text" pattern="[0-9]{5}" placeholder="12345" id="cp" name="cp" value="<%=parteAlumno.getCp()%>">
		
		</div>
		
	<div class="contenedorCentral">
		<br><br><h2>ASUNTO: PARTE DE BUENA CONDUCTA</h2>
		<p>Muy señores nuestros: </p><br>
		<p>En consonancia con lo dispuesto en nuestro Reglamento Orgánico de Funcionamiento referido a las "Normas de Funcionamiento", apartado VII.b, Amonestaciones; el profesor que haya puesto una amonestación a un alumno/a, podrá anular dicha amonestación, quedando ésta invalidada a todos los efectos.</p>
		<br><p>Por lo tanto, nos ponemos en contacto con ustedes para informarles de los motivos que han llevado a tramitar dicho "Parte de buena conducta" a su hijo/a: </p>
		<br><input type="text" id="nombreAlumno" name="nombreAlumno" placeholder="Nombre de alumno/a" value="<%=parteAlumno.getNombreAlumno() %>"> del curso <input type="text" id="curso" name="curso" placeholder="2ª DAW" value="<%=parteAlumno.getCurso()%>">
		<br><h2>MOTIVO:</h2>
		<textarea id="motivos" name="motivos" cols="80" rows="10" value="<%=parteAlumno.getMotivos()%>">
		</textarea>
	</div>
	
	<div class="contenedorFinal">
		<br><br>Se llama a la familia el día <input type="text" name="fechaLlamada" id="fechaLlamada" placeholder="dd/mm/aa" value="<%=parteAlumno.getFecha_llamada()%>"> a las <input type="text" id="hora" name="hora" placeholder="hh:mm" value="<%=parteAlumno.getFecha_registro()%>"> horas.
		<br><br>Persona con la que se contacta:  
		<input type="radio" id="padre" name="personaContacto" value="Padre" >
  		<label for="padre">Padre</label>

  		<input type="radio" id="madre" name="personaContacto" value="Madre" >
  		<label for="madre">Madre</label>

  		<input type="radio" id="tutor" name="personaContacto" value="Tutor" >
  		<label for="tutor">Tutor</label>

		<br><br><p>Para cualquier aclaración póngase en contacto con el Centro.</p>
		
		<br><br>Navalmoral de la Mata, a <input type="text" name="fechaRegistro" id="fechaRegistro" placeholder="dd/mm/aa">
		
		<br><br><br>Fdo. Raúl Garrido Jiménez
		<br>Jefe de Estudios<br><br>
		<input type="submit" value="Enviar" >
		<a href="ListarParteBuenaConducta.jsp">
			<input type="button"  class="btn btn-primary" value="Volver" >
		</a>
	</div>
	</form>
</body>
</html>