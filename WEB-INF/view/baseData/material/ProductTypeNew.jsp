<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0060)http://115.28.87.22:8888/base/ProductTypeNew.ihtm?parent_id= -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>材料类别 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>

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
		document.getElementById("productType.typeName").focus();
	}
</script>
</head>
<body oncontextmenu="return false" onload="showMe();" class="sheet modal-dialog" style=" padding-top:15px;">
<div class="sheet-main" id="bodyDiv" style="width:290px;">
	<form name="frm" method="post">
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
<h3>新增材料类别</h3>
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
				      	<th>编号：</th>
				      	
				      	<td>
							
				      		
				      			
								
				      		
							<input type="text" maxlength="15" onkeyup="goNextInput(&#39;productType.typeName&#39;);" id="productType.typeCode" name="productType.typeCode" value="" disabled="" class="TextBox readonly">
					          <script language="javascript">
					          	setFormErrorMsg('',1,'productType.typeCode');
					          </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th><span class="MustInput">*</span>名称：</th>
				      	
				      	<td>
				      		<input type="text" maxlength="15" class="TextBox" onkeyup="goNextInput(&#39;productType.parentId&#39;);" id="productType.typeName" name="productType.typeName" value="">
					          <script language="javascript">
					          	setFormErrorMsg('',2,'productType.typeName');
					          </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>上级：</th>
				      	
				      	<td>
				      		<select id="productType.parentId" name="productType.parentId" style="width:180px">
								<option value="0">==请选择==</option>
				  				
<option value="72">01喷绘材料</option>
<option value="73">02写真材料</option>
<option value="74">03辅助材料</option>
<option value="93">06展示器材</option>
<option value="94">07光电产品</option>
<option value="42">板材类</option>
<option value="83">玻璃镜子</option>
<option value="69">标牌配件</option>
<option value="88">扁铁圆钢</option>
<option value="89">不锈钢方管</option>
<option value="90">不锈钢矩管</option>
<option value="91">不锈钢圆管</option>
<option value="64">成品标牌</option>
<option value="82">磁性板</option>
<option value="84">镀锌方管</option>
<option value="85">镀锌矩管</option>
<option value="86">镀锌圆管</option>
<option value="45">低值易耗品</option>
<option value="80">钢板材类</option>
<option value="92">钢材辅料类</option>
<option value="70">管材类</option>
<option value="79">工程用板</option>
<option value="65">光电产品</option>
<option value="87">角钢槽钢</option>
<option value="75">KT板类</option>
<option value="27">铝型材</option>
<option value="81">木板类</option>
<option value="95">每月定时出库材料</option>
<option value="77">PVC雪弗板</option>
<option value="78">有机板</option>
<option value="76">亚克力板</option>
<option value="44">油漆类</option>
				  			</select>
					          <script language="javascript">
					          	setFormErrorMsg('',3);
					          </script>
				     	</td>
				     	
					</tr>
				</tbody></table>
			</div>
	  	</div>
	  </div>
	  <div class="modal-buttom" id="buttonDiv">
		<input type="button" class="buttom-a" value=" 保 存 " onclick="doSave(&#39;0&#39;);">
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