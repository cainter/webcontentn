<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0052)http://115.28.87.22:8888/finance/PurPayCostList.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-Control" content="no-cache">
			<meta http-equiv="Expires" content="0">
				<title>采购付款一览表 | 管理易-广告加工制作管理软件 企业版 9.28 | 易凯软件</title> <script
					src="js/minierp.js"></script>

				<link href="css/Query.css" rel="stylesheet" type="text/css">
					<link href="css/dhtmlgoodies_calendar.css" rel="stylesheet"
						type="text/css">
						<link rel="stylesheet" type="text/css" href="css/BillList.css">
							<script src="js/QueryList.js"></script>
							<script src="js/popup_ext.js"></script>
							<script src="js/dhtmlgoodies_calendar.js"></script>
							<script language="javascript">
	function doShow(id,type){
		var url;
		if(type=="IMPREST"){
			url="purchase/PurchaseBillEdit.html?id="+id;
		}else{
			url="finance/PayBillEdit.html?id="+id;
		}
		ShowIframe("查看",url,1024,600,"refreshWin()",1024,600);
	}
	function refreshWin(){
		if(popRetVal!=null){
			window.location.reload(true);
		}
	}
	function createPageParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("end_date").value);
		str=str+"&manager_name="+encodeURIComponent(document.getElementById("manager_name").value);
		str=str+"&creater_name="+encodeURIComponent(document.getElementById("creater_name").value);
		str=str+"&est_name="+encodeURIComponent(document.getElementById("est_name").value);
		str=str+"&est_id="+document.getElementById("est_id").value;
		str=str+"&min_cost="+encodeURIComponent(document.getElementById("min_cost").value.trim());
		str=str+"&max_cost="+encodeURIComponent(document.getElementById("max_cost").value.trim());
		str=str+"&ban_acc="+document.getElementById("ban_acc").value;
		str=str+"&ts_id="+document.getElementById("ts_id").value;
		
		return str;
	}
	
	function createProgramParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("hid_start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("hid_end_date").value);
		str=str+"&manager_name="+encodeURIComponent(document.getElementById("hid_manager_name").value);
		str=str+"&creater_name="+encodeURIComponent(document.getElementById("hid_creater_name").value);
		str=str+"&est_name="+encodeURIComponent(document.getElementById("hid_est_name").value);
		str=str+"&est_id=";
		str=str+"&min_cost="+encodeURIComponent(document.getElementById("hid_min_cost").value);
		str=str+"&max_cost="+encodeURIComponent(document.getElementById("hid_max_cost").value);
		str=str+"&ban_acc=";
		str=str+"&ts_id=1";
		
		return str;
	}
	function doSearch(){
		var str;
		if(IsAdvSearch){//高级
			str="search_type=1";
			if(document.getElementById("cb_pay_date").checked){
				if(!checkDateStr(document.getElementById("start_date").value,"开始日期")){
					return;
				}
				if(!checkDateStr(document.getElementById("end_date").value,"结束日期")){
					return;
				}
				str=str+"&cb_pay_date=1";
			}
			if(document.getElementById("cb_manager").checked){
				var managerName=document.getElementById("manager_name").value.trim();
				if(managerName==null || managerName==""){
					ShowAlert('提示框','请输入经办人姓名',200,100);
					return;
				}
				str=str+"&cb_manager=1";
			}
			if(document.getElementById("cb_creater").checked){
				var createrName=document.getElementById("creater_name").value.trim();
				if(createrName==null || createrName==""){
					ShowAlert('提示框','请输入开单人姓名',200,100);
					return;
				}
				str=str+"&cb_creater=1";
			}
			if(document.getElementById("cb_est").checked){
				var estId=document.getElementById("est_id").value.trim();
				if(estId==null || estId=="" || estId=="0"){
					ShowAlert('提示框','请输入收款单位',200,100);
					return;
				}
				str=str+"&cb_est=1";
			}
			
			if(document.getElementById("cb_cost").checked){
				var minCost=document.getElementById("min_cost").value.trim();
				if(minCost==null || minCost==""){
					ShowAlert('提示框','请输入最小金额',200,100);
					return;
				}else if(isNaN(minCost)){
					ShowAlert('提示框','最小金额只能是数字',200,100);
					return;
				}
				var maxCost=document.getElementById("max_cost").value.trim();
				if(maxCost==null || maxCost==""){
					ShowAlert('提示框','请输入最大金额',200,100);
					return;
				}else if(isNaN(maxCost)){
					ShowAlert('提示框','最大金额只能是数字',200,100);
					return;
				}
				str=str+"&cb_cost=1";
			}
			if(document.getElementById("cb_ban").checked){
				var banAcc=document.getElementById("ban_acc").value;
				if(banAcc==null || banAcc=="" || banAcc=="0"){
					ShowAlert('提示框','请选择银行账户',200,100);
					return;
				}
				str=str+"&cb_ban=1";
			}
			if(document.getElementById("cb_ts").checked){
				var tsId=document.getElementById("ts_id").value;
				if(tsId==null || tsId=="" || tsId=="0"){
					ShowAlert('提示框','请选择帐套',200,100);
					return;
				}
				str=str+"&cb_ts=1";
			}
		}else{//快速
			str="search_type=2";
			if(!checkDateStr(document.getElementById("start_date").value,"开始日期")){
				return;
			}
			if(!checkDateStr(document.getElementById("end_date").value,"结束日期")){
				return;
			}
		}
		var paraStr=createPageParaStr();
		if(paraStr!=""){
			str=str+"&"+paraStr;
		}
		window.location="finance/PurPayCostList.html?"+str;
	}
	function getSearchCondition(){
		var searchType="1";
		var str="search_type="+searchType;
		if(searchType=="1"){//高级
			str=str+"&cb_pay_date=1";
			
			
			
			
			
			str=str+"&cb_ts=1";
		}else{//快速
			
		}
		var paraStr=createProgramParaStr();
		if(paraStr!=""){
			str=str+"&"+paraStr;
		}
		return str;
	}
	function doDownload(){
		var str=getSearchCondition();
		window.location="finance/PurPayCostList.html?content_type=EXCEL&"+str;
	}
	function checkInput(){
		if(window.event.keyCode==13){
			doSearch();
		}
	}
	function doAutoCheck(objId){
		document.getElementById(objId).checked=true;
	}
	function doPrint(){
		var str=getSearchCondition();
		showWin(900,600,"finance/PurPayCostList.html?content_type=PRINT&"+str);
	}
	function selectStafferName(objId,checkObjId){
		var url="base/StafferMainForSelect.html";
		var cb="selectStafferNameCallBack('"+objId+"','"+checkObjId+"')";
		ShowIframe("选择员工",url,800,500,cb);
	}
	function selectStafferNameCallBack(objId,checkObjId){
		if(popRetVal!=null){
			var arr=popRetVal.split(";");
			document.getElementById(objId).value=arr[1];
			doAutoCheck(checkObjId);
		}
	}
	function selectEst(){
		var url="base/EstablishmentListForSelect.html?type=PROVIDER";
		ShowIframe("选择供应商",url,900,500,"selectEstCallBack()");
	}
	function selectEstCallBack(){
		if(popRetVal!=null){
			document.getElementById("est_id").value=popRetVal[0];
			document.getElementById("est_name").value=popRetVal[1];
			doAutoCheck("cb_est");
		}
	}
	function setDate(type){
		var d=new Date();
		var startStr="";
		var endStr="";
		if(type=="CURRENT_MONTH"){
			startStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-01";
			endStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
		}else if(type=="PREVIEW_MONTH"){
			d=new Date(d.getFullYear(),d.getMonth(),1);
			d.setDate(d.getDate()-1);
			startStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-1";
			endStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
		}else if(type=="TODAY"){
			startStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
			endStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
		}else if(type=="YESTERDAY"){
			d.setDate(d.getDate()-1);
			startStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
			endStr=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
		}
		document.getElementById("start_date").value=startStr;
		document.getElementById("end_date").value=endStr;
		doAutoCheck("cb_pay_date");
	}
