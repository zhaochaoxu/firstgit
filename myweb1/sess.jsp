<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Object logname= session.getAttribute("username");
if(logname==null){
	response.sendRedirect("/index.jsp");
	return;
}
%>