<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="t_header.jsp"%>

<a href="/cardadd" style="float: right;" class="btn btn-primary">新建借书卡</a>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>图书卡</th>
			<th>卡号</th>
			<th>姓名</th>
			<th>电话号码</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="cd" items="${list}">
			<tr>
				<th scope="row">${cd.id}</th>
				<td>${cd.code}</td>
				<td>${cd.name}</td>
				<td>${cd.tel}</td>
				<td>
					<button data="${cd.id}" type="button" class="btn btn-danger btn-xs">删除</button>
					<button data="${cd.id}" type="button"
						class="btn btn-success btn-xs">编辑</button>
				</td>
			</tr>
		</c:forEach>


	</tbody>
</table>
<script>
	$(function() {
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么?")) {
				var i = $(this).attr("data");
				location.href = "/cardel?id=" + i;
			}
		});
		$("#cardhome").addClass("active");
	});
</script>


<%@ include file="t_footer.jsp"%>