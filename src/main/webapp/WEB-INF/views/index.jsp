<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<!-- <div class="jumbotron text-center">
			<h1>Seating Application</h1>
		</div> -->
		
		<div class="register-div">
		<div class="register-form">
			<form:form method="POST" action="/register">
				<div class="form-group">
					<form:input type="text" class="form-control" path="firstName" required placeholder="First Name"/>
				</div>
				<div class="form-group">
                <form:input type="text" class="form-control" path="lastName"  required placeholder="Last Name"/>
				</div>
				<div class="form-group">
                <form:input type="email" class="form-control" path="email"  required placeholder="Email"/>
				</div>
					<div class="form-group-loc">
						<div class="loc">
							<form:input type="text" class="form-control-location" path="location"
								placeholder="Location" />
						</div>
						<div class="loc">
							<form:select>
								<option value="IN">IN</option>
								<option value="US">US</option>
								<option value="UK">UK</option>
								<option value="AU">AU</option>
							</form:select>
						</div>

					</div>
					<div class="form-group">
						<form:input type="password" class="form-control" path="password" required
							placeholder="Password" />
					</div>
					<div class="form-group">
                <form:input type="password" class="form-control" path="passwordCnf" required placeholder="Confirm Password"/>
				</div>
				<button type="submit" class="btn btn-default">Register</button>
			</form:form>
			</div>
		</div>
		<div class="mid-div"></div>
		<div class="login-div">
		<div class="login-form">
		
			<form method="POST" action="login">
				<div class="form-group">
                <input type="email" class="form-control" path="email"   required placeholder="Email/User Id"/>
				</div>
				<div class="form-group">
				<input type="password" class="form-control" path="pwd"  required placeholder="Password">
				</div>
				<button type="submit" class="btn btn-default">Login</button>
			</form>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>