<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>单位类别 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>

<link rel="stylesheet" type="text/css" href="css/base.css">
<script src="js/popup_ext.js"></script>
<script language="javascript">
	function doNew(){
		var url="customerType_toCustomTypeNew";
		ShowIframeNoScroll("单位类别",url,320,260,"refreshWin()");
	}
	function refreshWin(){
		window.location.reload(true);
	}
	function doEdit(id){
		var url="customerType_toCustomTypeNew";
		ShowIframeNoScroll("单位类别",url,320,260,"refreshWin()");
	}
	function doDelete(id){
		ShowConfirm('确认框','确定删除吗？',340,80,"doDelAct("+id+")");
	}
	function doDelAct(id){
		if(popRetVal!=null){
			window.location="base/EstablishmentTypeDelete.html?id="+id;
		}
	}
	function doCancel(){
		window.close();
	}
</script>
</head>
<body oncontextmenu="return false" class="sheet" style="text-align:center;">
<div class="sheet-main" style="width:360px;text-align:left;margin:auto;">
  <div class="sheet-top">
    <div class="content">
      <h2>单位类别</h2>
      <p>根据客户性质设置，方便分类查询</p>
    </div>
  </div>
  <div class="sheet-list">
    <div class="search-business">
	    <div class="add_content"> 	
	    	 <div align="right"><input class="buttom search-add" value=" 新 增" onclick="doNew();" type="button"></div>
	     </div>
		 
<table width="98%" cellspacing="0" cellpadding="0" border="0">
	<tbody><tr id="errorMsgTr" style="display:none">
	  <td>
	  	<div class="msg-error" id="errorMsgTd">
	  	
	  	</div>
	  </td>
	</tr>
</tbody></table>
	     <div class="table-list">
	        <table width="100%">
	          <tbody><tr>
	          		<th width="100">序号</th>
					<th width="150">名称</th>
					<th>操作</th>
				</tr>
				
				<tr>
					<td>1</td>
					<td>广告公司</td>
					<td>
						<a href="javascript:doEdit('1');">编辑</a>
						<a href="javascript:doDelete('1');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>直接客户</td>
					<td>
						<a href="javascript:doEdit('2');">编辑</a>
						<a href="javascript:doDelete('2');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>3</td>
					<td>标识汇</td>
					<td>
						<a href="javascript:doEdit('3');">编辑</a>
						<a href="javascript:doDelete('3');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>4</td>
					<td>零售客户</td>
					<td>
						<a href="javascript:doEdit('4');">编辑</a>
						<a href="javascript:doDelete('4');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>5</td>
					<td>装饰公司</td>
					<td>
						<a href="javascript:doEdit('5');">编辑</a>
						<a href="javascript:doDelete('5');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>6</td>
					<td>市场同行</td>
					<td>
						<a href="javascript:doEdit('6');">编辑</a>
						<a href="javascript:doDelete('6');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>7</td>
					<td>签约客户</td>
					<td>
						<a href="javascript:doEdit('7');">编辑</a>
						<a href="javascript:doDelete('7');">删除</a>
					</td>
				</tr>
				
				<tr>
					<td>8</td>
					<td>私企</td>
					<td>
						<a href="javascript:doEdit('8');">编辑</a>
						<a href="javascript:doDelete('8');">删除</a>
					</td>
				</tr>
				
			</tbody></table>
		   </div>  
	   </div>  
  </div>
  <div class="blank12">
</div>

</div></body></html>