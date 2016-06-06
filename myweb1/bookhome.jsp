<%@ page import="com.it.Dao.BookDAO"%>
<%
	BookDAO bk = new BookDAO();
	request.setAttribute("list", bk.All());
	request.getRequestDispatcher("/booklist.jsp").forward(request, response);
%>