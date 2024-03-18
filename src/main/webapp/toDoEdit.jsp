<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
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
/* Additional Designs */

/* Input Styles */
input[type="text"],
input[type="date"],
select {
    width: calc(100% - 12px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #d1bfa5; /* Light brown border */
    border-radius: 5px;
    box-sizing: border-box;
    font-family: 'Garamond', serif;
    background-color: #fff; /* White input background */
}

input[type="text"]:focus,
input[type="date"]:focus,
select:focus {
    outline: none;
    border-color: #804000; /* Dark brown border on focus */
}

/* Submit Button Hover Effect */
input[type="submit"]:hover {
    background-color: #a52a2a; /* Darker brown on hover */
}

/* Button Hover Effect */
button[type="button"]:hover {
    background-color: #a52a2a; /* Darker brown on hover */
}

/* Placeholder Styles */
::-webkit-input-placeholder {
    color: #8c7ae6; /* Light purple placeholder */
}

:-moz-placeholder {
    color: #8c7ae6; /* Light purple placeholder */
}

::-moz-placeholder {
    color: #8c7ae6; /* Light purple placeholder */
}

:-ms-input-placeholder {
    color: #8c7ae6; /* Light purple placeholder */
}

/* Table Header Text Transform */
th {
    text-transform: capitalize; /* Capitalize table header text */
}

/* Link Hover Effect */
a:hover {
    color: #804000; /* Dark brown on hover */
}

/* Error Message Styles */
.error-message {
    color: #ff0000; /* Red error message */
    font-size: 14px;
    margin-top: 5px;
}
/* Submit Button Styles */
input[type="submit"] {
    background-color: #804000; /* Dark brown button background */
    color: white;
    border: none;
    padding: 12px 24px;
    border-radius: 5px;
    cursor: pointer;
    font-family: 'Garamond', serif;
    font-size: 18px;
    text-transform: uppercase; /* Uppercase text */
    transition: background-color 0.3s;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Button shadow */
}

input[type="submit"]:hover {
    background-color: #a52a2a; /* Darker brown on hover */
    transform: translateY(-2px); /* Button hover effect */
}

input[type="submit"]:active {
    transform: translateY(1px); /* Button active effect */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Button active shadow */
}

</style> 
</head>
<body>
	<form action="/edit" method="post">
		Enter the task : <input type="text" name = "task"><br>
		Give Description :<input type="text" name = "description" ><br>
		Enter the Date : <input type="date" name = "date" ><br>
		Enter the Status :
		<select name = "status">
			<option value = "Incomplete">Incomplete</option>
			<option value = "complete">Completed</option>
		</select>
		<input type="submit" >
	</form>
</body>
</html>