<%@page import="datos.AlumnoDAO"%>
<jsp:useBean id="e" class="vo.AlumnoVO"></jsp:useBean>
<jsp:setProperty property="*" name="e" />

<%
int i = AlumnoDAO.modificar(e);
if (i > 0) {
	response.sendRedirect("ListarParteBuenaConducta.jsp");
} else {
	response.sendRedirect("mensajeErrorGuardado.jsp");
}
%>
