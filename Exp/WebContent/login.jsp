<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="valid" method="post">
	<h1>登录</h1>
	<table>
		<tr>
			<td>用户名：</td><td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：</td><td><input type="text" name="password"/></td>
		
		</tr>
		<tr align="center">
			<td colspan="2">
				<input type="submit" value="登录"/>
				<input type="reset" value="重置"/>
			</td>
		</tr>
	</table>
	<a href="register.jsp">新用户注册</a>
</form>
<s:fielderror/>
</body>
</html>