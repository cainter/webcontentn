<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0047)http://115.28.87.22:8888/base/PhoneBookNew.ihtm -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>我的通讯录 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" type="text/css" href="css/base.css">
<script language="javascript">
	function doSave(flag){
		document.getElementById("buttonDiv").style.display="none";
		document.getElementById("waitDiv").style.display="";
		document.getElementById("continue_flag").value=flag;
		frm.submit();
	}
	function doCancel(){
		parent.ClosePop();
	}
	function showMe(){
		showFormErrorMsg();
		document.getElementById("perName").focus();
	}
</script>
</head>
<body oncontextmenu="return false" onload="showMe();" class="sheet modal-dialog" style=" padding-top:15px;">
<div class="sheet-main" id="bodyDiv" style="width:300px;">
	<form name="frm" method="post" action="phone_updatePhoneBook">
	  <div class="sheet-list" style="width:100%">
	    <div class="modal-main search-business">
	    	<div style="width:100%;">
<script language="javascript">
	var formErrorIndex=0;
	var formErrorMsg="";
	var formErrorObjId="";
	function setFormErrorMsg(msg,index,objId){
		if(formErrorIndex==0 || formErrorIndex>index){
			if(msg!=null && msg!=""){
				formErrorIndex=index;
				formErrorMsg=msg;
				formErrorObjId=objId;
			}
		}
	}
	function showFormErrorMsg(){
		if(formErrorIndex!=0){
			document.getElementById("errorMsgTr").style.display="";
			document.getElementById("errorMsgDiv").innerHTML=formErrorMsg;
			if(formErrorObjId!=null && formErrorObjId!=""){
				document.getElementById(formErrorObjId).focus();
			}
		}
	}
	function goNextInput(objId){
		var obj=null;
		if(objId!=null && objId!=''){
			obj=document.getElementById(objId);
		}
		if(window.event.keyCode==13){
			if(obj!=null){
				obj.focus();
			}else if(window.doSave){
				doSave();
			}
		}
	}
</script>
<h3>修改名片</h3>
<table width="96%" border="0" cellpadding="0" cellspacing="0" align="center">
	<tbody><tr id="errorMsgTr" style="display:none">
	  <td colspan="2">
	  	<div class="msg-error" id="errorMsgDiv">
      	
      	</div>
	  </td>
	</tr>
</tbody></table> 
				<table border="0" cellspacing="1" cellpadding="1" align="center" class="table-a">
					<tbody><tr>
				      	<input  name="phoneBook.id" type="text" value="${phoneBook.id }"  hidden/>
				      	<th><span class="MustInput">*</span>姓名：</th>
				      	<td>
				      		<input type="text" class="TextBox" style="width:54px" maxlength="15" onkeyup="goNextInput(&#39;mobile&#39;);" id="perName" name="phoneBook.perName" value="${phoneBook.perName }">
							  <script language="javascript">
								setFormErrorMsg('',1,'perName');
							  </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th><span class="MustInput">*</span>手机：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" style="width:90px" maxlength="25" onkeyup="goNextInput(&#39;companyName&#39;);" id="mobile" name="phoneBook.mobile" value="${phoneBook.mobile }">
							  <script language="javascript">
								setFormErrorMsg('',2,'mobile');
							  </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>公司：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" style="width:150px" maxlength="50" onkeyup="goNextInput(&#39;possie&#39;);" id="companyName" name="phoneBook.companyName" value="">
							<script language="javascript">
							setFormErrorMsg('',3,'companyName');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>职位：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" style="width:90px" maxlength="15" onkeyup="goNextInput(&#39;qq&#39;);" id="possie" name="phoneBook.possie" value="">
							<script language="javascript">
							setFormErrorMsg('',4,'possie');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>QQ：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" style="width:90px" maxlength="15" onkeyup="goNextInput(&#39;email&#39;);" id="qq" name="phoneBook.qq" value="">
							<script language="javascript">
							setFormErrorMsg('',5,'qq');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>Email：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="50" onkeyup="goNextInput(&#39;phone&#39;);" id="email" name="phoneBook.email" value="">
							<script language="javascript">
							setFormErrorMsg('',6,'email');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>电话：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="20" onkeyup="goNextInput(&#39;fax&#39;);" id="phone" name="phoneBook.phone" value="">
							<script language="javascript">
							setFormErrorMsg('',7,'phone');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>传真：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="20" onkeyup="goNextInput(&#39;mark&#39;);" id="fax" name="phoneBook.fax" value="">
							<script language="javascript">
							setFormErrorMsg('',8,'fax');
							</script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>备注：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="50" onkeyup="goNextInput(&#39;&#39;);" id="mark" name="phoneBook.mark" value="">
							<script language="javascript">
							setFormErrorMsg('',9,'mark');
							</script>
				     	</td>
				     	
					</tr>
				</tbody></table>
			</div>
	  	</div>
	  </div>
		<div class="modal-buttom" id="buttonDiv">
				<input type="submit" class="buttom-a" value=" 保 存 " >
				<input type="button" class="buttom-a" value="保存并新增" onclick="doSave(&#39;1&#39;);">
				<input type="button" class="buttom-a" value=" 取 消 " onclick="doCancel();">
				<input type="hidden" name="continue_flag" id="continue_flag" value="0">
		</div>
		<div class="modal-buttom" id="waitDiv" style="display:none">
			<span style="color:#ffffff">请稍候...</span>
		</div>
	</form>
</div>		

<audio controls="controls" style="display: none;"></audio></body><style type="text/css">#yddContainer{display:block;font-family:Microsoft YaHei;position:relative;width:100%;height:100%;top:-4px;left:-4px;font-size:12px;border:1px solid}#yddTop{display:block;height:22px}#yddTopBorderlr{display:block;position:static;height:17px;padding:2px 28px;line-height:17px;font-size:12px;color:#5079bb;font-weight:bold;border-style:none solid;border-width:1px}#yddTopBorderlr .ydd-sp{position:absolute;top:2px;height:0;overflow:hidden}.ydd-icon{left:5px;width:17px;padding:0px 0px 0px 0px;padding-top:17px;background-position:-16px -44px}.ydd-close{right:5px;width:16px;padding-top:16px;background-position:left -44px}#yddKeyTitle{float:left;text-decoration:none}#yddMiddle{display:block;margin-bottom:10px}.ydd-tabs{display:block;margin:5px 0;padding:0 5px;height:18px;border-bottom:1px solid}.ydd-tab{display:block;float:left;height:18px;margin:0 5px -1px 0;padding:0 4px;line-height:18px;border:1px solid;border-bottom:none}.ydd-trans-container{display:block;line-height:160%}.ydd-trans-container a{text-decoration:none;}#yddBottom{position:absolute;bottom:0;left:0;width:100%;height:22px;line-height:22px;overflow:hidden;background-position:left -22px}.ydd-padding010{padding:0 10px}#yddWrapper{color:#252525;z-index:10001;background:url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ab20.png);}#yddContainer{background:#fff;border-color:#4b7598}#yddTopBorderlr{border-color:#f0f8fc}#yddWrapper .ydd-sp{background-image:url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ydd-sprite.png)}#yddWrapper a,#yddWrapper a:hover,#yddWrapper a:visited{color:#50799b}#yddWrapper .ydd-tabs{color:#959595}.ydd-tabs,.ydd-tab{background:#fff;border-color:#d5e7f3}#yddBottom{color:#363636}#yddWrapper{min-width:250px;max-width:400px;}</style></html>