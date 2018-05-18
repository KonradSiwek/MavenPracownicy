<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="db" class="hr.DostępDoBazy"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css" type="text/css" /> 
<title>Lista pracowników</title>
</head>
<body>
<h1>Lista pracowników</h1>

<table> 
<tr>
<th>ID</th>
<th>IMIĘ</th>
<th>NAZWISKO</th>
<th>STANOWISKO</th>
<th>PENSJA</th>
<th>MIASTO</th>
<th>ADRES</th>

<th>
</tr>
<c:forEach var="emp" items="${db.allEmployees}">
	<tr>
	<td>${emp.id}</td>
	<td>${emp.firstName}</td>
	<td>${emp.lastName}</td>
	<td>${emp.jobTitle}</td>
	<td>${emp.salary}</td>
	<td>${emp.city}</td>
	<td>${emp.address}</td>
    </tr>
</c:forEach>
</table> 
</body>
</html>



