<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;char
	set=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    <c:choose>
		<c:when test="${empty sessionScope.session_user }">
				<h1>Report Insert Page</h1>
		</c:when>
		<c:otherwise>

		
		<form action="<c:url value='/insertreport'/>" method="post">
		<label>Date: </label>
		<input type="text" name="date0" value=""/>
		<label>Comment:</label>
		<input type="text" name="comment0" value=""/>
		<label>Recommendation:</label>
		<input type="text" name="rec0" value=""/>
		<label>Paperid:</label>
		<input type="text" name="paperid0" value=""/>
		<label>Email:</label>
		<input type="text" name="email0" value=""/>
		<br>
		<br>
		<br>
		<input type="submit" name="insert" value="Insert"/>
		</form>
		
		<br>
		<a href ="/CSC4710Demo/jsps/body.jsp"><button type = "submit">Return to home</button></a>
		<br>
		</c:otherwise>
	</c:choose>
  </body>
</html>