
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body { margin: 0;}

/* Style the header */
.header {background-color: grey; padding: 20px;text-align: center;}
/* Style the top navigation bar */
.topnav {overflow: hidden; background-color: #336;}
/* Style the topnav links */
.topnav a {float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.column {
  float: left;
  width: 30%;
  padding: 20px;
  
}
/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
  
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:600px) {
  .column {
    width: 100%;
  }
}
/* Style the footer */
.footer {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: right;
}
.c1{color: black; font-size: 30px;}
.c2{color: black; font-size: 30px;}
.c3{color: black; font-size: 30px;}

/* visited link */
a:visited {
  color: green;
}

/* selected link */
a:active {
  color: blue;
}
</style>
</head>

<body>

<div class="header">
  <h1>WELCOME TO VVN SCHOOL</h1>
</div>
<div class="topnav">
<h2>This field is only for ADMIN</h2>
<a href="admin.jsp">ADMIN LOGIN</a>
   </div> 
   <div class="row">
  <div class="column">
    <h2>Content</h2>
    <a id="i1" class="c1" href=".jsp">2023 Batch Result</a><br/><br/>
    
    <a id="i2" class="c2" href="viewtoppers">Topper's List</a><br/><br/>
    
    <a id="i3" class="c3" href="viewfaculty">Faculty Details</a><br/><br/>
  </div>
  
  <div class="column">
    <h2>About Us</h2>
     
 <p>VVN SCHOOL is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers</p>
 <p>Address: 3RD MAIN, 2ND CROSS, B-BLOCK, KUVEMPUNAGAR, MYSURU-570023   </p>
  <a class="c4" href="/insertdept.jsp">www.vvnschool.com</a><br/><br/>
  </div>
   <div class="column">
    <h2>Column</h2>
    <a id="i1" class="c1" 
    href="user.jsp">For Admission</a><br/><br/>
    <a id="i2" class="c2" href="/insertdept.jsp">Other Details</a><br/><br/>
  
  </div>
   </div>
   
   <div class="footer">
  <a class="c4" href="/insertdept.jsp">follows us on facebook</a><br/><br/>
</div>
   
 
      
</body>
</html>