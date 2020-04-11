<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Simple QA App</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
    <nav class="navbar navbar-default">

	    <a href="/" class="navbar-brand">Simple Q&A App</a>
	
	    <ul class="nav navbar-nav">
	        <li><a href="/list-qa.do">Q&As</a></li>
	        <li><a href="/ask-question.do">Ask Question!</a></li>
	    </ul>
	
	    <ul class="nav navbar-nav navbar-right">
	        <li><a href="/login.do">Login</a></li>
	    </ul>
	
	</nav>
	
	<div class="container">
        <p style="color: red;">${errorMessage}</p>
	    <form action="/login.do" method="post">
        Enter your user name <input type="text" name="userName" /> <input
            type="submit" value="Login" class="btn btn-primary">
    </form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>