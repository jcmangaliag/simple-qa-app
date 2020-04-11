<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

<div class="container" style="margin-top: 100px;">
	<h2>Welcome back ${userName}</h2>

	<table class="table table-striped">
		<thead>
			<th><h3>Questions for you</h3></th>
			<th></th>
		</thead>
		<tbody>
			<c:forEach items="${questions}" var="question">
				<tr>
					<td><h5 style="font-weight: bold">${question.details}</h5>
						<p class="font-italic">posted by ${question.author}</p> <c:if
							test="${not empty question.answers}">
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
							</table>
						</c:if> <a href="/answer-question.do?questionId=${question.id}"
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

<%@ include file="../common/footer.jspf"%>