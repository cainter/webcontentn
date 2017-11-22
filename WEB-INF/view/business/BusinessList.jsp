<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- saved from url=(0113)http://115.28.87.22:8888//base/EstablishmentListForSelect.html?type=COOPERATOR&ts_id=DF_TS_ID&order_type=BUS_TIME -->

<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>选择外协商 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</title>
<script src="js/minierp.js"></script>

<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/Query.css" rel="stylesheet" type="text/css">
<script src="js/QueryList.js"></script>
<script src="js/popup_ext.js"></script>
<script src="js/jquery.js"></script>
<script language="javascript">
	function doNew(){
		var url="base/EstablishmentNew.html?alert_type=NONE&type=COOPERATOR";
		ShowIframe("外协商",url,980,500,"doSelectNew()",900,500);
	}
	function doSelectNew(){
		if(popRetVal!=null){
			document.getElementById("LoadProcess").style.top=getTopPos(document.getElementById("search_key"))+50+"px";
			document.getElementById("LoadProcess").style.left=getleftPos(document.getElementById("search_key"))+100+"px";
			$("#LoadProcess").show();
			$.post("base/GetEstInfo.html",{est_id:popRetVal},function(data,status){
				parseSelectNewData(data,status);
			});
		}
	}
	function parseSelectNewData(data,status){
		$("#LoadProcess").hide();
		if(status=="success"){
			var obj=$.parseJSON(data);
			if(obj.status=="ERROR"){
				ShowAlert('提示框',obj.errMsg,200,100);
			}else{
				var arr=new Array();
				arr[0]=obj.id;
				arr[1]=obj.estName;
				arr[2]=obj.mngId;
				arr[3]=obj.mngName;
				arr[4]=obj.canMng;
				arr[5]=obj.phon;
				arr[6]=obj.addr;
				arr[7]=obj.lm;
				arr[8]=obj.lmPhon;
				arr[9]=obj.baName;
				arr[10]=obj.baAccCode;
				arr[11]=obj.baAccName;
				arr[12]="";//operType
				arr[13]=obj.pmId;
				//ie有时候会报个莫名其妙的错误(jquery.js里),设置个timeout看看有没有效果
        		setTimeout(function(){
        			parent.popRetVal=arr;
            		parent.ClosePop();
				},500);
			}
		}else{
			ShowAlert('提示框','系统错误：'+status,200,100);
		}
	}
	function refreshWin(){
		window.location=window.location;
	}
	function doSearch(){
		var searchKey=encodeURIComponent(document.getElementById("search_key").value.trim());
		var typeId="";
		if(document.getElementById("type_id")!==null){
			typeId=document.getElementById("type_id").value;
		}
		var levelId="";
		if(document.getElementById("level_id")!=null){
			levelId=document.getElementById("level_id").value;
		}
		var areaId=document.getElementById("area_id").value;

		window.location="base/EstablishmentListForSelect.html?type=COOPERATOR&type_id="+typeId+"&level_id="+levelId+"&area_id="+areaId+"&ts_id=2&show_all=&search_key="+searchKey+"&order_type=BUS_TIME&oper_type=";
	}
	function doGo(pageIndex){
		var searchKey=encodeURIComponent("");
		window.location="base/EstablishmentListForSelect.html?type=COOPERATOR&type_id=0&level_id=0&area_id=0&ts_id=2&show_all=&search_key="+searchKey+"&order_type=BUS_TIME&oper_type=&current_page="+pageIndex;
	}
	function doJump(pageIndex){
		if(window.event.keyCode==13){
			doGo(pageIndex);
		}
	}

	function doSelect(index,operType){
		var ob_arr = document.getElementsByName("query_checkbox");
		var arr=new Array();
		if ( ob_arr.length>=index ){
			arr[0]=ob_arr[index-1].value;
			arr[1]=ob_arr[index-1].getAttribute("est_name");
			arr[2]=ob_arr[index-1].getAttribute("manager_id");
			arr[3]=ob_arr[index-1].getAttribute("manager_name");
			arr[4]=ob_arr[index-1].getAttribute("can_manage");
			arr[5]=ob_arr[index-1].getAttribute("phone");
			arr[6]=ob_arr[index-1].getAttribute("addr");
			arr[7]=ob_arr[index-1].getAttribute("linkman");
			arr[8]=ob_arr[index-1].getAttribute("lm_phone");
			
			arr[9]=ob_arr[index-1].getAttribute("ba_name");
			arr[10]=ob_arr[index-1].getAttribute("ba_acc_code");
			arr[11]=ob_arr[index-1].getAttribute("ba_acc_name");
			arr[12]=operType;
			arr[13]=ob_arr[index-1].getAttribute("pm_id");
			
			parent.popRetVal=arr;
			parent.ClosePop();
		}
	}
	function doCancel(){
		parent.ClosePop();
	}
	function DoubleClick(it){
		var ob_arr = document.getElementsByName("query_checkbox");
		var arr=new Array();
		if(ob_arr.length>=it.getAttribute("index")){
			
			arr[0]=ob_arr[it.getAttribute("index")-1].value;
			arr[1]=ob_arr[it.getAttribute("index")-1].getAttribute("est_name");
			arr[2]=ob_arr[it.getAttribute("index")-1].getAttribute("manager_id");
			arr[3]=ob_arr[it.getAttribute("index")-1].getAttribute("manager_name");
			arr[4]=ob_arr[it.getAttribute("index")-1].getAttribute("can_manage");
			arr[5]=ob_arr[it.getAttribute("index")-1].getAttribute("phone");
			arr[6]=ob_arr[it.getAttribute("index")-1].getAttribute("addr");
			arr[7]=ob_arr[it.getAttribute("index")-1].getAttribute("linkman");
			arr[8]=ob_arr[it.getAttribute("index")-1].getAttribute("lm_phone");
			
			arr[9]=ob_arr[it.getAttribute("index")-1].getAttribute("ba_name");
			arr[10]=ob_arr[it.getAttribute("index")-1].getAttribute("ba_acc_code");
			arr[11]=ob_arr[it.getAttribute("index")-1].getAttribute("ba_acc_name");
			arr[12]="";
			arr[13]=ob_arr[it.getAttribute("index")-1].getAttribute("pm_id");
			
			parent.popRetVal=arr;
			parent.ClosePop();
		}
	}
	function doInit(){
		Window_Onload();
		resizePopwin();
		document.getElementById("search_key").focus();
	}
	function checkSearchKey(){
		if(window.event.keyCode==13){
			doSearch();
		}
	}
</script>
<style>@font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}</style></head>
<body oncontextmenu="return false" onload="doInit();" class="sheet">
<div class="sheet-main" style="width:856px;">
  <div class="sheet-top">
    <div class="content">
      <h2>选择客户</h2>
      <p>鼠标双击选中记录，支持以客户名称、客户拼音字头、联系人名称进行模糊查询</p>
    </div>
  </div>
  <div class="sheet-list">
    <div class="search-business">
      <div class="content">
        <table width="100%">
          <tbody>
            <tr>
              <td align="right">
		            <input type="text" class="TextBox" id="search_key" name="search_key" onkeyup="checkSearchKey();" style="width:100px" value="" title="以外协商名称、外协商拼音字头、联系人名称进行模糊查询">
					
		  			<select name="area_id" id="area_id" style="width:140px">
						<option value="0">==全部地区==</option>
						
