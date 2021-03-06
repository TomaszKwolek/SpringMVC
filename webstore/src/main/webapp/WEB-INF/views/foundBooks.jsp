<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Books</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Books</h1>
				<p>This page contains all informations about books</p>
				<a href="<c:url value="/j_spring_security_logout" />"
				class="btn btn-warning btn-mini pull-right">logout</a>
			</div>
		</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${bookList}" var="book">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>${book.id}</h3>
							<p>${book.title}</p>
							<p>${book.authors}</p>
							<p>Status: ${book.status}</p>
							<p>
								<a href=" <spring:url value="/books/foundBook?id=${book.id}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a> 
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<section class="container">
		<a href="<spring:url value="/books/findBook" />" class="btn btn-default"> <span
			class="glyphicon-hand-left glyphicon"></span> back
		</a>
		<a href="<spring:url value="/" />" class="btn btn-default"> <span
			class="glyphicon glyphicon-home"></span> home page
		</a>
	</section>
</body>
</html>