</script>
</head>
<body oncontextmenu="return false">
	<div class="Wrap">
		<!-- 页面主框架 -->

		<div id="ListContainer" class="Container" style="width: 988px;">
			<!-- 主体容器 -->

			<!-- 标题栏 -->
			<div class="Heading BillIcon">
				<div class="HeadingContent">
					<h1>采购付款一览表</h1>
					<span class="Note">查询指定期间预付款与采购付款明细</span>
				</div>
			</div>

			<!-- 主内容 -->
			<div class="Content">
				<!-- 筛选控件栏 -->
				<div class="FilterBar ClearFix">
					<div class="SearchIcon"></div>
					<span class="fl">
						<table class="MoreOption" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th class="c1" width="80px"><input type="checkbox"
										name="cb_pay_date" id="cb_pay_date" checked="true"
										style="visibility: hidden;"> 付款日期 </th>
									<td width="360px"><input type="text"
										class="TextBox Datetime" maxlength="15"
										onkeyup="checkInput();"
										onfocus="doAutoCheck(&#39;cb_pay_date&#39;);" id="start_date"
										name="start_date" value="2017-07-09"> <img
											src="images/calendar.gif" class="imgIconButton"
											onclick="displayCalendar(document.getElementById(&#39;start_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_pay_date\&#39;)&#39;);">
												<input type="hidden" id="hid_start_date" value="2017-07-09">
													至 <input type="text" class="TextBox Datetime"
													maxlength="15" onkeyup="checkInput();"
													onfocus="doAutoCheck(&#39;cb_pay_date&#39;);" id="end_date"
													name="end_date" value="2017-07-09"> <img
														src="images/calendar.gif" class="imgIconButton"
														onclick="displayCalendar(document.getElementById(&#39;end_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_pay_date\&#39;)&#39;);">
															<input type="hidden" id="hid_end_date" value="2017-07-09">
																<a href="javascript:setDate(&#39;CURRENT_MONTH&#39;);">本月</a>
																<a href="javascript:setDate(&#39;TODAY&#39;);">今天</a> <a
																href="javascript:setDate(&#39;YESTERDAY&#39;);">昨天</a> <a
																href="javascript:setDate(&#39;PREVIEW_MONTH&#39;);">上月</a></td>
								</tr>
							</tbody>
						</table>
					</span> <span class="fr"> <a href="javascript:;" id="lnkMoreOption">更多查询选项</a>
						<input type="button" value=" 查 询" onclick="doSearch();"
						class="buttom search-but" id="sSearchButton" name="sSearchButton">
							<input type="button" value=" 导 出" onclick="doDownload();"
							class="buttom search-out" id="sDownloadButton"
							name="sDownloadButton"> <input type="button" value=" 打 印"
								onclick="doPrint();" class="buttom search-print"
								id="sPrintButton" name="sPrintButton"></span>
					<div id="dvMoreOptionBox" class="MoreOptionBox"
						style="display: none;">
						<table class="MoreOption" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<th class="c1" width="80px"><input type="checkbox"
										name="cb_est" id="cb_est"> 收款单位 </th>
									<td class="c1" width="260px"><input type="text"
										class="TextBox readonly" readonly="true" maxlength="50"
										name="est_name" id="est_name"
										onfocus="doAutoCheck(&#39;cb_est&#39;);" value=""> <img
											class="imgIconButton" src="images/make-a.gif"
											onclick="selectEst();"> <input type="hidden"
												id="hid_est_name" value=""> <input type="hidden"
													name="est_id" id="est_id" value=""></td>
									<th class="c2" width="80px"><input type="checkbox"
										name="cb_manager" id="cb_manager"> 经办人 </th>
									<td class="c3" width="250px"><input type="text"
										class="TextBox" maxlength="15" name="manager_name"
										id="manager_name" onkeyup="checkInput();"
										onfocus="doAutoCheck(&#39;cb_manager&#39;);" value="">
											<img class="imgIconButton" src="images/make-a.gif"
											onclick="selectStafferName(&#39;manager_name&#39;,&#39;cb_manager&#39;);">
												<input type="hidden" id="hid_manager_name" value=""></td>
								</tr>
								<tr>
									<th class="c1"><input type="checkbox" name="cb_cost"
										id="cb_cost"> 付款金额 </th>
									<td><input type="text" class="TextBox Money"
										maxlength="15" onkeyup="checkInput();"
										onfocus="doAutoCheck(&#39;cb_cost&#39;);" id="min_cost"
										name="min_cost" value=""> 至 <input type="text"
											class="TextBox Money" maxlength="15" onkeyup="checkInput();"
											onfocus="doAutoCheck(&#39;cb_cost&#39;);" id="max_cost"
											name="max_cost" value=""> <input type="hidden"
												id="hid_min_cost" value=""> <input type="hidden"
													id="hid_max_cost" value=""></td>
									<th class="c2"><input type="checkbox" name="cb_creater"
										id="cb_creater"> 开单人 </th>
									<td class="c3"><input type="text" class="TextBox"
										maxlength="15" name="creater_name" id="creater_name"
										onkeyup="checkInput();"
										onfocus="doAutoCheck(&#39;cb_creater&#39;);" value="">
											<img class="imgIconButton" src="images/make-a.gif"
											onclick="selectStafferName(&#39;creater_name&#39;,&#39;cb_creater&#39;);"
											style="cursor: pointer;"> <input type="hidden"
												id="hid_creater_name" value=""></td>
								</tr>
								<tr>
									<th class="c1"><input type="checkbox" name="cb_ban"
										id="cb_ban"> 银行账户 </th>
									<td class="c1"><select name="ban_acc" id="ban_acc"
										onfocus="doAutoCheck(&#39;cb_ban&#39;);">
											<option value="0">==请选择==</option>

											<option value="10">建行(秦朝阳)</option>

											<option value="12">黄秀娟(长通物流(6116))</option>

											<option value="9">工行(黄秀娟)</option>

											<option value="8">交行(秦朝阳)</option>

											<option value="13">黄秀娟(创新物流(5165))</option>

											<option value="14">黄秀娟(豫鑫物流（73035）)</option>

											<option value="4">农行(黄秀娟)</option>

											<option value="15">黄秀娟(微信15225099188)</option>

											<option value="11">中行(秦朝阳)</option>

											<option value="7">浦发(公司一般户)</option>

											<option value="2">中行(公司基本户)</option>

											<option value="1">现金(会计)</option>

											<option value="5">浦发(POS机刷卡)</option>

											<option value="6">淘宝 黄秀娟(支付宝 15225099188)</option>

											<option value="16">浦发(黄秀娟)</option>

											<option value="17">秦朝阳(微信13608675408)</option>

											<option value="18">现金(黄秀娟)</option>

									</select></td>
									<th class="c2"><input type="checkbox" name="cb_ts"
										id="cb_ts" checked="true"> 账套 </th>
									<td class="c3"><select name="ts_id" id="ts_id"
										onfocus="doAutoCheck(&#39;cb_ts&#39;);">
											<option value="0">==请选择账套==</option>

											<option value="1" selected="">新异</option>
											<option value="2">网络公司</option>
									</select></td>
								</tr>
							</tbody>
						</table>

						<div class="OptionOrderBy">
							<span class="fr"><a href="javascript:;"
								id="lnkHiddenOption">隐藏查询选项</a></span>
						</div>
					</div>
				</div>

				<!-- 提示信息显示栏 -->
				<div class="MsgBar">

					<table width="98%" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr id="errorMsgTr" style="display: none">
								<td>
									<div class="msg-error" id="errorMsgTd"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- 上栏 分页、操作等 -->

				<div class="TopToolBar">
					<table class="ListNoteInfo" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td>付款合计：0元（预付：0元 结欠：0元） 数量：0笔（预付：0笔 结欠：0笔）</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div class="table-list">
					<table width="100%">
						<tbody>
							<tr>
								<th width="8%">预付日期</th>
								<th width="12%">单号</th>
								<th width="6%">进/退</th>
								<th width="14%">供应商</th>
								<th width="14%">摘要</th>
								<th width="14%">银行账户</th>
								<th width="12%">金额</th>
								<th width="8%">经办人</th>
								<th width="8%">开单人</th>
								<th width="4%">操作</th>
							</tr>
							<s:iterator value="purchaseBills" var="purchaseBill">
								<tr>
									<th width="8%"><s:date name="purchaseDate"
											format="yyyy-MM-dd"></s:date></th>
									<th width="12%">${billCode }</th>
									<th width="6%"><s:if
											test=' #purchaseBill.billType.equals("BUY") '>
										进
										</s:if> <s:elseif test=' #purchaseBill.billType.equals("BACK") '>
