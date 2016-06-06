<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="sess.jsp" %> --%>
<% Object logname= session.getAttribute("username");
if(logname==null){
	response.sendRedirect("/index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Starter Template for Bootstrap</title>
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
body {
	padding-top: 50px;
}

.starter-template {
	padding: 40px 15px;
	text-align: center;
}
td{
text-align:left;
}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li ><a href="/home.jsp">图书馆主页</a></li>
					<li><a href="/cardhome.jsp">图书卡管理</a></li>
					<li><a href="/bookhome.jsp">书籍管理</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
	<div class="starter-template">