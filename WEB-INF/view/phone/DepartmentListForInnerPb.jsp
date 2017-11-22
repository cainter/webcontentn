<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<title>部门 | 管理易-广告加工制作管理软件 企业版 9.28 | 易凯软件</title>
	<script src="js/minierp.js"></script>
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link href="css/dtree.css" rel="stylesheet" type="text/css">
	<script src="js/dtree.js"></script>
	<script src="js/jquery.js"></script>
	<script language="javascript">
		function doTreeNodeClick(id) {
			document.getElementById("currentId").value = id;
			parent.document.getElementById("mainFrame").src = "departStaff_toStafferList?department_id=" + id;
		}
		function doInit() {
			var defaultId = "";
			if (defaultId != "") {
				doTreeNodeClick(defaultId);
				d.openTo(defaultId, true, false);
			}
		}
		function getFromUrl() {
			var defaultId = "";
			var fromUrl = "/base/DepartmentListForInnerPb.ihtm?default_id=" + defaultId;
			return encodeURIComponent(fromUrl);
		}
	</script>
</head>

<body oncontextmenu="return false" onload="doInit();" style="text-align:center" scroll="no">
	<div class="nav" id="scrollDiv" style="text-align:left;overflow-x:hidden;overflow-y:auto;width:160px;height:508px">
		<h3 class="title">部门</h3>
		<div class="nav-link nav-mail" style="width:100%">
			<input type="hidden" name="currentId" id="currentId" value="">
			<div class="blank12"></div>
			<script language="javascript">
				var isOpen = false;
				var d = new dTree('d', 'images');
				d.config.useCookies = false;
				d.config.useLines = true;
				d.config.useIcons = true;
				d.add(0, -1, 'Root');
				
				<s:iterator value="departments" status="indexs">
					var id=${id};
					var parentId=${parentId};
					var name=${departmentName};
					d.add("id", "parentId", "name", "javascript:doTreeNodeClick(id);", '', '', '', false);
				</s:iterator>
				
				document.write(d);
				d.closeAll();
			</script>
			<div class="dtree">
			</div>
		</div>
	</div>
	<audio controls="controls" style="display: none;"></audio>
</body>
<style type="text/css">
	#yddContainer {
		display: block;
		font-family: Microsoft YaHei;
		position: relative;
		width: 100%;
		height: 100%;
		top: -4px;
		left: -4px;
		font-size: 12px;
		border: 1px solid
	}

	#yddTop {
		display: block;
		height: 22px
	}

	#yddTopBorderlr {
		display: block;
		position: static;
		height: 17px;
		padding: 2px 28px;
		line-height: 17px;
		font-size: 12px;
		color: #5079bb;
		font-weight: bold;
		border-style: none solid;
		border-width: 1px
	}

	#yddTopBorderlr .ydd-sp {
		position: absolute;
		top: 2px;
		height: 0;
		overflow: hidden
	}

	.ydd-icon {
		left: 5px;
		width: 17px;
		padding: 0px 0px 0px 0px;
		padding-top: 17px;
		background-position: -16px -44px
	}

	.ydd-close {
		right: 5px;
		width: 16px;
		padding-top: 16px;
		background-position: left -44px
	}

	#yddKeyTitle {
		float: left;
		text-decoration: none
	}

	#yddMiddle {
		display: block;
		margin-bottom: 10px
	}

	.ydd-tabs {
		display: block;
		margin: 5px 0;
		padding: 0 5px;
		height: 18px;
		border-bottom: 1px solid
	}

	.ydd-tab {
		display: block;
		float: left;
		height: 18px;
		margin: 0 5px -1px 0;
		padding: 0 4px;
		line-height: 18px;
		border: 1px solid;
		border-bottom: none
	}

	.ydd-trans-container {
		display: block;
		line-height: 160%
	}

	.ydd-trans-container a {
		text-decoration: none;
	}

	#yddBottom {
		position: absolute;
		bottom: 0;
		left: 0;
		width: 100%;
		height: 22px;
		line-height: 22px;
		overflow: hidden;
		background-position: left -22px
	}

	.ydd-padding010 {
		padding: 0 10px
	}

	#yddWrapper {
		color: #252525;
		z-index: 10001;
		background: url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ab20.png);
	}

	#yddContainer {
		background: #fff;
		border-color: #4b7598
	}

	#yddTopBorderlr {
		border-color: #f0f8fc
	}

	#yddWrapper .ydd-sp {
		background-image: url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ydd-sprite.png)
	}

	#yddWrapper a,
	#yddWrapper a:hover,
	#yddWrapper a:visited {
		color: #50799b
	}

	#yddWrapper .ydd-tabs {
		color: #959595
	}

	.ydd-tabs,
	.ydd-tab {
		background: #fff;
		border-color: #d5e7f3
	}

	#yddBottom {
		color: #363636
	}

	#yddWrapper {
		min-width: 250px;
		max-width: 400px;
	}
</style>

</html>