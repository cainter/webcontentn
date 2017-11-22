<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0053)http://115.28.87.22:8888/base/ProductEdit.html?id=979 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>材料 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>

<link rel="stylesheet" type="text/css" href="css/base.css">
<script src="js/popup_ext.js"></script>
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
	function selectUnit(){
		var url="../base/UnitListForSelect.html";
		ShowIframe("选择单位",url,310,400,"selectUnitCallBack()");
	}
	function selectUnitCallBack(){
		if(popRetVal!=null){
			document.getElementById("product.unit").value=popRetVal[1];
		}
	}
	function showMe(){
		if(checkNavigator()[0]!="msie"){
			document.getElementById("attach_file").className="";
		}
		showFormErrorMsg();
		document.getElementById("product.productName").focus();
	}
</script>
</head>
<body onload="showMe();" class="sheet modal-dialog" style=" padding-top:15px;">
<div class="sheet-main" id="bodyDiv" style="width:860px;">
	<form name="frm" method="post" enctype="multipart/form-data">
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
<h3>编辑材料</h3>
<table width="96%" border="0" cellpadding="0" cellspacing="0" align="center">
	<tbody><tr id="errorMsgTr" style="display:none">
	  <td colspan="2">
	  	<div class="msg-error" id="errorMsgDiv">
      	
      	</div>
	  </td>
	</tr>
</tbody></table> 
				<table border="0" cellspacing="1" cellpadding="1" align="center" class="table-a2">
					<tbody><tr>
				      	<th><span class="MustInput">*</span>编号/条码：</th>
				      	
				      	<td>
							
				      		
							<input type="text" maxlength="15" onkeyup="goNextInput(&#39;product.productName&#39;);" id="product.productCode" name="product.productCode" value="C72-0001" class="TextBox">
					          <script language="javascript">
					          	setFormErrorMsg('',1,'product.productCode');
					          </script>
				     	</td>
				     	
				      	<th><span class="MustInput">*</span>品名规格：</th>
				     	
				     	<td style="width:20%">
				     		<input type="text" class="TextBox" maxlength="100" onkeyup="goNextInput(&#39;product.unit&#39;);" id="product.productName" name="product.productName" value="刀刮布">
					          <script language="javascript">
					          	setFormErrorMsg('',2,'product.productName');
					          </script>
				     	</td>
				     	
				    	<th><span class="MustInput">*</span>计量单位：</th>
				    	
				    	<td>
							<input type="text" class="TextBox" maxlength="10" onkeyup="goNextInput(&#39;product.minLimit&#39;);" id="product.unit" name="product.unit" value="平方米">
							<img src="../images/icon_add.gif" style="cursor:pointer;" onclick="selectUnit();">
					          <script language="javascript">
					          	setFormErrorMsg('',5,'product.unit');
					          </script>
				    	</td>
				    	
					</tr>
					<tr>
				    	<th><span class="MustInput">*</span>类别：</th>
				    	
				    	<td>
				    		<select id="product.productTypeId" name="product.productTypeId" style="width:150px">
								<option value="0">==请选择==</option>
				  				
<option value="72" selected="">01喷绘材料</option>
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
					          	setFormErrorMsg('',9);
					          </script>
				    	</td>
				    	
				    	<th><span class="MustInput">*</span>最低库存：</th>
				    	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="15" onkeyup="goNextInput(&#39;product.maxLimit&#39;);" id="product.minLimit" name="product.minLimit" value="0.00">
							
				     	</td>
				     	
				    	<th><span class="MustInput">*</span>最高库存：</th>
				    	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="15" onkeyup="goNextInput(&#39;product.mark&#39;);" id="product.maxLimit" name="product.maxLimit" value="0.00">
							
				     	</td>
				     	
					</tr>
					
					<tr>
						<th>图片：</th>			    	
				    	<td colspan="3">
				    		<input type="file" class="" style="width:400px" name="attach_file" id="attach_file">
							
							
						          <script language="javascript">
						          	setFormErrorMsg('',15);
						          </script>
					      	
				    	</td>
						<th>&nbsp;</th>
				    	<td>&nbsp;</td>
				    </tr>
					
					<tr>
				    	<th>备注：</th> 
				    	
				    	<td colspan="5">
				    		<textarea style="width:660px;height:80px" id="product.mark" name="product.mark"></textarea>
					          <script language="javascript">
					          	setFormErrorMsg('',16,'product.mark');
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

</body></html>