<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Seating application</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<script src="/js/jquery-2.2.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function onload() {
		if (window.location.href.indexOf("logout") != -1) {
			document.getElementById('message').innerHTML = 'Successfully logged out';
		}
	}
</script>
</head>
<body onload="onload()">
	<div class="container">
			<!--  Registration Start-->
			<div class="register-div">
				<h6>
					<label id="message" style="color: blue;"></label>
				</h6>
				<div class="register-form">
				<form:form method="POST" modelAttribute="userForm"
					action="/registration">
					<h3 class="form-signin-heading">Create your account</h3>
					<spring:bind path="firstName">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:input type="text" path="firstName" class="form-control"
								placeholder="First Name" autofocus="true"></form:input>
							<form:errors style="color: red" path="firstName"></form:errors>
						</div>
					</spring:bind>
					<spring:bind path="lastName">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:input type="text" path="lastName" class="form-control"
								placeholder="Last Name" autofocus="true"></form:input>
							<form:errors style="color: red" path="lastName"></form:errors>
						</div>
					</spring:bind>
					<spring:bind path="email">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:input type="text" path="email" class="form-control"
								placeholder="Email" autofocus="true"></form:input>
							<form:errors style="color: red" path="email"></form:errors>
						</div>
					</spring:bind>
					<spring:bind path="location">
						<div class="form-group-loc ${status.error ? 'has-error' : ''}">
							<form:input type="text" path="location" class="form-control"
								placeholder="Location" autofocus="true"></form:input>
							<form:errors style="color: red" path="location"></form:errors>
						</div>
					</spring:bind>
					<div class=".loc">
					<form:select path="country" items="${countries}" />
					</div>
					<spring:bind path="password">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:input type="password" path="password" class="form-control"
								placeholder="Password"></form:input>
							<form:errors style="color: red" path="password"></form:errors>
						</div>
					</spring:bind>
					<spring:bind path="passwordConfirm">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:input type="password" path="passwordConfirm"
								class="form-control" placeholder="Pw Conf"></form:input>
							<form:errors style="color: red" path="passwordConfirm"></form:errors>
						</div>
					</spring:bind>

					<button type="submit" class="btn btn-default">Register</button>
				</form:form>
			</div>
			<!--  Registration End -->
		</div>

		<!--  Login Start -->
			<div class="login-div" >
				<div class="login-form">
				<h3>Login</h3>
				<c:if test="${param.error ne null}">
					<div style="color: red">Invalid credentials.</div>
				</c:if>
				<form action="/login" method="post">
					<div class="form-group">
						<input type="email"
							class="form-control" id="username" name="username" placeholder="Enter Your Email">
					</div>
					<div class="form-group">
						<input type="password"
							class="form-control" id="pwd" name="password"  placeholder="Enter Your Email">
					</div>
					<button type="submit" class="btn btn-default">Login</button>
				</form>
			</div>
		</div>
		<!--  Login end-->
	</div>
</body>
</html>