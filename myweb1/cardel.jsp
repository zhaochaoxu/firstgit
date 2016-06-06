<%@ page import="com.it.Dao.CardDAO"%>
<%@ include file="sess.jsp" %>
<%
	CardDAO dao = new CardDAO();
	int i = new Integer(request.getParameter("id"));
	dao.remove(i);
	response.sendRedirect("/cardhome.jsp");
%>