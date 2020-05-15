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
table {
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
<table>
   <caption>Registration Details</caption>
		<tr>
			<td>Welcome :<core:out value="${user.firstname} ${user.lastname}" /></td>
			
		</tr>
		<tr>
		    <td>Email Id : <core:out value="${user.email}" /></td>
			
		</tr>
		<tr>
		    <td>Address : <core:out value="${user.address}" /></td>
		
		</tr>
		<tr>
		    <td>Phone : <core:out value="${user.phone}" /></td>
			
		</tr>
		<tr>
			<td><a href="home.jsp">Home</a></td>
		</tr>
		<!--  <tr>
			<td><a href="PdfFile">PdfFile</a></td>
		</tr>-->
		
</table>

<spring:url value="/report/?type=xls" var="xlsURL" />
<spring:url value="/report/?type=pdf" var="pdfURL" />
<a href="${xlsURL }">download excel</a>
<a href="${pdfURL }">download pdf</a>
		
</body>
</html>