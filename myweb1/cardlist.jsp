<%@ page import="com.it.entity.Card"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="t-header.jsp"%>
<%
	List<Card> cd = (List<Card>) request.getAttribute("list");
%>
<style>
</style>
<a href="cardadd.jsp" type="button" style="float: right"
	class="btn btn-primary">新建图书卡</a>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>图书卡</th>
			<th>卡号</th>
			<th>姓名</th>
			<th>电话</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<%
			for (Card c : cd) {
		%>
		<tr>
			<th scope="row"><%=c.getId()%></th>
			<td><%=c.getCode()%></td>
			<td><%=c.getName()%></td>
			<td><%=c.getTel()%></td>
			<td><button data="<%=c.getId()%>" type="button"
					class="btn btn-danger btn-xs">删除</button>
				<button data="<%=c.getId()%>" type="button" class="btn btn-success btn-xs">编辑</button></td>
		</tr>
		<%
			}
		%>
	</tbody>

</table>
<script>
	$(function() {
		$("ul>li:nth-child(2)").addClass("active");
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么")) {
				var i = $(this).attr("data");
				location.href = ("cardel.jsp?id=" + i);
			}
		});
		$("td>button.btn-success").click(function() {

			var i = $(this).attr("data");
			location.href = ("cardserach.jsp?id=" + i);

		});
	});
</script>
<%@ include file="t-footer.jsp"%>