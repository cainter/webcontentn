<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <!-- ʹ��struts2�ı�ǩ�� -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
    <s:form action="login" validate="false" namespace="/">
    	<br>
       <s:fielderror>
        <s:param>error</s:param>
       <s:param>loginVTO.userName</s:param>
       <s:param>loginVTO.passWord</s:param>
       </s:fielderror>
    	<s:textfield name="loginVTO.userName" key="login.form.field.username"/>
    	<s:textfield name="loginVTO.passWord" key="login.form.field.password" />
    	<s:submit key="login.form.button.login" name="login_submit"/>
    </s:form>
    <a href="UserRole_Demo">���ص�¼</a>
    <a href="UserRole_toIndex">��ҳ�������</a>
</body>
</html>