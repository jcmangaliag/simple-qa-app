<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Q&A - Simple QA App</title>
</head>
<body>
	<h2>Welcome back ${userName}!</h2>
	<p>Here are the Questions:</p>
	<ol>
		<c:forEach items="${questions}" var="question">
			<li>${question.details} - ${question.author} &emsp; <a href="/delete-question.do?questionId=${question.id}" 
			 onclick="return confirm('Are you sure you want to delete this question: ${question.details}')">Delete</a> <br />
				<ul>
					<c:forEach items="${question.answers}" var="answer">
						<li>${answer.author} wrote: ${answer.details} 
						<a href="/delete-answer.do?questionId=${question.id}&answerId=${answer.id}" 
						  onclick="return confirm('Are you sure you want to delete this answer: ${answer.details}')">Delete</a></li>
						<br />
					</c:forEach>
					
					<a href="/answer-question.do?questionId=${question.id}">Add answer</a>
				</ul>
			</li>
		</c:forEach>
		
		<a href="/ask-question.do">Ask Question</a> <br/>
		<a href="/logout.do">Logout</a>
	</ol>
</body>
</html>