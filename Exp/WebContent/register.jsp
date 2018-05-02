<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册</title>
</head>
<body>
<form action="reg" method="post">
	<h1>用户注册</h1>
	<table>
		<tr>
			<td>用户名：</td><td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>邮&nbsp;&nbsp;箱：</td><td><input type="text" name="email"/></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：</td><td><input type="text" name="password"/></td>
		
		</tr>
		<tr align="center">
			<td colspan="2">
				<input type="submit" value="注册"/>
			</td>
		</tr>
	</table>
</form>
<s:fielderror/>
</body>
</html>