<%@page import="datos.AlumnoDAO"%>
<jsp:useBean id="e" class="vo.AlumnoVO"></jsp:useBean>
<jsp:setProperty property="*" name="e"/>

<%


response.sendRedirect("rellenarParteBuenaConducta.html");
%>