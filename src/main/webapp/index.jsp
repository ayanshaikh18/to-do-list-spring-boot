<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To Do Spring Boot</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<style type="text/css">
body {
	background-color: #fafafa;
}

.border-left {
	border-left: 3px solid #007bff !important;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-sm-12 text-center">
				<h3 class="text-primary">
					<u>To-Do Tasks</u>
				</h3>
			</div>
		</div>
		<div class="row mt-3 d-flex justify-content-center">
			<div class="col-sm-6">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#staticBackdrop">New Task</button>

				<div class="modal fade" id="staticBackdrop" data-backdrop="static"
					data-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">New Task</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="container">
									<form action="/addTask" method="post" id="addTask">
										<div class="row mb-3">
											<input type="text" class="form-control"
												placeholder="Enter Task Name" id="name" name="name" />
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="submit" form="addTask" class="btn btn-primary">Add</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<c:forEach var="listVar" items="${tasks}">
			<div class="row mt-3 d-flex justify-content-center">
				<div class="col-sm-6">
					<div class="card shadow border-left">
						<div class="card-body text-center">
							<h5>${listVar.name}</h5>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>
</body>
</html>