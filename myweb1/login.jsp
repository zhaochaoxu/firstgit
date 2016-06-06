<%@ page import="com.it.Dao.AdminDAO"%>
<%
	String name = request.getParameter("username");
	String pwd = request.getParameter("userpwd");
	session.setAttribute("username", name);
	AdminDAO dao = new AdminDAO();
	if (dao.findone(name, pwd)) {
		response.sendRedirect("/home.jsp");

	} else {

		response.sendRedirect("/index.jsp?err=1001");

	}
%>
