<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
table  {
  text-align: center;
  width: 50%;
  border: 1px solid black;
  border-collapse: collapse;
  padding: 15px;
  border-spacing: 5px;
  background-color:	#90EE90;
}
tr:hover 
{background-color: #f5f5f5;}
</style>

</head>
<body>
<table >
 <caption>Login Details</caption>
		<tr>
			<td>Welcome : ${firstname} ${lastname}</td>
			
		</tr>
		<tr>
		    <td>Email Id : ${email}</td>
			
		</tr>
		<tr>
		    <td>Address : ${address}</td>
			
		</tr>
		<tr>
		    <td>Phone : ${phone}</td>
			
		</tr>
		<tr>
			<td><a href="home.jsp">Logout</a></td>
		</tr>
		<!--  <tr>
			<td><a href="PdfFile">PdfFile</a></td>
		</tr>-->
		
</table>

<spring:url value="/report/?type=xls" var="xlsURL" />
<spring:url value="/report/?type=pdf" var="pdfURL" />
<a href="${xlsURL }">	download excel</a>
<a href="${pdfURL }">	download pdf</a>
		
</body>
</html>