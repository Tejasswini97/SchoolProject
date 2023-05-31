<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body { margin: 0;}

body {
	background-image:
		url('./image/img2.jpg');
	background-repeat: no-repeat;
	/* Choose from 'repeat', 'repeat-x', 'repeat-y', or 'no-repeat' */
	background-size: 100% auto;
}
/* Style the header */
.header {
	background-color: grey;
	padding: 20px;
	text-align: center;
}


.c1{color: black;  font-size: 30px; }
.c2{color: black;  font-size: 30px; }

a:visited {
  color: green;
}

/* selected link */
a:active {
  color: blue;
}
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
		<h1>WELCOME TO STUDENT ADMISSION PAGE</h1>
	</div>
	<div style="margin-top: 60px; margin-left:10px;">
		<a id="i1" class="c1" href="admission.jsp">NEW ADMISSION</a><br /><br />
		 <a id="i2" class="c2" href="viewadmission"> ADMISSION LIST </a><br />
		 <a href="index.jsp" class="button">Home</a>
		<br />
	</div>
</body>
</html>