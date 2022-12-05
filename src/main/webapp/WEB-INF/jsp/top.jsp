<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.design_shinbi.shindan.model.Shindan"%>
<%@page import="com.design_shinbi.shindan.model.Question"%>
<%@page import="com.design_shinbi.shindan.model.Item"%>

<%
String message = (String) request.getAttribute("message");
Shindan shindan = (Shindan) request.getAttribute("shindan");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>季節診断</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>季節診断</h1>
	<p>季節診断へようこそだぜ....。あんたは何の季節がお似合いか調べるぜ..。</p>
	<%
	if (message != null) {
	%>
	<div id="error">
		<%=message%></div>
	<%
	}
	%>
	<form method="post" action="result">
		<h3>貴様のお名前は？</h3>
		<input type="text" name="name">

		<%
		for (Question question : shindan.getQuestions()) {
		%>
		<h3><%=question.getQuestion()%></h3>
		<div>
			<%
			String option = "checked";
			for (Item item : question.getItems()) {
			%>
			<div>
				<input type="radio" name="<%=question.getKey()%>"
					value="<%=item.getId()%>">
				<%=item.getText()%>
			</div>
			<%
			option = "";
			}
			%>
		</div>
		<%
		}
		%>
		<div id="buttons">
			<input type="submit" value="診断する">
		</div>
	</form>
</body>
</html>