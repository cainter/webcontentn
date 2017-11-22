<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title></title>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/base.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="css/defualt.css">
		<!--侧边栏-->
		<link href="css/sidebar-menu.css" rel="stylesheet" />

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<!--顶部固定栏-->
		<div class="top-fix-bar">
			<span style="margin-right: 20px;">欢迎来到标识汇！</span>
			<a href="#">消息（0）</a>
			<span class="show-vertical">|</span>
			<a style="margin-right: 10px;" href="#">手机标识汇</a>
			<a href="#">关注微信</a>
			<div class="pull-right">
				<span>张蒙蒙</span>
				<span class="show-vertical">|</span>
				<a href="#">联系客户</a>
				<span class="show-vertical">|</span>
				<a href="#">购物车（0）</a>
			</div>
		</div>
		<div class="top-bar">
			<select name="">
				<option value="">网络科技有限公司</option>
			</select>
			<a href="#"><img src="img/back.gif" />返回首页</a>
			<div class="pull-right">
				<input type="text" name="" id="" value="" placeholder="搜索" />
				<ul class="user-memu">
					<li>
						<a href="#">张蒙蒙</a>
					</li>
					<li>
						<a href="#"><img src="img/messag.gif" />消息</a>
					</li>
					<li>
						<a href="#"><img src="img/help.gif" />帮助</a>
					</li>
					<li>
						<a href="#"><img src="img/exit.gif" />退出</a>
					</li>
				</ul>
			</div>
		</div>

		<!--侧边栏-->
		<div class="side-bar">
			<img class="logo" src="images/erp-1.1.png" />
			<ul class="accordion" id="client-side"></ul>
		</div>
		<div class="main-content">
			<!--导航栏-->
			<div class="nav-bar">
				<ul class="nav-menu">
					<li>
						<a id="client" href="#">客户业务</a>
					</li>
					<li>
						<a id="make" href="#">加工制作</a>
					</li>
					<li>
						<a id="cooperator" href="#">标识汇交易</a>
					</li>
					<li>
						<a id="purchase" href="#">采购管理</a>
					</li>
					<li>
						<a id="stock" href="#">库存管理</a>
					</li>
					<li>
						<a id="accounts" href="#">财务管理</a>
					</li>
					<li>
						<a id="profit" href="#">产值管理</a>
					</li>
					<li>
						<a id="statistics" href="#">统计报表</a>
					</li>
					<li>
						<a id="data" href="#">基础数据</a>
					</li>
					<li>
						<a id="teamwork" href="#">团队管理</a>
					</li>
					<li>
						<a id="system" href="#">系统管理</a>
					</li>
				</ul>
			</div>

			<div class="content">
				<table width="100%" height="500" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="8%" align="center"></td>
							<td width="6%" align="center"></td>
							<td width="7%" align="center">
								<a href="#"><img width="80" src="images/pur2.gif" /></a>
							</td>
							<td width="6%" align="center"><img src="images/bus002.gif" /></td>
							<td width="7%" align="center">
								<a href="#"><img width="80" src="images/pur1.gif" /></a>
							</td>
							<td width="6%" align="center"><img src="images/bus001.gif" /></td>
							<td width="7%" align="center">
								<a href="#"><img width="80" src="images/stock3.gif" /></a>
							</td>
							<td width="6%" align="center"><img src="images/bus001.gif" /></td>
							<td width="7%" align="center">
								<a href="#"><img width="80" src="images/stock1.gif" /></a>
							</td>
							<td width="6%" align="center"></td>
							<td width="7%" align="center"></td>
							<td width="6%" align="center"></td>
							<td width="8%" align="center"></td>
						</tr>
						<tr>
							<td colspan="8">&nbsp;</td>
							<td align="center"><img height="30" src="images/bus004.gif" /></td>
							<td colspan="4">&nbsp;</td>
						</tr>
						<tr>
							<td align="center">
								<a href="#"><img width="80" src="images/pur2.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/pur2.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/pur1.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/stock3.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/stock1.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/stock1.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/stock1.gif" /></a>
							</td>
						</tr>
						<tr>
							<td colspan="4">&nbsp;</td>
							<td align="center"><img height="30" src="images/bus004.gif" /></td>
							<td colspan="3">&nbsp;</td>
							<td align="center"><img height="30" src="images/bus003.gif" /></td>
							<td colspan="4">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="4">&nbsp;</td>
							<td align="center">
								<a href="#"><img width="80" src="images/pur2.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/pur2.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/pur1.gif" /></a>
							</td>
							<td align="center"><img src="images/bus001.gif" /></td>
							<td align="center">
								<a href="#"><img width="80" src="images/stock3.gif" /></a>
							</td>
							<td colspan="2">&nbsp;</td>
						</tr>
					</tbody>
				</table>
				<!--设置负边距使居中，绝对值=0.5容器宽度-0.5侧边栏宽度-->
				<!--<ul class="list" style="margin-left: -266px;">-->
				<ul class="list">
					<li>
						<img src="img/list.gif" />
						<a href="#">费用单</a>
					</li>
					<li>
						<img src="img/list.gif" />
						<a href="#">其他收入单</a>
					</li>
					<li>
						<img src="img/list.gif" />
						<a href="#">调账单</a>
					</li>
					<li>
						<img src="img/list.gif" />
						<a href="#">转账取款单</a>
					</li>
					<li>
						<img src="img/list.gif" />
						<a href="#">资金借入单</a>
					</li>
					<li>
						<img src="img/list.gif" />
						<a href="#">资金借出单</a>
					</li>
				</ul>
			</div>
		</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-3.0.0.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="js/sidebar-mune.js"></script>
		<script src="layer/layer.js"></script>

		<script src="js/popup.js"></script>

	</body>

</html>