<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.it.Dao.CardDAO"%>
<%@ page import="com.it.entity.Card"%>
<%@ include file="/sess.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	Card cd = new Card();
	/* String str= request.getParameter("id");
	int id=new Integer(str);
	cd.setId(id); */
	cd.setId(new Integer(request.getParameter("id")));
	cd.setCode(request.getParameter("code"));
	cd.setName(request.getParameter("name"));
	cd.setTel(request.getParameter("tel"));

	CardDAO dao = new CardDAO();

	if (dao.update(cd)) {
		response.sendRedirect("/cardhome.jsp");
	} else {
		response.sendError(302, "没有权限修改！");
	}
%>