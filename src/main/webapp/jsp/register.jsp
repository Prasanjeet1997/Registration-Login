<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>

* {box-sizing: border-box}

body {
	font-family: Arial, Helvetica, sans-serif;
	
	background-image:
		url('https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	position: absolute;
}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #f44336;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #4CAF50;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}


</style>

</head>



<body>
	<form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
	
	<div class="container">
    <h1>Registration Form</h1>
    <p>Please fill in this form to Register</p>
    <hr>
    
    <form:label path="username">Username</form:label>
	<form:input path="username" name="username" id="username" />
				

    <form:label path="password">Password</form:label>
	<form:password path="password" name="password" id="password" />
	
	<form:label path="firstname">FirstName</form:label> 
	<form:input path="firstname" name="firstname" id="firstname" />
	
	<form:label path="lastname">LastName</form:label>
	<form:input path="lastname" name="lastname" id="lastname" />
	
	<form:label path="email">Email</form:label>
	<form:input path="email" name="email" id="email" />
	
	<form:label path="address">Address</form:label>
	<form:input path="address" name="address" id="address" />
				
	<form:label path="phone">Phone</form:label>
	<form:input path="phone" name="phone" id="phone" />
			
       <div class="clearfix">
      <form:button id="register" name="register" class="cancelbtn">Register</form:button>
      <a href="home.jsp">
      <button type="button" class="signupbtn">Cancel</button></a>
    </div>
  </div>
		
	</form:form>
</body>
</html>