<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Answer the Question - Simple QA App</title>
</head>
<body>
	<h2>Answer this question</h2>
	<h4>${question.details} - ${question.author}</h4>
	<form action="/answer-question.do?author=${userName}&questionId=${question.id}" method="post">
		Answer: <input type="text" name="answerDetails" /> <input
			type="submit" value="Post Answer">
	</form>

	<a href="/list-qa.do">Go Back</a>
</body>
</html>