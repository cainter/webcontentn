<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0060)http://115.28.87.22:8888/finance/IncomeBillSearchResult.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>其他收入一览表 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>

<link href="css/Query.css" rel="stylesheet" type="text/css">
<link href="css/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/BillList.css">
<script src="js/QueryList.js"></script>
<script src="js/popup_ext.js"></script>
<script src="js/dhtmlgoodies_calendar.js"></script>
<script language="javascript">
	function doShow(id){
		var url="finance/IncomeBillEdit.html?id="+id;
		ShowIframe("其他收入单",url,1024,420,"refreshWin()",1024,600);
	}
	function refreshWin(){
		if(popRetVal!=null){
			window.location.reload(true);
		}
	}
	function doPrint(id){
		showWin(900,360,"finance/IncomeBillPrint.html?id="+id);
	}
	function createPageParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("end_date").value);
		
		var examined="A";
		if(document.getElementById("examine1").checked){
			examined="Y";
		}else if(document.getElementById("examine2").checked){
			examined="N";
		}
		str=str+"&examined="+examined;
		
		str=str+"&manager_name="+encodeURIComponent(document.getElementById("manager_name").value);
		str=str+"&creater_name="+encodeURIComponent(document.getElementById("creater_name").value);
		str=str+"&department="+document.getElementById("department").value;
		str=str+"&income_type="+document.getElementById("income_type").value;
		str=str+"&bank_account="+document.getElementById("bank_account").value;
		str=str+"&bill_code="+encodeURIComponent(document.getElementById("bill_code").value);
		str=str+"&pay_name="+encodeURIComponent(document.getElementById("pay_name").value);
		str=str+"&cont="+encodeURIComponent(document.getElementById("cont").value);
		str=str+"&min_cost="+encodeURIComponent(document.getElementById("min_cost").value.trim());
		str=str+"&max_cost="+encodeURIComponent(document.getElementById("max_cost").value.trim());
		str=str+"&ts_id="+document.getElementById("ts_id").value;
		str=str+"&order_by="+document.getElementById("order_by").value;
		str=str+"&order_sc="+document.getElementById("order_sc").value;
		
		return str;
	}
	
	function createProgramParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("hid_start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("hid_end_date").value);
		str=str+"&examined=";
		str=str+"&manager_name="+encodeURIComponent(document.getElementById("hid_manager_name").value);
		str=str+"&creater_name="+encodeURIComponent(document.getElementById("hid_creater_name").value);
		str=str+"&department=";
		str=str+"&income_type=";
		str=str+"&bank_account=";
		str=str+"&bill_code="+encodeURIComponent(document.getElementById("hid_bill_code").value);
		str=str+"&pay_name="+encodeURIComponent(document.getElementById("hid_pay_name").value);
		str=str+"&cont="+encodeURIComponent(document.getElementById("hid_cont").value);
		str=str+"&min_cost="+encodeURIComponent(document.getElementById("hid_min_cost").value);
		str=str+"&max_cost="+encodeURIComponent(document.getElementById("hid_max_cost").value);
		str=str+"&ts_id=1";
		str=str+"&order_by=";
		str=str+"&order_sc=";
		
		return str;
	}
	function doSearch(){
		var str;
		if(IsAdvSearch){//高级
			str="search_type=1";
			if(document.getElementById("cb_income_date").checked){
				if(!checkDateStr(document.getElementById("start_date").value,"开始日期")){
					return;
				}
				if(!checkDateStr(document.getElementById("end_date").value,"结束日期")){
					return;
				}
				str=str+"&cb_income_date=1";
			}
			if(document.getElementById("cb_examine").checked){
				str=str+"&cb_examine=1";
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
			if(document.getElementById("cb_dep").checked){
				var department=document.getElementById("department").value;
				if(department==null || department=="" || department=="0"){
					ShowAlert('提示框','请选择部门',200,100);
					return;
				}
				str=str+"&cb_dep=1";
			}
			if(document.getElementById("cb_income_type").checked){
				var incomeType=document.getElementById("income_type").value;
				if(incomeType==null || incomeType=="" || incomeType=="0"){
					ShowAlert('提示框','请选择收入类型',200,100);
					return;
				}
				str=str+"&cb_income_type=1";
			}
			if(document.getElementById("cb_ban").checked){
				var bankAccount=document.getElementById("bank_account").value;
				if(bankAccount==null || bankAccount=="" || bankAccount=="0"){
					ShowAlert('提示框','请选择银行账户',200,100);
					return;
				}
				str=str+"&cb_ban=1";
			}
			if(document.getElementById("cb_bill_code").checked){
				var billCode=document.getElementById("bill_code").value.trim();
				if(billCode==null || billCode==""){
					ShowAlert('提示框','请输入单号',200,100);
					return;
				}
				str=str+"&cb_bill_code=1";
			}
			if(document.getElementById("cb_pay").checked){
				var payName=document.getElementById("pay_name").value.trim();
				if(payName==null || payName==""){
					ShowAlert('提示框','请输入付款单位',200,100);
					return;
				}
				str=str+"&cb_pay=1";
			}
			if(document.getElementById("cb_cont").checked){
				var cont=document.getElementById("cont").value.trim();
				if(cont==null || cont==""){
					ShowAlert('提示框','请输入摘要',200,100);
					return;
				}
				str=str+"&cb_cont=1";
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
			if(document.getElementById("cb_ts").checked){
				var tsId=document.getElementById("ts_id").value;
				if(tsId==null || tsId=="" || tsId=="0"){
					ShowAlert('提示框','请选择帐套',200,100);
					return;
				}
				str=str+"&cb_ts=1";
			}
			if(document.getElementById("cb_order").checked){
				var orderBy=document.getElementById("order_by").value;
				if(orderBy==null || orderBy==""){
					ShowAlert('提示框','请选择排序类型',200,100);
					return;
				}
				str=str+"&cb_order=1";
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
		window.location="finance/IncomeBillSearchResult.html?"+str;
	}
	function doGo(pageIndex){
		var str=getSearchCondition();
		str=str+"&current_page="+pageIndex;
		window.location="finance/IncomeBillSearchResult.html?"+str;
	}
	
	function getSearchCondition(){
		var searchType="1";
		var str="search_type="+searchType;
		if(searchType=="1"){//高级
			str=str+"&cb_income_date=1";
			
			
			
			
			
			
			
			
			
			
			str=str+"&cb_ts=1";
			
		}else{//快速
			
		}
		var paraStr=createProgramParaStr();
		if(paraStr!=""){
			str=str+"&"+paraStr;
		}
		return str;
	}
	function doJump(pageIndex){
		if(window.event.keyCode==13){
			doGo(pageIndex);
		}
	}
	function DoubleClick(it){
		var ob_arr = document.getElementsByName("query_checkbox");
		var id="";
		if(ob_arr.length>=it.getAttribute("index")){
			id=ob_arr[it.getAttribute("index")-1].value;
		}
		if(id==""){
			return;
		}
		doShow(id);
	}
	function doDownload(){
		var str=getSearchCondition();
		window.location="finance/IncomeBillSearchResult.html?content_type=EXCEL&"+str;
	}
	function doCancel(){
		window.close();
	}
	function doInit(){
		Window_Onload();
	}
	function checkInput(){
		if(window.event.keyCode==13){
			doSearch();
		}
	}
	function doAutoCheck(objId){
		document.getElementById(objId).checked=true;
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
		doAutoCheck("cb_income_date");
	}
	function showExaPage(id){
		var url="finance/IncomeBillInfoForExamine.html?id="+id;
		ShowIframe("其他收入单审核",url,900,300,"refreshWin()");
	}
	function showUnExaPage(id){
		var url="finance/IncomeBillInfoForUnExamine.html?id="+id;
		ShowIframe("其他收入单反审核",url,900,300,"refreshWin()");
	}
</script>
</head>




<body oncontextmenu="return false">
<div class="Wrap"><!-- 页面主框架 -->
    
	<div id="ListContainer" class="Container" style="width: 988px;"><!-- 主体容器 -->
	    
	    <!-- 标题栏 -->
	    <div class="Heading BillIcon">
	        <div class="HeadingContent">
	            <h1>其他收入一览表</h1>
	            <span class="Note">查询当期发生的其他收入项目（非销售回款）</span>
	        </div>
	    </div>
	
		<!-- 主内容 -->
		<div class="Content">
	        <!-- 筛选控件栏 -->
	        <div class="FilterBar ClearFix">
	            <div class="SearchIcon"></div>
	            <span class="fl">
	            	<table class="MoreOption" cellpadding="0" cellspacing="0">
	            		<tbody><tr><th class="c1" width="80px">
	            			<input type="checkbox" name="cb_income_date" id="cb_income_date" checked="true" style="visibility:hidden;">
	            			日期
	            		</th>
	            		<td width="360px">
	            			<input type="text" class="TextBox Datetime" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_income_date&#39;);" id="start_date" name="start_date" value="2017-07-01">
			            	<img src="images/calendar.gif" class="imgIconButton" onclick="displayCalendar(document.getElementById(&#39;start_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_income_date\&#39;)&#39;);">
			            	<input type="hidden" id="hid_start_date" value="2017-07-01">
			            	至
			            	<input type="text" class="TextBox Datetime" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_income_date&#39;);" id="end_date" name="end_date" value="2017-07-09">
			            	<img src="images/calendar.gif" class="imgIconButton" onclick="displayCalendar(document.getElementById(&#39;end_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_income_date\&#39;)&#39;);">
			            	<input type="hidden" id="hid_end_date" value="2017-07-09">
			            	<a href="javascript:setDate(&#39;CURRENT_MONTH&#39;);">本月</a>
							<a href="javascript:setDate(&#39;TODAY&#39;);">今天</a>
							<a href="javascript:setDate(&#39;YESTERDAY&#39;);">昨天</a>
							<a href="javascript:setDate(&#39;PREVIEW_MONTH&#39;);">上月</a>
	            		</td>
	            	</tr></tbody></table>
	            	
	            </span>
	            <span class="fr">
	            	<a href="javascript:;" id="lnkMoreOption">更多查询选项</a>
		  			<input type="button" value=" 查 询" onclick="doSearch();" class="buttom search-but" id="sSearchButton" name="sSearchButton">
		  			<input type="button" value=" 导 出" onclick="doDownload();" class="buttom search-out" id="sDownloadButton" name="sDownloadButton">
	            </span>
				<div id="dvMoreOptionBox" class="MoreOptionBox" style="display:none;">
					<table class="MoreOption" cellpadding="0" cellspacing="0">
						<tbody><tr>
							<th class="c1" width="80px">
			        			<input type="checkbox" name="cb_pay" id="cb_pay">
			        			付款单位
			        		</th>
			        		<td class="c1" width="260px">
			        			<input type="text" class="TextBox" maxlength="50" name="pay_name" id="pay_name" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_pay&#39;);" value="">
								<input type="hidden" id="hid_pay_name" value="">
			    			</td>
			    			<th class="c2" width="80px">
	                        	<input type="checkbox" name="cb_examine" id="cb_examine">
	                        	审核状态
	                        </th>
	                    	<td class="c2" width="250px">
	                        	<input type="radio" name="examined" id="examine1" onclick="doAutoCheck(&#39;cb_examine&#39;);" checked="true">已审核
								<input type="radio" name="examined" id="examine2" onclick="doAutoCheck(&#39;cb_examine&#39;);">未审核
								<input type="radio" name="examined" id="examine3" onclick="doAutoCheck(&#39;cb_examine&#39;);">全部
	                    	</td>
			    		</tr>
						<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_bill_code" id="cb_bill_code">
			        			单号
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="50" name="bill_code" id="bill_code" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_bill_code&#39;);" value="">
								<input type="hidden" id="hid_bill_code" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_income_type" id="cb_income_type">
			        			收入类型
			        		</th>
			    			<td class="c3">
			        			<select name="income_type" id="income_type" onfocus="doAutoCheck(&#39;cb_income_type&#39;);">
					  				<option value="0">==请选择==</option>
					  				
					  				<option value="1">主营业务收入</option>
					  				
					  				<option value="2">其它业务收入</option>
					  				
				  				</select>
			    			</td>
			    		</tr>
			    		<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_cont" id="cb_cont">
			        			摘要
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="50" name="cont" id="cont" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_cont&#39;);" value="">
								<input type="hidden" id="hid_cont" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_ban" id="cb_ban">
			        			银行账户
			        		</th>
			    			<td class="c3">
			        			<select name="bank_account" id="bank_account" onfocus="doAutoCheck(&#39;cb_ban&#39;);">
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
					  				
					  				<option value="7"> 浦发(公司一般户)</option>
					  				
					  				<option value="2">中行(公司基本户)</option>
					  				
					  				<option value="1">现金(会计)</option>
					  				
					  				<option value="5">浦发(POS机刷卡)</option>
					  				
					  				<option value="6">淘宝 黄秀娟(支付宝 15225099188)</option>
					  				
					  				<option value="16">浦发(黄秀娟)</option>
					  				
					  				<option value="17">秦朝阳(微信13608675408)</option>
					  				
					  				<option value="18">现金(黄秀娟)</option>
					  				
				  				</select>
			    			</td>
			    		</tr>
			    		<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_cost" id="cb_cost">
			        			金额
			        		</th>
			    			<td>
			        			<input type="text" class="TextBox Money" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_cost&#39;);" id="min_cost" name="min_cost" value="">
								至
								<input type="text" class="TextBox Money" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_cost&#39;);" id="max_cost" name="max_cost" value="">
								<input type="hidden" id="hid_min_cost" value="">
								<input type="hidden" id="hid_max_cost" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_dep" id="cb_dep">
			        			部门
			        		</th>
			    			<td class="c3">
			        			<select name="department" id="department" onfocus="doAutoCheck(&#39;cb_dep&#39;);">
					  				<option value="0">==请选择==</option>
					  				
<option value="1">易凯管理员</option>
<option value="13">总经办</option>
<option value="22">&nbsp;|--财务</option>
<option value="14">新异店</option>
<option value="15">&nbsp;|--客服</option>
<option value="23">&nbsp;|--设计</option>
<option value="24">&nbsp;|--业务</option>
<option value="16">业务来源</option>
<option value="17">标识加工车间</option>
<option value="21">合作伙伴</option>
<option value="32">标识汇运营部</option>
<option value="33">财务部</option>
				  				</select>
			    			</td>
			    		</tr>
						<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_manager" id="cb_manager">
			        			经办人
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="15" name="manager_name" id="manager_name" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_manager&#39;);" value="">
								<img class="imgIconButton" src="images/make-a.gif" onclick="selectStafferName(&#39;manager_name&#39;,&#39;cb_manager&#39;);">
								<input type="hidden" id="hid_manager_name" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_ts" id="cb_ts" checked="true">
	                        	账套
			        		</th>
			    			<td class="c3">
			        			<select name="ts_id" id="ts_id" onfocus="doAutoCheck(&#39;cb_ts&#39;);">
				    				<option value="0">==请选择账套==</option>
				    				
									<option value="1" selected="">新异</option>
									<option value="2">网络公司</option>
								</select>
			        		</td>
			    		</tr>
			    		<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_creater" id="cb_creater">
			        			开单人
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="15" name="creater_name" id="creater_name" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_creater&#39;);" value="">
								<img class="imgIconButton" src="images/make-a.gif" onclick="selectStafferName(&#39;creater_name&#39;,&#39;cb_creater&#39;);" style="cursor:pointer;">
								<input type="hidden" id="hid_creater_name" value="">
			    			</td>
			    			<th class="c2">&nbsp;</th>
			    			<td class="c3">&nbsp;</td>
			    		</tr>
					</tbody></table>
					
			    	<div class="OptionOrderBy">
	                	<input type="checkbox" name="cb_order" id="cb_order">
	                    	排序类型
	                    <select name="order_by" id="order_by" onfocus="doAutoCheck(&#39;cb_order&#39;);">
	                        <option value="">==请选择==</option>
					  		<option value="INCOME_DATE">日期</option>
					  		<option value="COST">金额</option>
					  		<option value="INCOME_TYPE">收入类型</option>
	                    </select>
	                    <select name="order_sc" id="order_sc" onfocus="doAutoCheck(&#39;cb_order&#39;);">
	                        <option value="ASC">升序</option>
	                        <option value="DESC">降序</option>
	                    </select>
	                    <span class="fr"><a href="javascript:;" id="lnkHiddenOption">隐藏查询选项</a></span>
	                </div>
				</div>
			</div>
			
			<!-- 提示信息显示栏 -->
	        <div class="MsgBar">
	            
<table width="98%" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr id="errorMsgTr" style="display:none">
	  <td>
	  	<div class="msg-error" id="errorMsgTd">
	  	
	  	</div>
	  </td>
	</tr>
</tbody></table>
	        </div>

			<!-- 上栏 分页、操作等 -->
			
	        <div class="TopToolBar">
	            <table class="ListNoteInfo" cellpadding="0" cellspacing="0">
	            	<tbody><tr>
	                	<td>
	            			金额合计：0元
	                	</td>
	            	</tr>
	            </tbody></table>
			</div>
			

     		<div class="table-list">
		        <table width="100%">
		          	<tbody><tr>
						<th width="12%">单号</th>
						<th width="10%">银行账户</th>
						<th width="8%">日期</th>
						<th width="8%">收入类型</th>
						<th width="12%">付款单位</th>
						<th width="10%">金额（元）</th>
						<th width="10%">摘要</th>
						<th width="6%">经办人</th>
						<th width="6%">开单人</th>
						<th width="5%">状态</th>
						<th width="13%">操作</th>
					</tr>
					
					<s:iterator value="incomeBills" status="indexs">
						<tr>
							<td>${billCode }</td>
							<td>${bankAccountId }</td>
							<td>${incomeDate }</td>
							<td>${incomeTypeId }</td>
							<td>${payerName }</td>
							<td>${cost }</td>
							<td>${mark }</td>
							<td>${examinerName }</td>
							<td>${createrName }</td>
							<td>
							<c:if test="${examined =='Y' }">
								<a href="javascript:showUnExaPage(&#39;2040&#39;);">已审核</a>
							</c:if>
							
							<c:if test="${examined =='N' }">
								<a href="javascript:showUnExaPage(&#39;2040&#39;);">未审核</a>
							</c:if>
							
						</td>
							<td>操作</td>
						</tr>
					</s:iterator>
				</tbody></table>
      		</div>
      		<!-- 底栏 分页、操作等 -->
	        <div class="BottomToolBar ClearFix">
			    	
    <div class="table-bot">
    	
    	
    	 
    	  <img src="images/but001.gif">
    	  <img src="images/but002.gif">
    	    	
    	第 <input type="text" name="pageNumber" style="width:30px" value="0" onkeydown="javascript:doJump(this.value);" class="TextBox"> 页 
    	共0页
		
		
        <img src="images/but003.gif">
        <img src="images/but004.gif">
		
    </div>
	        </div>
			
		</div>
	</div>
</div>


<script type="text/javascript">
	function ChangeWindowSize( container, maxWidth ){
	    setTimeout( function(){
	        var w1 = document.documentElement.clientWidth-40;
	        if( w1>maxWidth ) w1 = maxWidth;
	        else if( w1<970 ) w1 = 960;
	        container.style.width = w1+'px';
	    }, 300 );
	}
	var IsAdvSearch = false;
	(function(){
		doInit();
	    var ListContainer = document.getElementById('ListContainer');
	    ChangeWindowSize( ListContainer, 2020 );    // 超过 1280 的最大 1260 ，不全部铺满
	
	    var lnkMoreOption   = document.getElementById('lnkMoreOption');
	    var lnkHiddenOption = document.getElementById('lnkHiddenOption');
	    lnkMoreOption.onclick = function(){
	    	IsAdvSearch = true;
	        document.getElementById('dvMoreOptionBox').style.display = 'block';
	        document.getElementById('cb_income_date').style.visibility = 'visible';
	        this.style.visibility = 'hidden';
	    };
	    lnkHiddenOption.onclick = function(){
	    	IsAdvSearch = false;
	        document.getElementById('dvMoreOptionBox').style.display = 'none';
	        document.getElementById('cb_income_date').style.visibility = 'hidden';
	        lnkMoreOption.style.visibility = 'visible';
	    };
	})();
</script>
</body></html>