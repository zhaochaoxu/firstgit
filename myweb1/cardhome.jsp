<%@ page import="com.it.Dao.CardDAO"%>
<%
	CardDAO dao = new CardDAO();
	request.setAttribute("list", dao.findAll());

	request.getRequestDispatcher("/cardlist.jsp").forward(request, response);
%>