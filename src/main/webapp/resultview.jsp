<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>View Result</title>
<style>
body { margin: 0;}
/* Style the header */
.header {
	background-color: grey;
	padding: 20px;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 10px;
}

tr:nth-child(even) {
	background-color: #f2f2f9;
}

.button {
	background-color: #4CAF50;
	border-radius: 12px;
	color: Black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.pass {
	color: green;
}

.fail {
	color: red;
}

.distinction {
	color: green;
}
</style>

</head>
<body>
	<div class="header">
		<h1>WELCOME TO RESULT PAGE</h1>
	</div>
	<s:if test="hasActionErrors()">
		<s:actionerror />
	</s:if>
	<s:if test="studentName != null">

		<s:if test="percentage >= 30 && percentage<80">
			<h2 class="pass">Status: Pass</h2>
		</s:if>

		<s:if test="percentage >=80">
			<h2 class="distinction">Status: Distinction</h2>
		</s:if>
		
		<s:if test="percentage <= 30">
			<h2 class="fail">Status: Fail</h2>
		</s:if>
		
		<table>
			<tr>
				<th>Student ID:</th>

				<td><s:property value="studentId" /></td>
			</tr>
			<tr>
				<th>Student Name:</th>
				<td><s:property value="studentName" /></td>
			</tr>
			<tr>
				<th>Total:</th>
				<td><s:property value="total" /></td>
			</tr>
			<tr>
				<th>Percentage:</th>
				<td><s:property value="percentage" /></td>
			</tr>



		</table>

	</s:if>

</body>
</html>
