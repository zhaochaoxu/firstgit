<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="t_header.jsp"%>

<form id="signupForm" method="post" class="form-horizontal" action="/bookhome"
	novalidate="novalidate">
	<div class="form-group">
		<label class="col-sm-4 control-label" for="code">书籍编号：</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="code"
				name="code" placeholder="请输入书籍编号">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-4 control-label" for="title">书籍名字：</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="title" name="title"
				placeholder="请输入书名">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-4 control-label" for="author">书籍作者：</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="author" name="author"
				placeholder="请输入作者" >
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-4 control-label" for="publishing">出版社&nbsp;&nbsp;&nbsp;： </label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="publishing" name="publishing"
				placeholder="请输入出版社" >
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-4 control-label" for="total">书籍数量：</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="total"
				name="total" placeholder="请输入数量" >
		</div>
	</div>

	<!-- <div class="form-group">
		<label class="col-sm-4 control-label" for="confirm_password">剩余数量： </label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id="count"
				name="count" placeholder="书籍剩余数量">
		</div>
	</div> -->
	<div class="form-group">
		<div class="col-sm-9 col-sm-offset-4">
			<button type="submit" class="btn btn-primary" name="signup"
				value="添加">添加</button>
		</div>
	</div>
</form>
<script src="/js/jquery.validate.min.js"></script>
<script>
	$(function() {
		$("#bookhome").addClass("active");
		 $("#signupForm").validate({
			rules:{
				code:"required",
				title:"required",
				author:"required",
				publishing:"required",
				total:"required",
				count:"required"
			},
			message:{
				code:"请输入书籍编号",
				title:"请输入书名",
				author:"请输入作者",
				publishing:"请输入出版社",
				total:"请输入数量",
				count:"请输入剩余数量"
			}
		});
	});
</script>
<%@ include file="t_footer.jsp"%>