<%@page import="com.dto.User"%>
<%@page import="com.dto.Branch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Menu</title>
<style>
    body {
        font-family: Arial, sans-serif;
       
        text-align: center;
        margin-top: 50px;
        background-image: url("https://img.freepik.com/free-photo/green-herbal-salad-cup-concrete-table_114579-56757.jpg");
background-repeat: no-repeat;
background-size: cover;
    }
    h1 {
        color: #6c7ae0;
    }
    button {
        background-color: #6c7ae0;
        color: white;
        border: none;
        padding: 12px 24px;
        font-size: 16px;
        cursor: pointer;
        margin: 10px;
        border-radius: 5px;
        transition: background-color 0.3s, transform 0.3s ease;
    }
    button:hover {
        background-color: #5555e6;
        transform: scale(1.1);
    }
    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<%
// Get Branch Manager
User branchManager = (User) session.getAttribute("branchmanager");
%>

<h1>Welcome, <%= branchManager.getName() %></h1>

<a href="createMenu?id=<%= branchManager.getId() %>">
    <button>CREATE MENU</button>
</a><br><br>

<a href="logout">
    <button>LOGOUT</button>
</a>

</body>
</html>
