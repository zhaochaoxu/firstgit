<%@ page import="com.it.Dao.BookDAO"%>
<%@ include file="/sess.jsp"%>
<%

	BookDAO bk = new BookDAO();
	response.setCharacterEncoding("utf-8");
	bk.deid(new Integer(request.getParameter("id")));
	response.sendRedirect("/bookhome.jsp");
%>