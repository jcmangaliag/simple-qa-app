<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Q&A App</title>
<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">

		<a href="/" class="navbar-brand">Simple Q&A App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/list-qa.do">Q&A
						List</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/ask-question.do">Ask Question!</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/logout.do">Logout</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" style="margin-top:100px">
		<h2>Welcome back ${userName}</h2>

		<table class="table table-striped">
			<thead>
				<th><h3>Questions for you</h3></th>
			</thead>
			<tbody>
				<c:forEach items="${questions}" var="question">
					<tr>
						<td><h5 style="font-weight: bold">${question.details}</h5>
							<p class="font-italic">posted by ${question.author}</p>
							<table class="table">
								<thead class="table-active">
									<th><h5>Answers</h5></th>
									<th></th>
								</thead>
								<tbody>
									<c:forEach items="${question.answers}" var="answer">
										<tr>
											<td><span style="font-style: italic">${answer.author}
													wrote:</span> <span style="font-weight: bold">
													${answer.details} </span></td>

											<td><a style="float: right;"
												href="/delete-answer.do?questionId=${question.id}&answerId=${answer.id}"
												class="btn btn-danger"
												onclick="return confirm('Are you sure you want to delete this answer: ${answer.details}')">Delete</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table> <a href="/answer-question.do?questionId=${question.id}"
							class="btn btn-primary">Add Answer</a></td>


						<td><a style="float: right;"
							href="/delete-question.do?questionId=${question.id}"
							class="btn btn-danger"
							onclick="return confirm('Are you sure you want to delete this question: ${question.details}')">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>