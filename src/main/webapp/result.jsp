<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result Page</title>
    <style type="text/css">
    body { margin: 0;}
        /* Style the header */
        .header {
            background-color: grey;
            padding: 20px;
            text-align: center;
        }

        .topnav {
            overflow: hidden;
            background-color: #336;
             text-align: center;
        }

        /* Style the topnav links */
        .button-submit {
            background-color: green;
            color: white;
            font-size: 15px;
            align-items: center;
        }

        /* Center align the form */
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 60px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>SEARCH YOUR RESULT</h1>
    </div>
    <div class="topnav">
        <h2>All The Best For Your Result!</h2>
    </div>
    <div class="form-container">
        <s:form action="viewResult" method="post">
            <label for="studentId"> Enter Your Student ID:</label>
            <s:textfield name="studentId" id="studentId" />
            <br/><br/>
            <s:submit value="View Result" cssClass="button-submit" />
        </s:form>
    </div>
</body>
</html>
