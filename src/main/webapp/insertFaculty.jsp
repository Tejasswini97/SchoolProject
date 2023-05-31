<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<s:head />
<style type="text/css">
body { margin: 0;}
.header {background-color: grey; padding: 20px;text-align: center;}
.button-insert {background-color: green;color: white;font-size: 15px}
.button {
  background-color: #4CAF50;
  border-radius: 12px;
  color: Black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
</head>
<body>
<div class="header">
		<h1>WELCOME TO INSERT FACULTY DETAILS PAGE</h1>
	</div>
	<div style="margin-top: 60px;">
	
	<s:form action="Faculty" >
		<s:textfield label="Faculty Name" name="fname" />	
		<s:textfield label="Experience" name="experience" />
		<s:textfield label="Subject To Be Handeled" name="subject" />
		<s:submit cssClass="button-insert" value="Insert" />
		
	</s:form>
	<s:if test="ctr>0">
		<span style="color: green;"><s:property value="msg" /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value="msg" /></span>
	</s:else>
	<a href="welcome.jsp" class="button">Home</a>
	</div>
</body>
</html>