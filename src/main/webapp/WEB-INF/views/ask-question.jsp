<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

<div class="container" style="margin-top: 100px;">
	<h2>Ask a Question</h2>
	<hr />
	<form action="/ask-question.do?author=${userName}" method="post">
		<fieldset class="form-group">
			<label>Enter your question</label> <input type="text"
				name="questionDetails" class="form-control" />
		</fieldset>

		<input type="submit" value="Post Question" class="btn btn-success" />
	</form>
</div>

<%@ include file="../common/footer.jspf"%>