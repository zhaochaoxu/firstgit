<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="t_header.jsp"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Simple Form</h3>
	</div>
	<div class="panel-body">
		<form id="signupForm" method="post" class="form-horizontal"
			 novalidate="novalidate">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="code">卡号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="code" name="code"
						placeholder="请输入卡号">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="name">姓名</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="name" name="name"
						placeholder="请输入姓名">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="tel">电话</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="tel" name="tel"
						placeholder="请输入电话">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-4">
					<button type="submit" class="btn btn-primary" name="signup"
						value="添加">添加</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script src="/js/jquery.validate.min.js"></script>
<script>
$(function(){
	$("#cardhome").addClass("active");
	$("#signupForm").validate({
		rules : {
			code : "required",
			name : "required",
			tel : "required"

		},
		messages : {
			code : "请输入卡号",
			name : "请输入名字",
			tel : "请输入电话"
		},
		//errorElement : "em",
	});
});
</script>
<%@ include file="t_footer.jsp"%>