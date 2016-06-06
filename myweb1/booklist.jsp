<%@ page import="com.it.entity.Book"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="t-header.jsp"%>
<%
	List<Book> book = (List<Book>) request.getAttribute("list");
%>
<a class="btn btn-primary" style="float: right" href="/bookadd.jsp">添加书籍</a>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>图书</th>
			<th>书籍编号</th>
			<th>书名</th>
			<th>作者</th>
			<th>出版社</th>
			<th>总数</th>
			<th>剩余数量</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<%
			for (Book bk : book) {
		%>
		<tr>
			<th scope="row"><%=bk.getId()%></th>
			<td><%=bk.getCode()%></td>
			<td><%=bk.getTitle()%></td>
			<td><%=bk.getAuthor()%></td>
			<td><%=bk.getPublishing()%></td>
			<td><%=bk.getTotal()%></td>
			<td><%=bk.getCount()%></td>
			<td><button data="<%=bk.getId()%>" data1="<%=bk.getCode()%>"
					type="button" class="btn btn-danger btn-xs">删除</button>
				<button data="<%=bk.getId()%>" data1="<%=bk.getCode()%>" type="button" class="btn btn-success btn-xs">编辑</button></td>
		</tr>
		<%
			}
		%>
	
</table>

<script>
	$(function() {
		$("ul>li:nth-child(3)").addClass("active");
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么？")) {
				var i = $(this).attr("data");
				location.href = ("/bookdel.jsp?id=" + i);
			}
		});
		$("td>button.btn-success").click(function() {

			var str= $(this).attr("data1");
			location.href = ("/bookserch.jsp?str=" + str);

		});
	});
</script>
<%@ include file="t-footer.jsp"%>