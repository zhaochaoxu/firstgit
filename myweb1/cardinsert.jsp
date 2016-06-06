<%@ page import="com.it.Dao.CardDAO"%>
<%@ page import="com.it.entity.Card"%>
<%@ include file="/sess.jsp" %>

<%
	CardDAO dao = new CardDAO();
	Card cd = new Card();
	request.setCharacterEncoding("utf-8");
	cd.setCode(request.getParameter("code"));
	cd.setName(request.getParameter("name"));
	cd.setTel(request.getParameter("tel"));
	dao.add(cd);
	response.sendRedirect("/cardhome.jsp");
%>