
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="t_header.jsp"%>
<a class="btn btn-primary" style="float: right" href="/bookinsert">添加书籍</a>

<form method="get" class="navbar-form navbar-left" role="search"
	action="/bookhome">
	<div class="form-group">
		<input type="text" name="wd" class="form-control" placeholder="Search">
	</div>
	<button type="submit" class="btn btn-default">搜索</button>
</form>
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
		<c:forEach var="bk" items="${list}">
			<tr>
				<th scope="row">${bk.id}</th>
				<td>${bk.code}</td>
				<td>${bk.title}</td>
				<td>${bk.author}</td>
				<td>${bk.publishing}</td>
				<td>${bk.total}</td>
				<td>${bk.count}</td>
				<td><button data="${bk.id}" data1="${bk.code}"
						type="button" class="btn btn-danger btn-xs">删除</button>
					<button data="${bk.id}" data1="${bk.code}" type="button"
						class="btn btn-success btn-xs">编辑</button></td>
			</tr>
		</c:forEach>
</table>

<script>
	$(function() {
		$("#bookhome").addClass("active");
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么？")) {
				var i = $(this).attr("data");
				location.href = ("/bookdel?id=" + i);
			}
		});
		$("td>button.btn-success").click(function() {

			var id = $(this).attr("data");
			location.href = ("/bookedi?id=" + id);

		});
	});
</script>
<%@ include file="t_footer.jsp"%>