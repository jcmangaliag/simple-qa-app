<%@ include file="../common/header.jspf"%>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
	<a href="/#" class="navbar-brand">Simple Q&A App</a>
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
			<li class="nav-item active"><a class="nav-link" href="/login.do">Login</a></li>
		</ul>
	</div>
</nav>

<div class="container" style="margin-top: 100px;">
	<p style="color: red;">${errorMessage}</p>
	<form action="/login.do" method="post">
		Enter your user name <input type="text" name="userName" /> <input
			type="submit" value="Login" class="btn btn-primary">
	</form>
</div>

<%@ include file="../common/footer.jspf"%>