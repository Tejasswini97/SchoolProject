
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>

<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

}
 .headquote {
     font-size:18px;
     color:#ffffff;
     width:80%;
}

/* Style the header */
.header {
  padding: 50px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}
/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  background-color: #f1f1f1;
  padding-left: 10px;
}

/* Fake image */
.image {
  background-color: #aaa;
  width: 100%;
  padding: 10px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 10px;
}

/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
}



.c1{color: black; font-size: 20px;}
.c2{color: black; font-size: 20px;}
.c3{color: black; font-size: 20px;}
.c4{color: black; font-size: 20px;}
/* visited link */
a:visited {
  color: green;
}

/* selected link */
a:active {
  color: blue;
}
.site-footer {
  background-color: #838383;
	text-align: center;
	margin: 10px 0;
	padding: 10px 0;
}



/*Social Media Icons*/
.social-wrapper {
	text-align: center;
}

.social-wrapper ul li {
	display: inline;
	margin: 0 5px;
}

.twitter-icon,
.facebook-icon,
.instagram-icon,
.linkedin-icon,
.googleplus-icon,
.youtube-icon,
.foursquare-icon{
	margin-top: .625em;
	width: 40px;
	height: 40px;
	opacity: .6;
	filter: alpha(opacity=60); /* For IE8 and earlier */
  border-radius: 25px;
}

.twitter-icon:hover,
.facebook-icon:hover,
.instagram-icon:hover,
.linkedin-icon:hover,
.googleplus-icon:hover,
.youtube-icon:hover,
.foursquare-icon:hover {
	opacity: 1.0;
	filter: alpha(opacity=100); /* For IE8 and earlier */
}

.footer-nav p {
	text-align: center;
}
</style>
</head>
<body>
<marquee class="headquote">
 VVN School Of Education : Intelligence plus curiosity-that is the root of true education.
         </marquee>

<div class="header">
  <h1>Welcome To VVN School Of Education</h1>
  <p>A high achieving multi-cultural community for learning.</p>
</div>

<div class="navbar">
  <a href="#">Home</a>
  <a href="#">About Us</a>
  <a href="#">Contact Us</a>
  <a href="admin.jsp" class="right"> Admin Login </a>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2> Integrated, International Learning Experience </h2>
      <div class="image">
  <a target="_blank" href="./image/img.jpg">
    <img src="./image/img.jpg" alt="Cinque Terre" width="1085" height="400">
  </a>
  </div>
      
      <p>VVN SCHOOL is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers.</p>
    </div>
   
   
    
  </div>
  
  <div class="rightcolumn">
    <div class="card">
      <h2> Result </h2>
       <a id="i1" class="c1" href="result.jsp">2023 Batch Result</a><br/><br/>
      <p> Check Your Result By Clicking On Above Link!</p>
    </div>
    <div class="card">
      <h3>Content</h3>
       <a id="i2" class="c2" href="viewtoppers">Topper's List</a><br/><br/>
       
       <a id="i3" class="c3" href="viewfaculty">Faculty Details</a><br/><br/>
       
        <a id="i4" class="c4" href="user.jsp">For Admission</a><br/><br/>
        
        <a id="i4" class="c4" href=".jsp">For FeedBack</a><br/><br/>
    </div>
    <div class="card">
      <h3>Achievements</h3>
      <a id="i2" class="c2" href=".jsp">Curricular Activities</a><br/><br/>
       
      
    </div>
  </div>
</div>

 <footer id="colophon" class="site-footer" role="contentinfo">
  <div class="social-wrapper">
    <ul>
      <li>
        <a href="#" target="_blank">
          <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png" alt="Twitter Logo" class="twitter-icon"></a>
      </li>
      <li>
        <a href="#" target="_blank">
          <img src="https://www.mchenryvillage.com/images/instagram-icon.png" alt="Instagram Logo" class="instagram-icon"></a>
      </li>
     
      <li>
        <a href="#" target="_blank">
          <img src="http://www.iconarchive.com/download/i54037/danleech/simple/facebook.ico" alt="Facebook Logo" class="facebook-icon"></a>
      </li>
      <li>
        <a href="#" target="_blank">
          <img src="http://icons.iconarchive.com/icons/marcus-roberto/google-play/256/Google-plus-icon.png" alt="Googleplus Logo" class="googleplus-icon"></a>
      </li>
      <li>
        <a href="#" target="_blank">
          <img src="https://lh3.googleusercontent.com/j_RwVcM9d47aBDW5DS1VkdxUYCkDUCB6wZglv4x-9SmsxO0VaFs7Csh-FmKRCWz9r_Ef=w170" alt="Youtube Logo" class="youtube-icon"></a>
      </li>
     
    </ul>
  </div>

  <nav class="footer-nav" role="navigation">
    <p>VVN School Of Education Kuvempunagar, Mysuru - 570023.</p>
  </nav>
</footer>

</body>
</html>
