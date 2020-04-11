<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

<div class="container" style="margin-top: 100px;">
	<h2>Answer this question</h2>
	<hr />
	<div style="padding: 10px; margin: 10px; background-color: #DCDCDC;">
		<h5 style="font-weight: bold">${question.details}</h5>
		<p class="font-italic">posted by ${question.author}</p>
	</div>
	<form
		action="/answer-question.do?author=${userName}&questionId=${question.id}"
		method="post">
		<fieldset class="form-group">
			<label>Enter your answer</label> <input type="text"
				name="answerDetails" class="form-control" />
		</fieldset>
		<input type="submit" value="Post Answer" class="btn btn-success" />
	</form>
</div>

<%@ include file="../common/footer.jspf"%>