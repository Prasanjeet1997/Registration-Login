<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	text-align: center;
	background-image:
		url('https://cdn.scooper.news/newsbackend/image/cac09033c5811e990339258cff0163591ca44c0b.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	position: absolute;
}

/* Bordered form */
form {
	align: right;
	border: 3px solid #f1f1f1;
	width: 50%;
	display: inline-block;
}
/* Full-width inputs */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

.home {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

.home:hover {
	opacity: 0.8;
}
/* Add a hover effect for buttons */
button:hover {
	opacity: 0.8;
}
/* Extra style for the cancel button (red) */
.cancelbtn {
    
	width: 50%;
	padding: 10px;
	background-color: #f44336;
}

.cancelbtn:hover {
	opacity: 0.8;
}
/* Center the avatar image inside this container */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}
/* Avatar image */
img.avatar {
	width: 40%;
	border-radius: 50%;
}
/* Add padding to containers */
.container {
	padding: 16px;
}
/* The "Forgot password" text */
span.psw {
	float: right;
	padding-top: 16px;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 300%;
	}
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 10px;
}
/* Add padding to container elements */
.container {
  padding: 2px;
}
</style>
</head>
<body>
	<form:form id="loginForm" modelAttribute="login" action="loginProcess"
		method="post">
		<div class="container">
    <h1>Login Form</h1>
    <p>Please fill in this to Login</p>
    <hr>
    </div>

		<div class="imgcontainer">
			<img src="https://www.w3schools.com/w3images/avatar2.png"
				alt="Avatar" class="avatar">
		</div>
		<div class="container">
			<form:label path="username" class="input-field">Username: </form:label>

			<form:input path="username" class="input-field" name="username"
				id="username" />

			<form:label path="password" class="input-field">Password:</form:label>

			<form:password path="password" class="input-field" name="password"
				id="password" />


			<form:button id="login" name="login">Login</form:button>

			<a href="home.jsp"><input type="button" class="home" value="Home"></a>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<a href="home.jsp"><input type="button" class="cancelbtn" value="Cancel"></a> 
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>





	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
</body>
</html>