<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Simple QA App</title>
</head>
<body>

	<form action="/login.do" method="post">
		Enter your username: <input type="text" name="userName" /> <input
			type="submit" value="Login">
	</form>

</body>
</html>