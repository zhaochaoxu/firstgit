<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.it.Dao.CardDAO"%>
<%@ page import="com.it.entity.Card"%>
<%
	CardDAO cd = new CardDAO();
	Card card = cd.findId(new Integer(request.getParameter("id")));
	
	
	request.setAttribute("card", card);
	
	request.getRequestDispatcher("/cardfind.jsp").forward(request, response);
%>