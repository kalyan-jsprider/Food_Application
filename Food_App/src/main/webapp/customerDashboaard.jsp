<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ddd;
        font-size: 16px;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    button {
        padding: 8px 16px;
        color: #fff;
        background-color: #4CAF50;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
        box-shadow: 0 0 8px #4CAF50;
    }

    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<%
 List<Branch> listOfBranch = (List<Branch>) session.getAttribute("list");
%>

<h1>Branch List</h1>

<table>
    <tr>
        <th>S.NO</th>
        <th>Branch ID</th>
        <th>Branch Name</th>
        <th>Address</th>
        <th>Phone Number</th>
        <th>See Menu</th>
    </tr>

    <%
    int i = 1;
    for (Branch b : listOfBranch) {
    %>
    <tr>
        <td><%= i++ %></td>
        <td><%= b.getId() %></td>
        <td><%= b.getBranchname() %></td>
        <td><%= b.getAddress() %></td>
        <td><%= b.getPhonenumber() %></td>
        <td><a href="viewMenu?id=<%= b.getId() %>"><button>MENU</button></a></td>
    </tr>
    <% } %>

</table>

</body>
</html>
