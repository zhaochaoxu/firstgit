<%@page import="com.it.Dao.BookDAO"%>
<%@ page import="com.it.entity.Book"%>
<%@ include file="/sess.jsp" %>
<%
	BookDAO bd = new BookDAO();
	Book bk = new Book();

	request.setCharacterEncoding("utf-8");
	bk.setCode(request.getParameter("code"));
	bk.setTitle(request.getParameter("title"));
	bk.setAuthor(request.getParameter("author"));
	bk.setPublishing(request.getParameter("publishing"));
	bk.setTotal(new Integer(request.getParameter("total")));
	bk.setCount(bk.getTotal());
	bd.add(bk);
	response.sendRedirect("/bookhome.jsp");
%>