<option value="1">河南省</option>
<option value="76">&nbsp;|--郑州市</option>
<option value="95">&nbsp;&nbsp;|--巩义市</option>
<option value="104">&nbsp;&nbsp;|--管城区</option>
<option value="105">&nbsp;&nbsp;|--金水区</option>
<option value="106">&nbsp;&nbsp;|--经济开发区</option>
<option value="107">&nbsp;&nbsp;|--惠济区</option>
<option value="108">&nbsp;&nbsp;|--上街区</option>
<option value="109">&nbsp;&nbsp;|--高新技术开发区</option>
<option value="96">&nbsp;&nbsp;|--新郑市</option>
<option value="97">&nbsp;&nbsp;|--登封</option>
<option value="98">&nbsp;&nbsp;|--新密</option>
<option value="99">&nbsp;&nbsp;|--荥阳</option>
<option value="100">&nbsp;&nbsp;|--中牟县</option>
<option value="101">&nbsp;&nbsp;|--二七区</option>
<option value="102">&nbsp;&nbsp;|--中原区</option>
<option value="103">&nbsp;&nbsp;|--郑东新区</option>
<option value="85">&nbsp;|--焦作市</option>
<option value="187">&nbsp;&nbsp;|--沁阳市</option>
<option value="196">&nbsp;&nbsp;|--中站区</option>
<option value="188">&nbsp;&nbsp;|--孟州市</option>
<option value="189">&nbsp;&nbsp;|--修武县</option>
<option value="190">&nbsp;&nbsp;|--温县</option>
<option value="191">&nbsp;&nbsp;|--武陟县</option>
<option value="192">&nbsp;&nbsp;|--博爱县</option>
<option value="193">&nbsp;&nbsp;|--山阳区</option>
<option value="194">&nbsp;&nbsp;|--解放区</option>
<option value="195">&nbsp;&nbsp;|--马村区</option>
<option value="86">&nbsp;|--濮阳市</option>
<option value="197">&nbsp;&nbsp;|--濮阳县</option>
<option value="198">&nbsp;&nbsp;|--南乐县</option>
<option value="199">&nbsp;&nbsp;|--台前县</option>
<option value="200">&nbsp;&nbsp;|--清丰县</option>
<option value="201">&nbsp;&nbsp;|--范县</option>
<option value="202">&nbsp;&nbsp;|--华龙区</option>
<option value="87">&nbsp;|--许昌市</option>
<option value="203">&nbsp;&nbsp;|--魏都区</option>
<option value="204">&nbsp;&nbsp;|--禹州市</option>
<option value="205">&nbsp;&nbsp;|--长葛市</option>
<option value="206">&nbsp;&nbsp;|--许昌县</option>
<option value="207">&nbsp;&nbsp;|--鄢陵县</option>
<option value="208">&nbsp;&nbsp;|--襄城县</option>
<option value="88">&nbsp;|--漯河市</option>
<option value="209">&nbsp;&nbsp;|--郾城区</option>
<option value="210">&nbsp;&nbsp;|--临颍县</option>
<option value="211">&nbsp;&nbsp;|--召陵区</option>
<option value="212">&nbsp;&nbsp;|--舞阳县</option>
<option value="213">&nbsp;&nbsp;|--源汇区</option>
<option value="89">&nbsp;|--三门峡市</option>
<option value="214">&nbsp;&nbsp;|--渑池县</option>
<option value="215">&nbsp;&nbsp;|--湖滨区</option>
<option value="216">&nbsp;&nbsp;|--义马市</option>
<option value="217">&nbsp;&nbsp;|--灵宝市</option>
<option value="218">&nbsp;&nbsp;|--陕县</option>
<option value="219">&nbsp;&nbsp;|--卢氏县</option>
<option value="90">&nbsp;|--商丘市</option>
<option value="220">&nbsp;&nbsp;|--永城市</option>
<option value="221">&nbsp;&nbsp;|--宁陵县</option>
<option value="222">&nbsp;&nbsp;|--虞城县</option>
<option value="223">&nbsp;&nbsp;|--民权县</option>
<option value="224">&nbsp;&nbsp;|--夏邑县</option>
<option value="225">&nbsp;&nbsp;|--柘城县</option>
<option value="226">&nbsp;&nbsp;|--睢县</option>
<option value="227">&nbsp;&nbsp;|--睢阳区</option>
<option value="228">&nbsp;&nbsp;|--梁园区</option>
<option value="91">&nbsp;|--信阳市</option>
<option value="229">&nbsp;&nbsp;|--潢川县</option>
<option value="238">&nbsp;&nbsp;|--浉河区</option>
<option value="230">&nbsp;&nbsp;|--淮滨县</option>
<option value="231">&nbsp;&nbsp;|--息县</option>
<option value="232">&nbsp;&nbsp;|--新县</option>
<option value="233">&nbsp;&nbsp;|--固始县</option>
<option value="234">&nbsp;&nbsp;|--罗山县</option>
<option value="235">&nbsp;&nbsp;|--光山县</option>
<option value="236">&nbsp;&nbsp;|--商城县</option>
<option value="237">&nbsp;&nbsp;|--平桥区</option>
<option value="92">&nbsp;|--周口市</option>
<option value="239">&nbsp;&nbsp;|--项城市</option>
<option value="248">&nbsp;&nbsp;|--川汇区</option>
<option value="249">&nbsp;&nbsp;|--东新区</option>
<option value="250">&nbsp;&nbsp;|--经济开发区</option>
<option value="240">&nbsp;&nbsp;|--商水县</option>
<option value="241">&nbsp;&nbsp;|--淮阳县</option>
<option value="242">&nbsp;&nbsp;|--太康县</option>
<option value="243">&nbsp;&nbsp;|--鹿邑县</option>
<option value="244">&nbsp;&nbsp;|--西华县</option>
<option value="245">&nbsp;&nbsp;|--扶沟县</option>
<option value="246">&nbsp;&nbsp;|--沈丘县</option>
<option value="247">&nbsp;&nbsp;|--郸城县</option>
<option value="93">&nbsp;|--驻马店市</option>
<option value="251">&nbsp;&nbsp;|--确山县</option>
<option value="260">&nbsp;&nbsp;|--驿城区</option>
<option value="252">&nbsp;&nbsp;|--新蔡县</option>
<option value="253">&nbsp;&nbsp;|--上蔡县</option>
<option value="254">&nbsp;&nbsp;|--泌阳县</option>
<option value="255">&nbsp;&nbsp;|--西平县</option>
<option value="256">&nbsp;&nbsp;|--遂平县</option>
<option value="257">&nbsp;&nbsp;|--汝南县</option>
<option value="258">&nbsp;&nbsp;|--平舆县</option>
<option value="259">&nbsp;&nbsp;|--正阳县</option>
<option value="94">&nbsp;|--济源市</option>
<option value="261">&nbsp;&nbsp;|--城区</option>
<option value="270">&nbsp;&nbsp;|--克井镇</option>
<option value="271">&nbsp;&nbsp;|--大峪镇</option>
<option value="272">&nbsp;&nbsp;|--承留镇</option>
<option value="262">&nbsp;&nbsp;|--五龙口镇</option>
<option value="263">&nbsp;&nbsp;|--下冶镇</option>
<option value="264">&nbsp;&nbsp;|--轵城镇</option>
<option value="265">&nbsp;&nbsp;|--王屋镇</option>
<option value="266">&nbsp;&nbsp;|--思礼镇</option>
<option value="267">&nbsp;&nbsp;|--邵原镇</option>
<option value="268">&nbsp;&nbsp;|--坡头镇</option>
<option value="269">&nbsp;&nbsp;|--梨林镇</option>
<option value="77">&nbsp;|--洛阳市</option>
<option value="110">&nbsp;&nbsp;|--涧西区</option>
<option value="119">&nbsp;&nbsp;|--宜阳县</option>
<option value="120">&nbsp;&nbsp;|--栾川县</option>
<option value="121">&nbsp;&nbsp;|--新安县</option>
<option value="122">&nbsp;&nbsp;|--伊滨区</option>
<option value="123">&nbsp;&nbsp;|--吉利区</option>
<option value="124">&nbsp;&nbsp;|--瀍河区</option>
<option value="125">&nbsp;&nbsp;|--老城区</option>
<option value="111">&nbsp;&nbsp;|--西工区</option>
<option value="112">&nbsp;&nbsp;|--洛龙区</option>
<option value="113">&nbsp;&nbsp;|--嵩县</option>
<option value="114">&nbsp;&nbsp;|--偃师市</option>
<option value="115">&nbsp;&nbsp;|--孟津县</option>
<option value="116">&nbsp;&nbsp;|--汝阳县</option>
<option value="117">&nbsp;&nbsp;|--伊川县</option>
<option value="118">&nbsp;&nbsp;|--洛宁县</option>
<option value="78">&nbsp;|--安阳市</option>
<option value="126">&nbsp;&nbsp;|--龙安区</option>
<option value="135">&nbsp;&nbsp;|--内黄县</option>
<option value="127">&nbsp;&nbsp;|--殷都区</option>
<option value="128">&nbsp;&nbsp;|--文峰区</option>
<option value="129">&nbsp;&nbsp;|--开发区</option>
<option value="130">&nbsp;&nbsp;|--北关区</option>
<option value="131">&nbsp;&nbsp;|--林州市</option>
<option value="132">&nbsp;&nbsp;|--安阳县</option>
<option value="133">&nbsp;&nbsp;|--滑县</option>
<option value="134">&nbsp;&nbsp;|--汤阴县</option>
<option value="80">&nbsp;|--南阳市</option>
<option value="136">&nbsp;&nbsp;|--社旗县</option>
<option value="145">&nbsp;&nbsp;|--唐河县</option>
<option value="146">&nbsp;&nbsp;|--南召县</option>
<option value="147">&nbsp;&nbsp;|--内乡县</option>
<option value="148">&nbsp;&nbsp;|--新野县</option>
<option value="137">&nbsp;&nbsp;|--西峡县</option>
<option value="138">&nbsp;&nbsp;|--卧龙区</option>
<option value="139">&nbsp;&nbsp;|--宛城区</option>
<option value="140">&nbsp;&nbsp;|--邓州市</option>
<option value="141">&nbsp;&nbsp;|--桐柏县</option>
<option value="142">&nbsp;&nbsp;|--方城县</option>
<option value="143">&nbsp;&nbsp;|--淅川县</option>
<option value="144">&nbsp;&nbsp;|--镇平县</option>
<option value="81">&nbsp;|--开封市</option>
<option value="149">&nbsp;&nbsp;|--金明区</option>
<option value="158">&nbsp;&nbsp;|--尉氏县</option>
<option value="150">&nbsp;&nbsp;|--龙亭区</option>
<option value="151">&nbsp;&nbsp;|--顺河区</option>
<option value="152">&nbsp;&nbsp;|--鼓楼区</option>
<option value="153">&nbsp;&nbsp;|--禹王台区</option>
<option value="154">&nbsp;&nbsp;|--通许县</option>
<option value="155">&nbsp;&nbsp;|--开封县</option>
<option value="156">&nbsp;&nbsp;|--杞县</option>
<option value="157">&nbsp;&nbsp;|--兰考县</option>
<option value="82">&nbsp;|--平顶山市</option>
<option value="159">&nbsp;&nbsp;|--湛河区</option>
<option value="168">&nbsp;&nbsp;|--石龙区</option>
<option value="160">&nbsp;&nbsp;|--卫东区</option>
<option value="161">&nbsp;&nbsp;|--新华区</option>
<option value="162">&nbsp;&nbsp;|--汝州市</option>
<option value="163">&nbsp;&nbsp;|--舞钢市</option>
<option value="164">&nbsp;&nbsp;|--郏县</option>
<option value="165">&nbsp;&nbsp;|--叶县</option>
<option value="166">&nbsp;&nbsp;|--鲁山县</option>
<option value="167">&nbsp;&nbsp;|--宝丰县</option>
<option value="83">&nbsp;|--鹤壁市</option>
<option value="169">&nbsp;&nbsp;|--淇滨区</option>
<option value="170">&nbsp;&nbsp;|--浚县</option>
<option value="171">&nbsp;&nbsp;|--淇县</option>
<option value="172">&nbsp;&nbsp;|--鹤山区</option>
<option value="173">&nbsp;&nbsp;|--山城区</option>
<option value="84">&nbsp;|--新乡市</option>
<option value="174">&nbsp;&nbsp;|--牧野区</option>
<option value="183">&nbsp;&nbsp;|--延津县</option>
<option value="184">&nbsp;&nbsp;|--封丘县</option>
<option value="186">&nbsp;&nbsp;|--凤泉区</option>
<option value="175">&nbsp;&nbsp;|--红旗区</option>
<option value="176">&nbsp;&nbsp;|--卫滨区</option>
<option value="177">&nbsp;&nbsp;|--卫辉市</option>
<option value="178">&nbsp;&nbsp;|--辉县市</option>
<option value="179">&nbsp;&nbsp;|--新乡县</option>
<option value="180">&nbsp;&nbsp;|--获嘉县</option>
<option value="181">&nbsp;&nbsp;|--原阳县</option>
<option value="182">&nbsp;&nbsp;|--长垣县</option>
<option value="3403">吉林省</option>
<option value="3458">&nbsp;|--长春市</option>
<option value="3459">&nbsp;|--吉林市</option>
<option value="3460">&nbsp;|--四平市</option>
<option value="3461">&nbsp;|--辽源市</option>
<option value="3462">&nbsp;|--通化市</option>
<option value="3463">&nbsp;|--白山市</option>
<option value="3464">&nbsp;|--松原市</option>
<option value="3465">&nbsp;|--白城市</option>
<option value="3466">&nbsp;|--延边州</option>
<option value="3404">黑龙江省</option>
<option value="3467">&nbsp;|--鹤岗市</option>
<option value="3476">&nbsp;|--绥化市</option>
<option value="3477">&nbsp;|--哈尔滨市</option>
<option value="3478">&nbsp;|--齐齐哈尔市</option>
<option value="3479">&nbsp;|--大兴安岭地区</option>
<option value="3468">&nbsp;|--双鸭山市</option>
<option value="3469">&nbsp;|--鸡西市</option>
<option value="3470">&nbsp;|--大庆市</option>
<option value="3471">&nbsp;|--伊春市</option>
<option value="3472">&nbsp;|--牡丹江市</option>
<option value="3473">&nbsp;|--佳木斯市</option>
<option value="3474">&nbsp;|--七台河市</option>
<option value="3475">&nbsp;|--黑河市</option>
<option value="3405">内蒙古</option>
<option value="3480">&nbsp;|--呼和浩特市</option>
<option value="3489">&nbsp;|--阿拉善盟</option>
<option value="3490">&nbsp;|--兴安盟</option>
<option value="3491">&nbsp;|--通辽市</option>
<option value="3481">&nbsp;|--包头市</option>
<option value="3482">&nbsp;|--乌海市</option>
<option value="3483">&nbsp;|--赤峰市</option>
<option value="3484">&nbsp;|--乌兰察布市</option>
<option value="3485">&nbsp;|--锡林郭勒盟</option>
<option value="3486">&nbsp;|--呼伦贝尔市</option>
<option value="3487">&nbsp;|--鄂尔多斯市</option>
<option value="3488">&nbsp;|--巴彦淖尔市</option>
<option value="3406">江苏省</option>
<option value="3492">&nbsp;|--南京市</option>
<option value="3501">&nbsp;|--镇江市</option>
<option value="3502">&nbsp;|--常州市</option>
<option value="3503">&nbsp;|--无锡市</option>
<option value="3504">&nbsp;|--苏州市</option>
<option value="3493">&nbsp;|--徐州市</option>
<option value="3494">&nbsp;|--连云港市</option>
<option value="3495">&nbsp;|--淮安市</option>
<option value="3496">&nbsp;|--宿迁市</option>
<option value="3497">&nbsp;|--盐城市</option>
<option value="3498">&nbsp;|--扬州市</option>
<option value="3499">&nbsp;|--泰州市</option>
<option value="3500">&nbsp;|--南通市</option>
<option value="3407">山东省</option>
<option value="3505">&nbsp;|--济宁市</option>
<option value="3514">&nbsp;|--莱芜市</option>
<option value="3515">&nbsp;|--德州市</option>
<option value="3516">&nbsp;|--临沂市</option>
<option value="3517">&nbsp;|--聊城市</option>
<option value="3518">&nbsp;|--滨州市</option>
<option value="3519">&nbsp;|--菏泽市</option>
<option value="3520">&nbsp;|--日照市</option>
<option value="3521">&nbsp;|--泰安市</option>
<option value="3506">&nbsp;|--济南市</option>
<option value="3507">&nbsp;|--青岛市</option>
<option value="3508">&nbsp;|--淄博市</option>
<option value="3509">&nbsp;|--枣庄市</option>
<option value="3510">&nbsp;|--东营市</option>
<option value="3511">&nbsp;|--潍坊市</option>
<option value="3512">&nbsp;|--烟台市</option>
<option value="3513">&nbsp;|--威海市</option>
<option value="28">新疆</option>
<option value="2348">&nbsp;|--五家渠市</option>
<option value="2357">&nbsp;|--阿克苏地区</option>
<option value="2393">&nbsp;&nbsp;|--阿克苏市</option>
<option value="2394">&nbsp;&nbsp;|--温宿县</option>
<option value="2395">&nbsp;&nbsp;|--沙雅县</option>
<option value="2396">&nbsp;&nbsp;|--拜城县</option>
<option value="2397">&nbsp;&nbsp;|--阿瓦提县</option>
<option value="2398">&nbsp;&nbsp;|--库车县</option>
<option value="2399">&nbsp;&nbsp;|--柯坪县</option>
<option value="2400">&nbsp;&nbsp;|--新和县</option>
<option value="2401">&nbsp;&nbsp;|--乌什县</option>
<option value="2358">&nbsp;|--喀什地区</option>
<option value="2402">&nbsp;&nbsp;|--喀什市</option>
<option value="2411">&nbsp;&nbsp;|--麦盖提县</option>
<option value="2412">&nbsp;&nbsp;|--莎车县</option>
<option value="2413">&nbsp;&nbsp;|--塔什库尔干县</option>
<option value="2403">&nbsp;&nbsp;|--巴楚县</option>
<option value="2404">&nbsp;&nbsp;|--泽普县</option>
<option value="2405">&nbsp;&nbsp;|--伽师县</option>
<option value="2406">&nbsp;&nbsp;|--叶城县</option>
<option value="2407">&nbsp;&nbsp;|--岳普湖县</option>
<option value="2408">&nbsp;&nbsp;|--疏附县</option>
<option value="2409">&nbsp;&nbsp;|--疏勒县</option>
<option value="2410">&nbsp;&nbsp;|--英吉沙县</option>
<option value="2359">&nbsp;|--克孜勒苏州</option>
<option value="2414">&nbsp;&nbsp;|--阿图什市</option>
<option value="2415">&nbsp;&nbsp;|--阿合奇县</option>
<option value="2416">&nbsp;&nbsp;|--乌恰县</option>
<option value="2417">&nbsp;&nbsp;|--阿克陶县</option>
<option value="2360">&nbsp;|--巴音郭楞州</option>
<option value="2418">&nbsp;&nbsp;|--库尔勒市</option>
<option value="2419">&nbsp;&nbsp;|--尉犁县</option>
<option value="2420">&nbsp;&nbsp;|--和静县</option>
<option value="2421">&nbsp;&nbsp;|--博湖县</option>
<option value="2422">&nbsp;&nbsp;|--和硕县</option>
<option value="2423">&nbsp;&nbsp;|--轮台县</option>
<option value="2424">&nbsp;&nbsp;|--若羌县</option>
<option value="2425">&nbsp;&nbsp;|--且末县</option>
<option value="2427">&nbsp;&nbsp;|--焉耆县</option>
<option value="2361">&nbsp;|--昌吉州</option>
<option value="2432">&nbsp;&nbsp;|--昌吉市</option>
<option value="2433">&nbsp;&nbsp;|--阜康市</option>
<option value="2435">&nbsp;&nbsp;|--奇台县</option>
<option value="2437">&nbsp;&nbsp;|--玛纳斯县</option>
<option value="2438">&nbsp;&nbsp;|--吉木萨尔县</option>
<option value="2440">&nbsp;&nbsp;|--呼图壁县</option>
<option value="2442">&nbsp;&nbsp;|--木垒县</option>
<option value="2362">&nbsp;|--博尔塔拉州</option>
<option value="2449">&nbsp;&nbsp;|--阿拉山口市</option>
<option value="2451">&nbsp;&nbsp;|--博乐市</option>
<option value="2453">&nbsp;&nbsp;|--精河县</option>
<option value="2454">&nbsp;&nbsp;|--温泉县</option>
<option value="2363">&nbsp;|--伊犁州</option>
<option value="2457">&nbsp;&nbsp;|--伊宁县</option>
<option value="2468">&nbsp;&nbsp;|--奎屯市</option>
<option value="2458">&nbsp;&nbsp;|--伊宁市</option>
<option value="2460">&nbsp;&nbsp;|--特克斯县</option>
<option value="2461">&nbsp;&nbsp;|--尼勒克县</option>
<option value="2463">&nbsp;&nbsp;|--昭苏县</option>
<option value="2464">&nbsp;&nbsp;|--新源县</option>
<option value="2465">&nbsp;&nbsp;|--霍城县</option>
<option value="2466">&nbsp;&nbsp;|--察布查尔县</option>
<option value="2467">&nbsp;&nbsp;|--巩留县</option>
<option value="2364">&nbsp;|--塔城地区</option>
<option value="2470">&nbsp;&nbsp;|--塔城市</option>
<option value="2471">&nbsp;&nbsp;|--乌苏市</option>
<option value="2472">&nbsp;&nbsp;|--额敏县</option>
<option value="2474">&nbsp;&nbsp;|--裕民县</option>
<option value="2475">&nbsp;&nbsp;|--沙湾县</option>
<option value="2476">&nbsp;&nbsp;|--托里县</option>
<option value="2477">&nbsp;&nbsp;|--和布克赛尔县</option>
<option value="2365">&nbsp;|--阿勒泰地区</option>
<option value="2478">&nbsp;&nbsp;|--北屯市</option>
<option value="2480">&nbsp;&nbsp;|--阿勒泰市</option>
<option value="2481">&nbsp;&nbsp;|--富蕴县</option>
<option value="2483">&nbsp;&nbsp;|--青河县</option>
<option value="2484">&nbsp;&nbsp;|--吉木乃县</option>
<option value="2485">&nbsp;&nbsp;|--布尔津县</option>
<option value="2487">&nbsp;&nbsp;|--福海县</option>
<option value="2488">&nbsp;&nbsp;|--哈巴河县</option>
<option value="2366">&nbsp;|--博尔塔拉蒙古自治州阿拉山口口岸</option>
<option value="2349">&nbsp;|--阿拉尔市</option>
<option value="2350">&nbsp;|--图木舒克市</option>
<option value="2351">&nbsp;|--乌鲁木齐市</option>
<option value="2367">&nbsp;&nbsp;|--天山区</option>
<option value="2368">&nbsp;&nbsp;|--头屯河区</option>
<option value="2369">&nbsp;&nbsp;|--达坂城区</option>
<option value="2370">&nbsp;&nbsp;|--米东区</option>
<option value="2371">&nbsp;&nbsp;|--新市区</option>
<option value="2372">&nbsp;&nbsp;|--沙依巴克区</option>
<option value="2373">&nbsp;&nbsp;|--水磨沟区</option>
<option value="2374">&nbsp;&nbsp;|--乌鲁木齐县</option>
<option value="2352">&nbsp;|--克拉玛依市</option>
<option value="2375">&nbsp;&nbsp;|--克拉玛依区</option>
<option value="2376">&nbsp;&nbsp;|--独山子区</option>
<option value="2377">&nbsp;&nbsp;|--乌尔禾区</option>
<option value="2378">&nbsp;&nbsp;|--白碱滩区</option>
<option value="2353">&nbsp;|--石河子市</option>
<option value="2354">&nbsp;|--吐鲁番地区</option>
<option value="2379">&nbsp;&nbsp;|--吐鲁番市</option>
<option value="2380">&nbsp;&nbsp;|--托克逊县</option>
<option value="2381">&nbsp;&nbsp;|--鄯善县</option>
<option value="2355">&nbsp;|--哈密地区</option>
<option value="2382">&nbsp;&nbsp;|--哈密市</option>
<option value="2383">&nbsp;&nbsp;|--巴里坤县</option>
<option value="2384">&nbsp;&nbsp;|--伊吾县</option>
<option value="2356">&nbsp;|--和田地区</option>
<option value="2385">&nbsp;&nbsp;|--和田县</option>
<option value="2386">&nbsp;&nbsp;|--和田市</option>
<option value="2387">&nbsp;&nbsp;|--墨玉县</option>
<option value="2388">&nbsp;&nbsp;|--洛浦县</option>
<option value="2389">&nbsp;&nbsp;|--策勒县</option>
<option value="2390">&nbsp;&nbsp;|--于田县</option>
<option value="2391">&nbsp;&nbsp;|--民丰县</option>
<option value="2392">&nbsp;&nbsp;|--皮山县</option>
<option value="42">海南省</option>
<option value="1574">&nbsp;|--三亚市</option>
<option value="1627">&nbsp;|--琼中县</option>
<option value="1631">&nbsp;|--陵水县</option>
<option value="1635">&nbsp;|--保亭县</option>
<option value="1640">&nbsp;|--乐东县</option>
<option value="1642">&nbsp;|--三沙市</option>
<option value="1644">&nbsp;|--海口市</option>
<option value="1649">&nbsp;|--琼海市</option>
<option value="1652">&nbsp;|--万宁市</option>
<option value="1656">&nbsp;|--东方市</option>
<option value="1667">&nbsp;|--儋州市</option>
<option value="1575">&nbsp;|--文昌市</option>
<option value="1599">&nbsp;|--五指山市</option>
<option value="1605">&nbsp;|--临高县</option>
<option value="1609">&nbsp;|--澄迈县</option>
<option value="1613">&nbsp;|--定安县</option>
<option value="1616">&nbsp;|--屯昌县</option>
<option value="1619">&nbsp;|--昌江县</option>
<option value="1622">&nbsp;|--白沙县</option>
<option value="3421">宁夏</option>
<option value="3522">&nbsp;|--银川市</option>
<option value="3523">&nbsp;|--石嘴山市</option>
<option value="3524">&nbsp;|--吴忠市</option>
<option value="3525">&nbsp;|--固原市</option>
<option value="3526">&nbsp;|--中卫市</option>
<option value="3408">安徽省</option>
<option value="3527">&nbsp;|--黄山市</option>
<option value="3536">&nbsp;|--合肥市</option>
<option value="3537">&nbsp;|--淮南市</option>
<option value="3538">&nbsp;|--淮北市</option>
<option value="3539">&nbsp;|--芜湖市</option>
<option value="3540">&nbsp;|--蚌埠市</option>
<option value="3541">&nbsp;|--马鞍山市</option>
<option value="3542">&nbsp;|--安庆市</option>
<option value="3528">&nbsp;|--滁州市</option>
<option value="3529">&nbsp;|--阜阳市</option>
<option value="3530">&nbsp;|--亳州市</option>
<option value="3531">&nbsp;|--宿州市</option>
<option value="3532">&nbsp;|--池州市</option>
<option value="3533">&nbsp;|--六安市</option>
<option value="3534">&nbsp;|--宣城市</option>
<option value="3535">&nbsp;|--铜陵市</option>
<option value="3409">浙江省</option>
<option value="3543">&nbsp;|--宁波市</option>
<option value="3552">&nbsp;|--绍兴市</option>
<option value="3553">&nbsp;|--金华市</option>
<option value="3544">&nbsp;|--衢州市</option>
<option value="3545">&nbsp;|--丽水市</option>
<option value="3546">&nbsp;|--台州市</option>
<option value="3547">&nbsp;|--舟山市</option>
<option value="3548">&nbsp;|--杭州市</option>
<option value="3549">&nbsp;|--温州市</option>
<option value="3550">&nbsp;|--嘉兴市</option>
<option value="3551">&nbsp;|--湖州市</option>
<option value="7">山西省</option>
<option value="3422">&nbsp;|--太原市</option>
<option value="3431">&nbsp;|--运城市</option>
<option value="3432">&nbsp;|--长治市</option>
<option value="3423">&nbsp;|--大同市</option>
<option value="3424">&nbsp;|--阳泉市</option>
<option value="3425">&nbsp;|--晋城市</option>
<option value="3426">&nbsp;|--朔州市</option>
<option value="3427">&nbsp;|--晋中市</option>
<option value="3428">&nbsp;|--忻州市</option>
<option value="3429">&nbsp;|--吕梁市</option>
<option value="3430">&nbsp;|--临汾市</option>
<option value="3410">福建省</option>
<option value="3554">&nbsp;|--福州市</option>
<option value="3555">&nbsp;|--厦门市</option>
<option value="3556">&nbsp;|--三明市</option>
<option value="3557">&nbsp;|--莆田市</option>
<option value="3558">&nbsp;|--泉州市</option>
<option value="3559">&nbsp;|--漳州市</option>
<option value="3560">&nbsp;|--南平市</option>
<option value="3561">&nbsp;|--龙岩市</option>
<option value="3562">&nbsp;|--宁德市</option>
<option value="3411">湖北省</option>
<option value="3563">&nbsp;|--孝感市</option>
<option value="3572">&nbsp;|--襄阳市</option>
<option value="3573">&nbsp;|--十堰市</option>
<option value="3574">&nbsp;|--荆州市</option>
<option value="3575">&nbsp;|--宜昌市</option>
<option value="3576">&nbsp;|--潜江市</option>
<option value="3577">&nbsp;|--天门市</option>
<option value="3578">&nbsp;|--仙桃市</option>
<option value="3564">&nbsp;|--黄冈市</option>
<option value="3565">&nbsp;|--咸宁市</option>
<option value="3566">&nbsp;|--恩施州</option>
<option value="3567">&nbsp;|--鄂州市</option>
<option value="3568">&nbsp;|--荆门市</option>
<option value="3569">&nbsp;|--随州市</option>
<option value="3570">&nbsp;|--武汉市</option>
<option value="3571">&nbsp;|--黄石市</option>
<option value="3412">湖南省</option>
<option value="3579">&nbsp;|--长沙市</option>
<option value="3588">&nbsp;|--益阳市</option>
<option value="3589">&nbsp;|--永州市</option>
<option value="3590">&nbsp;|--怀化市</option>
<option value="3591">&nbsp;|--娄底市</option>
<option value="3592">&nbsp;|--湘西州</option>
<option value="3580">&nbsp;|--株洲市</option>
<option value="3581">&nbsp;|--湘潭市</option>
<option value="3582">&nbsp;|--衡阳市</option>
<option value="3583">&nbsp;|--邵阳市</option>
<option value="3584">&nbsp;|--岳阳市</option>
<option value="3585">&nbsp;|--常德市</option>
<option value="3586">&nbsp;|--张家界市</option>
<option value="3587">&nbsp;|--郴州市</option>
<option value="3413">广东省</option>
<option value="3593">&nbsp;|--广州市</option>
<option value="3602">&nbsp;|--汕尾市</option>
<option value="3603">&nbsp;|--东莞市</option>
<option value="3604">&nbsp;|--中山市</option>
<option value="3605">&nbsp;|--江门市</option>
<option value="3606">&nbsp;|--佛山市</option>
<option value="3607">&nbsp;|--阳江市</option>
<option value="3608">&nbsp;|--湛江市</option>
<option value="3609">&nbsp;|--茂名市</option>
<option value="3610">&nbsp;|--肇庆市</option>
<option value="3611">&nbsp;|--云浮市</option>
<option value="3594">&nbsp;|--深圳市</option>
<option value="3612">&nbsp;|--清远市</option>
<option value="3613">&nbsp;|--潮州市</option>
<option value="3595">&nbsp;|--珠海市</option>
<option value="3596">&nbsp;|--汕头市</option>
<option value="3597">&nbsp;|--韶关市</option>
<option value="3598">&nbsp;|--河源市</option>
<option value="3599">&nbsp;|--梅州市</option>
<option value="3600">&nbsp;|--揭阳市</option>
<option value="3601">&nbsp;|--惠州市</option>
<option value="3414">广西省</option>
<option value="3614">&nbsp;|--崇左市</option>
<option value="3623">&nbsp;|--玉林市</option>
<option value="3624">&nbsp;|--贺州市</option>
<option value="3625">&nbsp;|--百色市</option>
<option value="3626">&nbsp;|--河池市</option>
<option value="3627">&nbsp;|--来宾市</option>
<option value="3615">&nbsp;|--南宁市</option>
<option value="3616">&nbsp;|--柳州市</option>
<option value="3617">&nbsp;|--桂林市</option>
<option value="3618">&nbsp;|--梧州市</option>
<option value="3619">&nbsp;|--北海市</option>
<option value="3620">&nbsp;|--防城港市</option>
<option value="3621">&nbsp;|--钦州市</option>
<option value="3622">&nbsp;|--贵港市</option>
<option value="3415">江西省</option>
<option value="3628">&nbsp;|--南昌市</option>
<option value="3637">&nbsp;|--吉安市</option>
<option value="3638">&nbsp;|--赣州市</option>
<option value="3629">&nbsp;|--景德镇市</option>
<option value="3630">&nbsp;|--萍乡市</option>
<option value="3631">&nbsp;|--新余市</option>
<option value="3632">&nbsp;|--九江市</option>
<option value="3633">&nbsp;|--鹰潭市</option>
<option value="3634">&nbsp;|--上饶市</option>
<option value="3635">&nbsp;|--宜春市</option>
<option value="3636">&nbsp;|--抚州市</option>
<option value="3416">四川省</option>
<option value="3639">&nbsp;|--凉山州</option>
<option value="3648">&nbsp;|--内江市</option>
<option value="3649">&nbsp;|--乐山市</option>
<option value="3650">&nbsp;|--宜宾市</option>
<option value="3651">&nbsp;|--广安市</option>
<option value="3652">&nbsp;|--南充市</option>
<option value="3653">&nbsp;|--达州市</option>
<option value="3654">&nbsp;|--巴中市</option>
<option value="3655">&nbsp;|--雅安市</option>
<option value="3656">&nbsp;|--眉山市</option>
<option value="3657">&nbsp;|--资阳市</option>
<option value="3640">&nbsp;|--成都市</option>
<option value="3658">&nbsp;|--阿坝州</option>
<option value="3659">&nbsp;|--甘孜州</option>
<option value="3641">&nbsp;|--自贡市</option>
<option value="3642">&nbsp;|--攀枝花市</option>
<option value="3643">&nbsp;|--泸州市</option>
<option value="3644">&nbsp;|--绵阳市</option>
<option value="3645">&nbsp;|--德阳市</option>
<option value="3646">&nbsp;|--广元市</option>
<option value="3647">&nbsp;|--遂宁市</option>
<option value="3417">贵州省</option>
<option value="3660">&nbsp;|--贵阳市</option>
<option value="3661">&nbsp;|--六盘水市</option>
<option value="3662">&nbsp;|--遵义市</option>
<option value="3663">&nbsp;|--铜仁市</option>
<option value="3664">&nbsp;|--毕节市</option>
<option value="3665">&nbsp;|--安顺市</option>
<option value="3666">&nbsp;|--黔西南州</option>
<option value="3667">&nbsp;|--黔东南州</option>
<option value="3668">&nbsp;|--黔南州</option>
<option value="3418">陕西省</option>
<option value="3669">&nbsp;|--延安市</option>
<option value="3678">&nbsp;|--渭南市</option>
<option value="3670">&nbsp;|--汉中市</option>
<option value="3671">&nbsp;|--榆林市</option>
<option value="3672">&nbsp;|--商洛市</option>
<option value="3673">&nbsp;|--安康市</option>
<option value="3674">&nbsp;|--西安市</option>
<option value="3675">&nbsp;|--铜川市</option>
<option value="3676">&nbsp;|--宝鸡市</option>
<option value="3677">&nbsp;|--咸阳市</option>
<option value="3419">甘肃省</option>
<option value="3679">&nbsp;|--庆阳市</option>
<option value="3688">&nbsp;|--金昌市</option>
<option value="3689">&nbsp;|--白银市</option>
<option value="3690">&nbsp;|--天水市</option>
<option value="3691">&nbsp;|--嘉峪关市</option>
<option value="3692">&nbsp;|--平凉市</option>
<option value="3680">&nbsp;|--陇南市</option>
<option value="3681">&nbsp;|--武威市</option>
<option value="3682">&nbsp;|--张掖市</option>
<option value="3683">&nbsp;|--酒泉市</option>
<option value="3684">&nbsp;|--甘南州</option>
<option value="3685">&nbsp;|--临夏州</option>
<option value="3686">&nbsp;|--定西市</option>
<option value="3687">&nbsp;|--兰州市</option>
<option value="20">北京市</option>
<option value="611">&nbsp;|--朝阳区</option>
<option value="620">&nbsp;|--房山区</option>
<option value="621">&nbsp;|--通州区</option>
<option value="622">&nbsp;|--大兴区</option>
<option value="623">&nbsp;|--顺义区</option>
<option value="624">&nbsp;|--怀柔区</option>
<option value="625">&nbsp;|--密云区</option>
<option value="626">&nbsp;|--昌平区</option>
<option value="627">&nbsp;|--平谷区</option>
<option value="628">&nbsp;|--延庆县</option>
<option value="612">&nbsp;|--海淀区</option>
<option value="613">&nbsp;|--西城区</option>
<option value="614">&nbsp;|--东城区</option>
<option value="615">&nbsp;|--崇文区</option>
<option value="616">&nbsp;|--宣武区</option>
<option value="617">&nbsp;|--丰台区</option>
<option value="618">&nbsp;|--石景山区</option>
<option value="619">&nbsp;|--门头沟</option>
<option value="3420">青海</option>
<option value="3693">&nbsp;|--西宁市</option>
<option value="3694">&nbsp;|--海东地区</option>
<option value="3695">&nbsp;|--海北州</option>
<option value="3696">&nbsp;|--黄南州</option>
<option value="3697">&nbsp;|--海南州</option>
<option value="3698">&nbsp;|--果洛州</option>
<option value="3699">&nbsp;|--玉树州</option>
<option value="3700">&nbsp;|--海西州</option>
<option value="39">西藏</option>
<option value="2066">&nbsp;|--阿里地区</option>
<option value="2073">&nbsp;&nbsp;|--普兰县</option>
<option value="2074">&nbsp;&nbsp;|--噶尔县</option>
<option value="2075">&nbsp;&nbsp;|--札达县　</option>
<option value="2076">&nbsp;&nbsp;|--日土县</option>
<option value="2077">&nbsp;&nbsp;|--革吉县</option>
<option value="2078">&nbsp;&nbsp;|--改则县</option>
<option value="2079">&nbsp;&nbsp;|--措勤县</option>
<option value="2067">&nbsp;|--林芝地区</option>
<option value="2080">&nbsp;&nbsp;|--林芝县</option>
<option value="2081">&nbsp;&nbsp;|--工布江达县</option>
<option value="2082">&nbsp;&nbsp;|--米林县</option>
<option value="2083">&nbsp;&nbsp;|--墨脱县</option>
<option value="2084">&nbsp;&nbsp;|--波密县</option>
<option value="2085">&nbsp;&nbsp;|--察隅县</option>
<option value="2086">&nbsp;&nbsp;|--朗县</option>
<option value="2068">&nbsp;|--拉萨市</option>
<option value="2087">&nbsp;&nbsp;|--城关区</option>
<option value="2088">&nbsp;&nbsp;|--林周县</option>
<option value="2089">&nbsp;&nbsp;|--当雄县</option>
<option value="2090">&nbsp;&nbsp;|--尼木县</option>
<option value="2091">&nbsp;&nbsp;|--曲水县</option>
<option value="2092">&nbsp;&nbsp;|--堆龙德庆县</option>
<option value="2111">&nbsp;&nbsp;|--达孜县</option>
<option value="2112">&nbsp;&nbsp;|--墨竹工卡县</option>
<option value="2069">&nbsp;|--那曲地区</option>
<option value="2113">&nbsp;&nbsp;|--双湖县</option>
<option value="2131">&nbsp;&nbsp;|--巴青县</option>
<option value="2133">&nbsp;&nbsp;|--尼玛县</option>
<option value="2114">&nbsp;&nbsp;|--索县</option>
<option value="2115">&nbsp;&nbsp;|--那曲县</option>
<option value="2116">&nbsp;&nbsp;|--嘉黎县</option>
<option value="2117">&nbsp;&nbsp;|--比如县</option>
<option value="2119">&nbsp;&nbsp;|--聂荣县</option>
<option value="2122">&nbsp;&nbsp;|--安多县</option>
<option value="2125">&nbsp;&nbsp;|--申扎县</option>
<option value="2128">&nbsp;&nbsp;|--班戈县</option>
<option value="2070">&nbsp;|--山南地区</option>
<option value="2135">&nbsp;&nbsp;|--贡嘎县</option>
<option value="2439">&nbsp;&nbsp;|--隆子县</option>
<option value="2441">&nbsp;&nbsp;|--错那县</option>
<option value="2443">&nbsp;&nbsp;|--浪卡子县</option>
<option value="2138">&nbsp;&nbsp;|--扎囊县</option>
<option value="2426">&nbsp;&nbsp;|--乃东县</option>
<option value="2428">&nbsp;&nbsp;|--桑日县</option>
<option value="2429">&nbsp;&nbsp;|--琼结县</option>
<option value="2430">&nbsp;&nbsp;|--曲松县</option>
<option value="2431">&nbsp;&nbsp;|--措美县</option>
<option value="2434">&nbsp;&nbsp;|--洛扎县</option>
<option value="2436">&nbsp;&nbsp;|--加查县</option>
<option value="2071">&nbsp;|--昌都地区</option>
<option value="2444">&nbsp;&nbsp;|--昌都县</option>
<option value="2459">&nbsp;&nbsp;|--洛隆县</option>
<option value="2462">&nbsp;&nbsp;|--边坝县</option>
<option value="2445">&nbsp;&nbsp;|--江达县</option>
<option value="2446">&nbsp;&nbsp;|--贡觉县</option>
<option value="2447">&nbsp;&nbsp;|--类乌齐县</option>
<option value="2448">&nbsp;&nbsp;|--丁青县</option>
<option value="2450">&nbsp;&nbsp;|--察雅县</option>
<option value="2452">&nbsp;&nbsp;|--八宿县</option>
<option value="2455">&nbsp;&nbsp;|--左贡县</option>
<option value="2456">&nbsp;&nbsp;|--芒康县</option>
<option value="2072">&nbsp;|--日喀则地区</option>
<option value="2469">&nbsp;&nbsp;|--聂拉木县</option>
<option value="2510">&nbsp;&nbsp;|--仁布县</option>
<option value="2511">&nbsp;&nbsp;|--康马县</option>
<option value="2512">&nbsp;&nbsp;|--定结县</option>
<option value="2513">&nbsp;&nbsp;|--仲巴县</option>
<option value="2514">&nbsp;&nbsp;|--亚东县</option>
<option value="2515">&nbsp;&nbsp;|--吉隆县</option>
<option value="2516">&nbsp;&nbsp;|--萨嘎县</option>
<option value="2517">&nbsp;&nbsp;|--岗巴县</option>
<option value="2473">&nbsp;&nbsp;|--昂仁县</option>
<option value="2479">&nbsp;&nbsp;|--日喀则市</option>
<option value="2482">&nbsp;&nbsp;|--南木林县</option>
<option value="2486">&nbsp;&nbsp;|--江孜县</option>
<option value="2489">&nbsp;&nbsp;|--定日县</option>
<option value="2498">&nbsp;&nbsp;|--萨迦县</option>
<option value="2500">&nbsp;&nbsp;|--拉孜县</option>
<option value="2505">&nbsp;&nbsp;|--谢通门县</option>
<option value="21">天津市</option>
<option value="593">&nbsp;|--东丽区</option>
<option value="602">&nbsp;|--塘沽区</option>
<option value="603">&nbsp;|--西青区</option>
<option value="604">&nbsp;|--武清区</option>
<option value="605">&nbsp;|--津南区</option>
<option value="606">&nbsp;|--汉沽区</option>
<option value="607">&nbsp;|--大港区</option>
<option value="608">&nbsp;|--北辰区</option>
<option value="609">&nbsp;|--宝坻区</option>
<option value="610">&nbsp;|--宁河县</option>
<option value="594">&nbsp;|--和平区</option>
<option value="595">&nbsp;|--河北区</option>
<option value="596">&nbsp;|--河东区</option>
<option value="597">&nbsp;|--河西区</option>
<option value="598">&nbsp;|--红桥区</option>
<option value="599">&nbsp;|--蓟县</option>
<option value="600">&nbsp;|--静海县</option>
<option value="601">&nbsp;|--南开区</option>
<option value="22">上海市</option>
<option value="576">&nbsp;|--徐汇区</option>
<option value="585">&nbsp;|--浦东新区</option>
<option value="586">&nbsp;|--青浦区</option>
<option value="587">&nbsp;|--松江区</option>
<option value="588">&nbsp;|--金山区</option>
<option value="589">&nbsp;|--奉贤区</option>
<option value="590">&nbsp;|--普陀区</option>
<option value="591">&nbsp;|--崇明县</option>
<option value="592">&nbsp;|--黄浦区</option>
<option value="577">&nbsp;|--长宁区</option>
<option value="578">&nbsp;|--静安区</option>
<option value="579">&nbsp;|--闸北区</option>
<option value="580">&nbsp;|--虹口区</option>
<option value="581">&nbsp;|--杨浦区</option>
<option value="582">&nbsp;|--宝山区</option>
<option value="583">&nbsp;|--闵行区</option>
<option value="584">&nbsp;|--嘉定区</option>
<option value="3401">河北省</option>
<option value="3433">&nbsp;|--石家庄市</option>
<option value="3442">&nbsp;|--廊坊市</option>
<option value="3443">&nbsp;|--衡水市</option>
<option value="3434">&nbsp;|--邯郸市</option>
<option value="3435">&nbsp;|--邢台市</option>
<option value="3436">&nbsp;|--保定市</option>
<option value="3437">&nbsp;|--张家口市</option>
<option value="3438">&nbsp;|--承德市</option>
<option value="3439">&nbsp;|--秦皇岛市</option>
<option value="3440">&nbsp;|--唐山市</option>
<option value="3441">&nbsp;|--沧州市</option>
<option value="3402">辽宁省</option>
<option value="3444">&nbsp;|--沈阳市</option>
<option value="3453">&nbsp;|--盘锦市</option>
<option value="3454">&nbsp;|--阜新市</option>
<option value="3455">&nbsp;|--辽阳市</option>
<option value="3456">&nbsp;|--朝阳市</option>
<option value="3457">&nbsp;|--铁岭市</option>
<option value="3445">&nbsp;|--大连市</option>
<option value="3446">&nbsp;|--鞍山市</option>
<option value="3447">&nbsp;|--抚顺市</option>
<option value="3448">&nbsp;|--本溪市</option>
<option value="3449">&nbsp;|--丹东市</option>
<option value="3450">&nbsp;|--锦州市</option>
<option value="3451">&nbsp;|--葫芦岛市</option>
<option value="3452">&nbsp;|--营口市</option>
<option value="23">重庆市</option>
<option value="536">&nbsp;|--万州区</option>
<option value="545">&nbsp;|--奉节县</option>
<option value="546">&nbsp;|--开县</option>
<option value="547">&nbsp;|--云阳县</option>
<option value="548">&nbsp;|--忠县</option>
<option value="549">&nbsp;|--巫溪县</option>
<option value="550">&nbsp;|--巫山县</option>
<option value="551">&nbsp;|--石柱县</option>
<option value="552">&nbsp;|--彭水县</option>
<option value="553">&nbsp;|--垫江县</option>
<option value="554">&nbsp;|--酉阳县</option>
<option value="537">&nbsp;|--涪陵区</option>
<option value="555">&nbsp;|--秀山县</option>
<option value="556">&nbsp;|--璧山县</option>
<option value="557">&nbsp;|--荣昌县</option>
<option value="558">&nbsp;|--铜梁县</option>
<option value="559">&nbsp;|--合川区</option>
<option value="560">&nbsp;|--巴南区</option>
<option value="561">&nbsp;|--北碚区</option>
<option value="562">&nbsp;|--江津区</option>
<option value="563">&nbsp;|--渝北区</option>
<option value="564">&nbsp;|--长寿区</option>
<option value="538">&nbsp;|--梁平县</option>
<option value="565">&nbsp;|--永川区</option>
<option value="566">&nbsp;|--江北区</option>
<option value="567">&nbsp;|--南岸区</option>
<option value="568">&nbsp;|--九龙坡区</option>
<option value="569">&nbsp;|--沙坪坝区</option>
<option value="570">&nbsp;|--大渡口区</option>
<option value="571">&nbsp;|--綦江区</option>
<option value="572">&nbsp;|--渝中区</option>
<option value="573">&nbsp;|--高新区</option>
<option value="574">&nbsp;|--北部新区</option>
<option value="539">&nbsp;|--南川区</option>
<option value="575">&nbsp;|--城口县</option>
<option value="540">&nbsp;|--潼南县</option>
<option value="541">&nbsp;|--大足区</option>
<option value="542">&nbsp;|--黔江区</option>
<option value="543">&nbsp;|--武隆县</option>
<option value="544">&nbsp;|--丰都县</option>
<option value="24">云南省</option>
<option value="391">&nbsp;|--迪庆州</option>
<option value="400">&nbsp;|--文山州</option>
<option value="481">&nbsp;&nbsp;|--文山市</option>
<option value="482">&nbsp;&nbsp;|--麻栗坡县</option>
<option value="483">&nbsp;&nbsp;|--砚山县</option>
<option value="484">&nbsp;&nbsp;|--广南县</option>
<option value="485">&nbsp;&nbsp;|--马关县</option>
<option value="486">&nbsp;&nbsp;|--富宁县</option>
<option value="487">&nbsp;&nbsp;|--西畴县</option>
<option value="488">&nbsp;&nbsp;|--丘北县</option>
<option value="401">&nbsp;|--红河州</option>
<option value="489">&nbsp;&nbsp;|--个旧市</option>
<option value="498">&nbsp;&nbsp;|--石屏县</option>
<option value="499">&nbsp;&nbsp;|--金平县</option>
<option value="500">&nbsp;&nbsp;|--屏边县</option>
<option value="501">&nbsp;&nbsp;|--河口县</option>
<option value="490">&nbsp;&nbsp;|--开远市</option>
<option value="491">&nbsp;&nbsp;|--弥勒县</option>
<option value="492">&nbsp;&nbsp;|--红河县</option>
<option value="493">&nbsp;&nbsp;|--绿春县</option>
<option value="494">&nbsp;&nbsp;|--蒙自市</option>
<option value="495">&nbsp;&nbsp;|--泸西县</option>
<option value="496">&nbsp;&nbsp;|--建水县</option>
<option value="497">&nbsp;&nbsp;|--元阳县</option>
<option value="402">&nbsp;|--西双版纳州</option>
<option value="502">&nbsp;&nbsp;|--景洪市</option>
<option value="503">&nbsp;&nbsp;|--勐海县</option>
<option value="504">&nbsp;&nbsp;|--勐腊县</option>
<option value="403">&nbsp;|--楚雄州</option>
<option value="505">&nbsp;&nbsp;|--元谋县</option>
<option value="514">&nbsp;&nbsp;|--楚雄市</option>
<option value="506">&nbsp;&nbsp;|--南华县</option>
<option value="507">&nbsp;&nbsp;|--牟定县</option>
<option value="508">&nbsp;&nbsp;|--武定县</option>
<option value="509">&nbsp;&nbsp;|--大姚县</option>
<option value="510">&nbsp;&nbsp;|--双柏县</option>
<option value="511">&nbsp;&nbsp;|--禄丰县</option>
<option value="512">&nbsp;&nbsp;|--永仁县</option>
<option value="513">&nbsp;&nbsp;|--姚安县</option>
<option value="404">&nbsp;|--大理州</option>
<option value="515">&nbsp;&nbsp;|--剑川县</option>
<option value="524">&nbsp;&nbsp;|--漾濞县</option>
<option value="525">&nbsp;&nbsp;|--南涧县</option>
<option value="526">&nbsp;&nbsp;|--大理市</option>
<option value="516">&nbsp;&nbsp;|--弥渡县</option>
<option value="517">&nbsp;&nbsp;|--云龙县</option>
<option value="518">&nbsp;&nbsp;|--洱源县</option>
<option value="519">&nbsp;&nbsp;|--鹤庆县</option>
<option value="520">&nbsp;&nbsp;|--宾川县</option>
<option value="521">&nbsp;&nbsp;|--祥云县</option>
<option value="522">&nbsp;&nbsp;|--永平县</option>
<option value="523">&nbsp;&nbsp;|--巍山县</option>
<option value="405">&nbsp;|--德宏州</option>
<option value="527">&nbsp;&nbsp;|--芒市</option>
<option value="528">&nbsp;&nbsp;|--瑞丽市</option>
<option value="529">&nbsp;&nbsp;|--盈江县</option>
<option value="530">&nbsp;&nbsp;|--梁河县</option>
<option value="531">&nbsp;&nbsp;|--陇川县</option>
<option value="406">&nbsp;|--怒江州</option>
<option value="532">&nbsp;&nbsp;|--泸水县</option>
<option value="533">&nbsp;&nbsp;|--福贡县</option>
<option value="534">&nbsp;&nbsp;|--兰坪县</option>
<option value="535">&nbsp;&nbsp;|--贡山县</option>
<option value="392">&nbsp;|--昆明市</option>
<option value="410">&nbsp;&nbsp;|--盘龙区</option>
<option value="419">&nbsp;&nbsp;|--晋宁县</option>
<option value="420">&nbsp;&nbsp;|--宜良县</option>
<option value="421">&nbsp;&nbsp;|--禄劝县</option>
<option value="422">&nbsp;&nbsp;|--石林县</option>
<option value="423">&nbsp;&nbsp;|--寻甸县</option>
<option value="411">&nbsp;&nbsp;|--五华区</option>
<option value="412">&nbsp;&nbsp;|--西山区</option>
<option value="413">&nbsp;&nbsp;|--官渡区</option>
<option value="414">&nbsp;&nbsp;|--呈贡区</option>
<option value="415">&nbsp;&nbsp;|--东川区</option>
<option value="416">&nbsp;&nbsp;|--安宁市</option>
<option value="417">&nbsp;&nbsp;|--富民县</option>
<option value="418">&nbsp;&nbsp;|--嵩明县</option>
<option value="393">&nbsp;|--曲靖市</option>
<option value="424">&nbsp;&nbsp;|--麒麟区</option>
<option value="425">&nbsp;&nbsp;|--马龙县</option>
<option value="426">&nbsp;&nbsp;|--宣威市</option>
<option value="427">&nbsp;&nbsp;|--富源县</option>
<option value="428">&nbsp;&nbsp;|--会泽县</option>
<option value="429">&nbsp;&nbsp;|--陆良县</option>
<option value="430">&nbsp;&nbsp;|--师宗县</option>
<option value="431">&nbsp;&nbsp;|--罗平县</option>
<option value="432">&nbsp;&nbsp;|--沾益县</option>
<option value="394">&nbsp;|--玉溪市</option>
<option value="433">&nbsp;&nbsp;|--红塔区</option>
<option value="434">&nbsp;&nbsp;|--华宁县</option>
<option value="435">&nbsp;&nbsp;|--澄江县</option>
<option value="436">&nbsp;&nbsp;|--易门县</option>
<option value="437">&nbsp;&nbsp;|--通海县</option>
<option value="438">&nbsp;&nbsp;|--江川县</option>
<option value="439">&nbsp;&nbsp;|--元江县</option>
<option value="440">&nbsp;&nbsp;|--新平县</option>
<option value="441">&nbsp;&nbsp;|--峨山县</option>
<option value="395">&nbsp;|--昭通市</option>
<option value="442">&nbsp;&nbsp;|--鲁甸县</option>
<option value="451">&nbsp;&nbsp;|--巧家县</option>
<option value="452">&nbsp;&nbsp;|--威信县</option>
<option value="443">&nbsp;&nbsp;|--绥江县</option>
<option value="444">&nbsp;&nbsp;|--昭阳区</option>
<option value="445">&nbsp;&nbsp;|--镇雄县</option>
<option value="446">&nbsp;&nbsp;|--永善县</option>
<option value="447">&nbsp;&nbsp;|--大关县</option>
<option value="448">&nbsp;&nbsp;|--盐津县</option>
<option value="449">&nbsp;&nbsp;|--彝良县</option>
<option value="450">&nbsp;&nbsp;|--水富县</option>
<option value="396">&nbsp;|--普洱市</option>
<option value="453">&nbsp;&nbsp;|--孟连县</option>
<option value="462">&nbsp;&nbsp;|--江城县</option>
<option value="454">&nbsp;&nbsp;|--思茅区</option>
<option value="455">&nbsp;&nbsp;|--宁洱县</option>
<option value="456">&nbsp;&nbsp;|--景东县</option>
<option value="457">&nbsp;&nbsp;|--镇沅县</option>
<option value="458">&nbsp;&nbsp;|--景谷县</option>
<option value="459">&nbsp;&nbsp;|--墨江县</option>
<option value="460">&nbsp;&nbsp;|--澜沧县</option>
<option value="461">&nbsp;&nbsp;|--西盟县</option>
<option value="397">&nbsp;|--临沧市</option>
<option value="463">&nbsp;&nbsp;|--双江县</option>
<option value="464">&nbsp;&nbsp;|--沧源县</option>
<option value="465">&nbsp;&nbsp;|--临翔区</option>
<option value="466">&nbsp;&nbsp;|--镇康县</option>
<option value="467">&nbsp;&nbsp;|--凤庆县</option>
<option value="468">&nbsp;&nbsp;|--云县</option>
<option value="469">&nbsp;&nbsp;|--永德县</option>
<option value="470">&nbsp;&nbsp;|--耿马县</option>
<option value="398">&nbsp;|--保山市</option>
<option value="471">&nbsp;&nbsp;|--隆阳区</option>
<option value="472">&nbsp;&nbsp;|--施甸县</option>
<option value="473">&nbsp;&nbsp;|--昌宁县</option>
<option value="474">&nbsp;&nbsp;|--龙陵县</option>
<option value="475">&nbsp;&nbsp;|--腾冲县</option>
<option value="399">&nbsp;|--丽江市</option>
<option value="476">&nbsp;&nbsp;|--玉龙县</option>
<option value="477">&nbsp;&nbsp;|--华坪县</option>
<option value="478">&nbsp;&nbsp;|--永胜县</option>
<option value="479">&nbsp;&nbsp;|--宁蒗县</option>
<option value="480">&nbsp;&nbsp;|--古城区</option>
					</select>
					<input type="button" class="buttom search-but" value=" 查 询" onclick="doSearch();" title="以外协商名称、外协商、联系人名称拼音字头进行模糊查询">
					
					
					
					
					
						
							
						
					
					
						<input type="button" class="buttom search-add" value=" 新 增" onclick="doNew();" title="添加一个新外协商">
					
			</td>
            </tr>    
           </tbody>      
        </table>
      </div>
	  
