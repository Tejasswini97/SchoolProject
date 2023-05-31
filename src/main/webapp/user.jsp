<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body { margin: 0;}
/* Style the header */
.header {
	background-color: grey;
	padding: 20px;
	text-align: center;
}
.button-login {background-color: green;color: white;font-size: 15px; button-align: center;}
.button {
	background-color: #4CAF50;
	border-radius: 12px;
	color: Black;
	padding: 10px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
<s:head />
</head>


<body>

	<div class="header">
		<h1> USER LOGIN PAGE</h1>
	</div>
	<div style="margin-top: 60px;">
		<s:form action="user">
			<s:textfield name="username" label="Enter Username" />
			<s:password name="password" label="Enter Password" />
			<s:password name="confirmPassword" label="Confirm Password"/>
			<s:submit cssClass="button-login" value="Login" />
		</s:form>
<a href="index" class="button">Home</a>
	</div>
</body>
</html>