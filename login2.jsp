<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
</head>
<body>
	<a href="login.jsp">��¼</a>
	<a href="qichuqiankuan_DaoRu">����ͻ��ڳ�Ƿ���ɣ�</a>
		<a href="waixieqichuqiankuan_DaoRu">������Э�̳�Ƿ���ɣ�</a>
	<br>
	<hr>
	��-----------------�������ݣ��������� ------------------------��<br>
	<s:a action="moneybill_BankAccountUI"> �������񣨺�̨�����ƣ���ҳ�Ѽ��룩</s:a><br>
	<s:a action="incometype_IncomeTypeUI"> �����������ͣ���̨�����ƣ������ҳ��</s:a><br>
	<s:a action="feetype_FeeTypeUI"> ����������ͣ���̨������,�����ҳ��</s:a><br>
	<s:a action="estprice_EstPriceUI">����۸��ֲᣨ��̨�����ƣ�id����,��ҳ��ɣ�</s:a><br>
	<s:a action="place_listUI">��������(����δ���)</s:a><br>
	
		<br>
	��-----------------��Э�� ------------------------��<br>
	<s:a action="establishment_EstablishmentUI">������Э���ˣ�*��Ҫ��Э�̵Ǽǣ���ҳ��ɣ�(@����50%)</s:a><br>
	<s:a action="CooperAgaincheck_listUI?isCheck=1">��Э����ˣ�*�����������ˣ�</s:a><br>
	<s:a action="CooperAgaincheck_listUI?isCheck=0">��Э������ˣ�*�����������ˣ�</s:a><br>
	<s:a action="reciveingcheck_firstlistSelectUI">�ջ�����</s:a><br>
	<br>
	��-----------------����֧�� ------------------------��
	<br>
<%-- 	<s:a action="login.jsp">֧��</s:a><br> --%>
	<s:a action="fukuandan_Select">���ѡ��</s:a>
	<s:a action="paybill_findAll">���һ����,��ҳ���</s:a>
	<s:a action="feebillshenhe_findAll">���õ����,��ҳ���</s:a>
	<s:a action="feebillfanshenhe_findAll">���õ�����ˣ���ҳ���</s:a>
	<s:a action="paybillshenhe_findAll">������</s:a>
	<s:a action="paybillfanshenhe_findAll">��������</s:a>
	<s:a action="feiyongdanyidan_listUI">���õ�һ����</s:a>
	<s:a action="feiyongmingxiTable_listUI">������ϸһ����</s:a>
	<s:a action="wodefeiyongdan_listUI">�ҵķ��õ�</s:a>
	<hr>
	
	��-----------------��ͨ�� ------------------------��
	<br>
	<s:a action="messageSendAndReceive_toIndex">����Ϣ����̨�����ƣ������ϣ�</s:a>
	<s:a action="messageSendAndReceive_findAllMessageVOsAndReceiverDeleteIsN">�ռ��䣨��̨�����ƣ������ϣ�</s:a>
	<s:a action="messageSendAndReceive_findAllMessageVOsAndSendDeleteIsN">�����䣨��̨�����ƣ������ϣ�</s:a>
	<s:a action="business_listUI">ҵ��һ����</s:a><br>
	<hr>
		
	<hr>
	<!-- ����Ҫ��ӹ�Ӧ�� ����e���������� ��Ҫ�ĳ����� -->
	---------------�ɹ� ����Ӧ�̣�����--------------------------<br>
<%-- <s:a action="gongyingshang_dengjiUI">��Ӧ�̵Ǽ�</s:a><br> --%>
<%-- <s:a action="gongyingshang_yijiao">��Ӧ���ƽ�</s:a><br> --%>
<s:a action="gongyingshang_listUI">ȫ����Ӧ��</s:a>	<br>
<s:a action="caigoudanyilanbiao_findAll">�ɹ���һ����</s:a>
	<s:a action="caigoudanshenhe_findAll">�ɹ������</s:a>
	<s:a action="caigoudanfanshenhe_findAll">�ɹ��������</s:a>
	
	<s:a action="tuihuodanyilanbiao_findAll">�˻���һ����</s:a>
		<s:a action="tuihuodanshenhe_findAll">�˻������</s:a>
		<s:a action="tuihuodanfanshenhe_findAll">�˻��������</s:a>
	<s:a action="caigouhuizongbiao_findAll">��Ӧ�̲ɹ����ܱ�</s:a><br>
		<s:a action="caigouduizhang_findAll">�ɹ�����(������)~</s:a>
		<s:a action="caigoumingxi_findAll">�ɹ���ϸ��</s:a>
<s:a action="purchasecanleling_list">�ɹ�������</s:a><br>
<s:a action="tuikuancanleling_listtuikuan">�˿����</s:a><br>
		<hr>
----------------Ҫ������ҵ��-----------------------------<br>
	<s:a action="makebill_listUI">Ҫ������ҵ��</s:a><br>
	<s:a action="chanLiangRegister_listUI"> �����Ǽ�</s:a><br>
	<s:a action="ouputDetail_listUI"> �����Ƽ���ϸ��</s:a><br>
</body>
</html>