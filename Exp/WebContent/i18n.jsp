<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>国际化</title>
</head>
<body>
	<s:form action="reg" method="post">
		<s:textfield name="email" key="my.email"></s:textfield>
		<s:submit key="my.button" name=""></s:submit>
	</s:form>
</body>
</html>