<table width="98%" border="0" cellpadding="0" cellspacing="0">
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
				<th width="14"></th>
				<th width="12%">编号</th>
				<th width="26%">名称</th>
				<th width="12%">联系人</th>
				<th width="26%">备注</th>
				<th width="12%">经办人</th>
				<th width="12%">操作</th>
			</tr>
			
				
				<s:iterator value="businesses" status="indexs">
					<tr class="query_list_data_trSelected" index="1" style="cursor:pointer;" ondblclick="javascript:DoubleClick(this)" onclick="javascript:ClickCheck(this)" onmouseout="javascript:mouseout(this)" onmouseover="javascript:mouseover(this)">
						<td><input type="radio" name="query_checkbox" value="763" est_name="逐鹿问鼎" manager_id="61" manager_name="何盼盼" can_manage="N" phone="" addr="" linkman="风顺" lm_phone="15638922728" ba_name="" ba_acc_code="" ba_acc_name="" pm_id="0"></td>
						<td>${estCode }</td>
						<td>${estName }</td>
						<td>${linkman }</td>
						<td>${mark }</td>
						<td>${createrName }</td>
						<td>
							<a href="Business_toBusinessBegian?id=${id }">选择</a>
							<a href="javascript:doSelect(&#39;1&#39;,&#39;&#39;);">复制开单</a>
						</td>
					</tr>
				</s:iterator>
		</tbody>
		</table>
			
    <div class="table-bot">
    	
    	
    	 
    	  <img src="images/but001.gif">
    	  <img src="images/but002.gif">
    	    	
    	第 <input type="text" name="pageNumber" style="width:30px" value="1" onkeydown="javascript:doJump(this.value);" class="TextBox"> 页 
    	共1页
		
		
        <img src="images/but003.gif">
        <img src="images/but004.gif">
		
    </div>
      </div>
    </div>
  </div>
</div>

<div id="LoadProcess" style="position:absolute; left:50%;top:50%; width:200px; height:100px; margin-top:-50px;margin-left:-100px;z-index:1; border:solid #000 5px;background-color:White;display:none">
	<table border="0" align="center" style="height:100%;">
		<tbody><tr>
			<td style="valign:middle">
				<img src="images/loading.gif">
				请稍候...
			</td>
		</tr>
	</tbody></table>
</div>

