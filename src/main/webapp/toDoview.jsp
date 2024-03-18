<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo List Web Application</title>
<style type="text/css">
body {
    font-family: 'Garamond', serif;
    background-color: #efe9e1; /* Light brown background */
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

form {
    max-width: 800px;
    padding: 20px;
    background-color: #f5f0e6; /* Brown background */
    border-radius: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

h3 {
    font-size: 32px;
    margin-bottom: 20px;
    color: #4d3319; /* Dark brown */
    text-align: center;
    text-transform: uppercase;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #d1bfa5; /* Light brown border */
}

th {
    background-color: #8c593d; /* Brown header background */
    color: #fff;
    text-transform: uppercase;
}

tr:hover {
    background-color: #f2e6d9; /* Light brown hover background */
}

tr:nth-child(even) {
    background-color: #f5f0e6; /* Brown alternate row background */
}

button[type="button"] {
    background-color: #804000; /* Dark brown button background */
    color: white;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
    border-radius: 5px;
    text-decoration: none;
    display: inline-block;
    transition: background-color 0.3s;
}

button[type="button"]:hover {
    background-color: #a52a2a; /* Darker brown on hover */
}

/* Link Styles */
button[type="button"] a {
    color: white;
    text-decoration: none;
}

a {
    text-decoration: none;
    color: #8c593d; /* Brown link color */
    transition: color 0.3s ease;
}

a:hover {
    color: #804000; /* Dark brown on hover */
}


</style> 
</head>
<body>
	
   <form>
   		<h3>To Do Item List</h3>
   		<table>
   			<tr>
   				
   				<th>Task</th>
   				<th>Description</th>
   				<th>Date</th>
   				<th>Status</th>
   				<th>Toggle Status</th>
   				<th>Edit</th>
   				<th>Delete</th>
   			</tr>
   			<c:forEach items = "${list}" var = "todo">
   			<fmt:formatDate value="${todo.date}" pattern="yyyy-MM-dd" var="formattedDate"/>
    		
   				<tr>
   					
   					<th>${todo.task}</th>
   					<th>${todo.description}</th>
   					<th>${formattedDate}</th>
   					<th>${todo.status}</th>
   					<th><button type="button" id="mark"><a href="/markComplete/${todo.id}">Change</a></button></th>
   					<th><button type="button" id="edit"><a href="/edit/${todo.id}">Edit</a></button></th>
   					<th><button type="button" id="delete"><a href="/delete/${todo.id}">Delete</a></button></th>
   				</tr>
   			</c:forEach>
   			
   		</table>
   		<br>
   		<a href="toDoAdd.jsp" id="addItem">Add New To Do Item</a>
   </form> 
</body>
</html>