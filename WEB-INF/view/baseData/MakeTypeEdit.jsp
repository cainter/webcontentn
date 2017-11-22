<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0053)http://115.28.87.22:8888/base/MakeTypeEdit.ihtm?id=10 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>项目类型 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
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
		document.getElementById("makeType.typeName").focus();
	}
	function changeAutoStoc(val){
		document.getElementById("makeType.autoStoc").value=val;
	}
</script>
</head>
<body onload="showMe();" class="sheet modal-dialog" style=" padding-top:15px;">
<div class="sheet-main" id="bodyDiv" style="width:325px;">
	<form action="MakeType_updateMakeType" method="post">
	  <input value="${makeType.id }" name="id" hidden />
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
<h3>编辑项目类型</h3>
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
				      	<th><span class="MustInput">*</span>名称：</th> 
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="15" onkeyup="goNextInput(&#39;makeType.unit&#39;);" id="makeType.typeName" name="typeName" value="${makeType.typeName }">
							  <script language="javascript">
								setFormErrorMsg('',1);
							  </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>成品计量单位：</th> 
				      	
				      	<td>
				      		<input class="TextBox" maxlength="15" onkeyup="goNextInput(&#39;lossRateStr&#39;);" id="makeType.unit" name="unit" value="${makeType.unit }" type="text">
				     	</td>
				     	
					</tr>
<!-- 					<tr>
				      	<th>上级类别：</th> 
						
				      	<td>
							<select id="makeType.parentId" name="parentId" style="width:140px">
								<option value="0">==请选择==</option>
				  				
<option value="10">标牌</option>
<option value="103">喷绘</option>
<option value="104">&nbsp;|--挂画</option>
<option value="105">&nbsp;|--灯箱画片</option>
<option value="106">&nbsp;|--高精图像片</option>
<option value="107">&nbsp;|--户外彩喷</option>
<option value="108">&nbsp;|--车身彩绘</option>
<option value="11">标识</option>
<option value="109">标识标牌</option>
<option value="110">&nbsp;|--指示牌</option>
<option value="111">&nbsp;|--警示牌</option>
<option value="112">&nbsp;|--桌牌</option>
<option value="113">&nbsp;|--立牌</option>
<option value="114">&nbsp;|--展示牌</option>
<option value="115">&nbsp;|--户外标识</option>
<option value="116">广告字</option>
<option value="117">&nbsp;|--不发光立体字</option>
<option value="118">&nbsp;|--背光立体字</option>
<option value="119">&nbsp;|--发光立体字</option>
<option value="120">&nbsp;|--光树脂发光立体字</option>
<option value="121">&nbsp;|--立体发光立体字</option>
<option value="13">型材销售</option>
<option value="17">&nbsp;|--画框型材</option>
<option value="18">&nbsp;|--画框配件</option>
<option value="34">灯箱</option>
<option value="122">&nbsp;|--吸塑灯箱</option>
<option value="123">&nbsp;|--超薄灯箱</option>
<option value="124">&nbsp;|--落地式灯箱</option>
<option value="125">&nbsp;|--软膜灯箱</option>
<option value="126">&nbsp;|--动态灯箱</option>
<option value="127">&nbsp;|--LED灯箱</option>
<option value="128">门头店招</option>
<option value="129">&nbsp;|--彩条店招</option>
<option value="130">&nbsp;|--模组店招</option>
<option value="131">&nbsp;|--拉布内光店招</option>
<option value="132">&nbsp;|--异形店招</option>
<option value="97">标牌配件</option>
<option value="98">东厂</option>
<option value="133">快展器材</option>
<option value="134">&nbsp;|--快展背景墙</option>
<option value="135">&nbsp;|--X展架</option>
<option value="136">&nbsp;|--易拉宝</option>
<option value="137">&nbsp;|--注水旗杆</option>
<option value="138">&nbsp;|--快展套装</option>
<option value="99">成品标牌</option>
<option value="139">展柜展架</option>
<option value="140">&nbsp;|--靠墙柜</option>
<option value="141">&nbsp;|--中岛柜</option>
<option value="142">&nbsp;|--平柜</option>
<option value="143">&nbsp;|--收银台</option>
<option value="144">&nbsp;|--挂架</option>
<option value="145">&nbsp;|--端架</option>
<option value="146">&nbsp;|--地台</option>
<option value="147">印刷</option>
<option value="148">&nbsp;|--名片</option>
<option value="149">&nbsp;|--宣传单</option>
<option value="150">&nbsp;|--画册</option>
<option value="151">&nbsp;|--手提袋</option>
<option value="152">&nbsp;|--台挂历</option>
<option value="153">促销用品</option>
<option value="154">&nbsp;|--吊旗</option>
<option value="155">&nbsp;|--太阳伞</option>
<option value="156">&nbsp;|--条幅横幅</option>
<option value="157">&nbsp;|--挂墙展板</option>
<option value="158">&nbsp;|--拱门气球</option>
<option value="159">&nbsp;|--礼品</option>
				  			</select>
					          <script language="javascript">
					          	setFormErrorMsg('',2);
					          </script>
				     	</td>
						
					</tr> -->
					<tr>
				      	<th>类型：</th>
				      	
				      	<td>
				      		<select id="makeType.type" name="type">
								<option value="1" 
								<c:if test="${makeType.type == 1 }">
								 selected=""
								</c:if>
								 >自制</option>
								<option value="2"
								<c:if test="${makeType.type == 2 }">
								 selected=""
								</c:if>
								>外协</option>
				  			</select>
					          <script language="javascript">
					          	setFormErrorMsg('',3);
					          </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>工作中心：</th>
				      	
				      	<td>
				      		<select id="makeType.workCenterId" name="makeType.workCenterId">
				      			<s:iterator value="woekCenters" status="index">
									<option value="${id }">${wcName }</option>
				      			</s:iterator>
				  			</select>
					          <script language="javascript">
					          	setFormErrorMsg('',3);
					          </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th>自动扣库存：</th>
				      	<td>
				      		<input type="radio" name="r_autoStoc" id="r_autoStoc2" onclick="changeAutoStoc(&#39;Y&#39;);"
				      		>是
				      		<input checked="checked" type="radio" name="r_autoStoc" id="r_autoStoc1" onclick="changeAutoStoc(&#39;N&#39;);" 
				      		>否
							<input type="hidden" name="autoStoc" id="makeType.autoStoc" value="N">
					        <script language="javascript">
					          	setFormErrorMsg('',4);
					        </script>
					        
				     	</td>
					</tr>
					<tr>
				      	<th>损耗率：</th>
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="5" onkeyup="goNextInput(&#39;makeType.sequCode&#39;);" id="lossRateStr" name="lossRate" value="0.00">%
					        <script language="javascript">
					          	setFormErrorMsg('',5);
					        </script>
				     	</td>
				     	
					</tr>
					<tr>
				      	<th><span class="MustInput">*</span>序号：</th> 
				      	
				      	<td>
				      		<input type="text" class="TextBox" maxlength="20" onkeyup="goNextInput(&#39;&#39;);" id="makeType.sequCode" name="sequCode" value="1">
							<script language="javascript">
								setFormErrorMsg('',6);
							</script>
				     	</td>
				     	
					</tr>
				</tbody></table>
			</div>
	  	</div>
	  </div>
		<div class="modal-buttom" id="buttonDiv">
			<input type="submit" class="buttom-a" value=" 保 存 "">
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