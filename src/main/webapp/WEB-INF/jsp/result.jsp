<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.design_shinbi.shindan.model.Result" %>
<%
	String name = (String)request.getAttribute("name");
	Result result = (Result)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>診断結果</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
</head>
<body>
	<div id="resultbody">
	<h1>季節診断　～診断結果～</h1>
	<p><%=name %>さんの診断結果は</p>
	<p><span id="result"><%= result.getName() %></span>ですじゃ。</p>
	<p><%= result.getDescription() %></p>
	
	<%if(result.getName().equals("春")){ %>
		<img src="css/image/spring.jpg" alt="spring">
 <% }else if(result.getName().equals("夏")){%>
		<img src="css/image/summer.jpg" alt="summer">
 <% }else if(result.getName().equals("秋")){%>
		<img src="css/image/autumn.jpg" alt="autumn">
	<% }else{%>
		<img src="css/image/winter.jpg" alt="winter">
	<%} %>
	
	[<a href="top">戻る</a>]
	</div>
</body>
</html>