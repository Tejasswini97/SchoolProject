<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>
body { margin: 0;}
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<h2>Examination Result</h2>
	<div style="margin-top: 40px;">
	
	

		<table>


			<thead>
			
				<tr style="background-color: #E0E0E1;">
					<th>Student Id</th>
					<th>Student_name</th>
					<th>Total</th>
					<th>Percentage</th>

				</tr>
			</thead>
			
			
			<s:iterator value="beanList">
				<tr>
					<td><s:property value="studentid" /></td>
					<td><s:property value="studentname" /></td>
					<td><s:property value="total" /></td>
					<td><s:property value="percentage" /></td>



				</tr>
			</s:iterator>
		</table>
 
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>
		<a href="index"><button type="button">Home</button></a>
	</div>


</body>
</html>