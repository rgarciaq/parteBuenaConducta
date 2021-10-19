<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="datos.AlumnoDAO"%>  
<jsp:useBean id="e" class="vo.AlumnoVO"></jsp:useBean>  
<jsp:setProperty property="*" name="e"/>  
  
<%
    int i=AlumnoDAO.guardar(e);

        if(i>0){  
        	response.sendRedirect("mensajeGuardado.jsp");  
        }else{  
        	response.sendRedirect("mensajeErrorGuardado.jsp");  
        }
    %>  