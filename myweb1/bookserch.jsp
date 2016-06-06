<%@ page import="com.it.Dao.BookDAO"%>
<%@ page import="com.it.entity.Book"%>
<%
	BookDAO bd = new BookDAO();
	Book bk=bd.findOne(request.getParameter("str"));
	request.setAttribute("book", bk);
	request.getRequestDispatcher("/bookfind.jsp").forward(request, response);
%>