　　										出
										</s:elseif></th>
									<th width="14%">${contractCode }</th>
									<th width="14%">${content }</th>
									<th width="14%">${attachFile }</th>
									<th width="12%">${cost }</th>
									<th width="8%">${managerName }</th>
									<th width="8%">${createrName }</th>
									<th width="4%">查看</th>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				<br>
					<div class="table-list">
						<table width="100%">
							<tbody>
								<tr>
									<th width="8%">付款日期</th>
									<th width="12%">单号</th>
									<th width="20%">供应商</th>
									<th width="14%">摘要</th>
									<th width="14%">银行账户</th>
									<th width="12%">金额</th>
									<th width="8%">经办人</th>
									<th width="8%">开单人</th>
									<th width="4%">操作</th>
								</tr>
								<s:iterator value="payBills" var="payBill">
									<tr>
										<th width="8%"><s:date name="purchaseDate"
												format="yyyy-MM-dd"></s:date></th>
										<th width="12%">${billCode }</th>
										<th width="16%">${payType }</th>
										<th width="18%">${content }</th>
										<th width="14%">${attachFile }</th>
										<th width="12%">${cost }</th>
										<th width="8%">${managerName }</th>
										<th width="8%">${createrName }</th>
										<th width="4%">查看</th>
									</tr>
								</s:iterator>

							</tbody>
						</table>
					</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	function ChangeWindowSize( container, maxWidth ){
	    setTimeout( function(){
	        var w1 = document.documentElement.clientWidth-40;
	        if( w1>maxWidth ) w1 = maxWidth;
	        else if( w1<870 ) w1 = 860;
	        container.style.width = w1+'px';
	    }, 300 );
	}
	var IsAdvSearch = false;
	(function(){
	    var ListContainer = document.getElementById('ListContainer');
	    ChangeWindowSize( ListContainer, 2020 );    // 超过 1280 的最大 1260 ，不全部铺满
	
	    var lnkMoreOption   = document.getElementById('lnkMoreOption');
	    var lnkHiddenOption = document.getElementById('lnkHiddenOption');
	    lnkMoreOption.onclick = function(){
	    	IsAdvSearch = true;
	        document.getElementById('dvMoreOptionBox').style.display = 'block';
	        document.getElementById('cb_pay_date').style.visibility = 'visible';
	        this.style.visibility = 'hidden';
	    };
	    lnkHiddenOption.onclick = function(){
	    	IsAdvSearch = false;
	        document.getElementById('dvMoreOptionBox').style.display = 'none';
	        document.getElementById('cb_pay_date').style.visibility = 'hidden';
	        lnkMoreOption.style.visibility = 'visible';
	    };
	})();
</script>
</body>
</html>