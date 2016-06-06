<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.it.Dao.BookDAO"%>
<%@ page import="com.it.entity.Book"%>
<%@ include file="/sess.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	Book bk = new Book();
	/* String str= request.getParameter("id");
	int id=new Integer(str);
	bk.setId(id); */
	bk.setId(new Integer(request.getParameter("id")));
	bk.setCode(request.getParameter("code"));
	bk.setTitle(request.getParameter("title"));
	bk.setAuthor(request.getParameter("author"));
	bk.setPublishing(request.getParameter("publishing"));
	bk.setTotal(new Integer(request.getParameter("total")));
	bk.setCount(bk.getTotal());

	System.out.println(bk);
	BookDAO bd = new BookDAO();
	System.out.println(bd.upBK(bk));
	if (bd.UPBK(bk)) {
		response.sendRedirect("/bookhome.jsp");
	} else {
		response.sendError(302, "您没有权限修改");
	}
%>