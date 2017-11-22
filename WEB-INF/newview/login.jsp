<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login</title>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="js/jquery-3.0.0.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<link href="css/login.css" rel="stylesheet">
		<script src="js/login.js"></script>
	</head>
	<body>
		<div class="_wrap">
			<div class="_top">
				<a href="login_index.html" target="_self"><img src="img/erp_logo.png" alt="" width="80px" height="40px"></a>
				<div class="_right_item">
					<ul>
						<li><label>您好！欢迎登录标识汇！</label></li>
						<li><a id="data-login" href="javascript:;" style="color:red;">请登录</a>/<a id="data-register" href="javascript:;" style="color:red;">注册</a></li>
						<li><a href="#">帮助中心</a></li>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">联系我们</a></li>
						<li><a href="#">客户</a></li>
					</ul>
				</div>
			</div>
			<div class="_header">
				<!-- login -->
				<form action="login" validate="false" namespace="/">
					<div class="_login_box" id="login_box">
						<p class="_warning"><span class="glyphicon glyphicon-exclamation-sign"></span>&nbsp; 
							   ${message }
						</p>
						<div class="input-group _item">
							<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
							<input name="loginVTO.userName" key="login.form.field.username" type="text" class="form-control" placeholder="请输入账号"/>
						</div>
						<div class="input-group _item">
							<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							<input name="loginVTO.passWord" key="login.form.field.password" type="password" class="form-control" placeholder="请输入密码"/>
						</div>
						<div class="input-group _item" style="margin-right:100px;">
							<span class="input-group-addon"><span class="glyphicon glyphicon-hand-right"></span></span>
							<input type="text" class="form-control" placeholder="请输入验证码">
						</div>
						<img src="img/login_check_Code.png" alt=""style="position:absolute; width:88px; height:38px; top:124px; right:14px;">
						<button class="btn btn-success form-control" type="submit">登录</button>
					</div>
				</form>
				
				<div class="_register_box" id="register_box">
					<div class="input-group _item">
						<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
						<input type="text" class="form-control" placeholder="请输入手机号">
					</div>
					<div class="input-group _item">
						<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
						<input type="text" class="form-control" placeholder="请输入短信验证码">
						<span class="input-group-addon">获取验证码</span>
					</div>
					<div class="input-group _item">
						<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
						<input type="text" class="form-control" placeholder="设置密码">
					</div>
					<div class="input-group _item">
						<span class="input-group-addon"><span class="glyphicon glyphicon-check"></span></span>
						<input type="text" class="form-control" placeholder="确认密码">
					</div>
					<div class="input-group _item">
						<span class="input-group-addon"><span class="glyphicon glyphicon-hand-right"></span></span>
						<input type="text" class="form-control" placeholder="推荐人号码">
					</div>
					<div class="_bottom_item">
						<span>
							<input type="checkbox" > 我已阅读并同意<a href="#">《使用条款及协议》</a>
						</span>
					</div>
					<button class="btn btn-warning form-control" type="button">注册</button>
				</div>
			</div>
			<div class="_content">
				<ul class="_list">
					<li><img src="img/login_material.png" alt=""><a href="">成品材料</a></li>
					<li><img src="img/login_community.png" alt=""><a href="">社区资讯</a></li>
					<li><img src="img/login_official.png" alt=""><a href="">办公OA</a></li>
					<li><img src="img/login_work.png" alt=""><a href="">工作ERP</a></li>
					<li><img src="img/login_tiny.png" alt=""><a href="">微单系统</a></li>
					<li><img src="img/login_IOS.png" alt=""><a href="">供销存</a></li>
				</ul>
				<div class="_about" style="border:1px solid white;">
					<div class="_help">
						<ul>
							<li><a href="#">标识汇官网</a></li>
							<li><a href="#">成品材料</a></li>
							<li><a href="#">定制加工</a></li>
							<li><a href="#">需求中心</a></li>
							<li><a href="#">工作中心</a></li>
							<li><a href="#">社区</a></li>
							<li><a href="#">微店系统</a></li>
							<li style="border-right:none;"><a href="#">标识汇ERP</a></li>
						</ul>
						&nbsp;<p>@ 2015标识汇 豫ICP备15032515</p>
						<p>版权所有：标识汇网络技术有限公司</p>
					</div>
					<div class="_two_code1">
						<img src="img/erp_weixin_TDC.png" alt="" style="width:80px; height:80px; margin-left:10px;">
						<label>关注微信公众号</label>
					</div>
					<div class="_two_code2">
						<img src="img/erp_TDC.png" alt="" style="width:80px; height:80px; margin-left:10px;">
						<label>标识汇APP下载</label>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
