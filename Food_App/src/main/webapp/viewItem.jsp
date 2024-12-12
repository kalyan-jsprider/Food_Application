<%@page import="com.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dao.FoodOrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        display: flex;
        flex-direction: column;
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

    a {
        text-decoration: none;
        margin: 10px;
    }

    .nav-button {
        padding: 10px 20px;
        color: #fff;
        background-color: #4CAF50;
        border: none;
        border-radius: 4px;
        font-size: 14px;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
    }

    .nav-button:hover {
        background-color: #45a049;
        box-shadow: 0 0 8px #4CAF50;
    }
</style>
</head>
<body>

<%
    int foID = Integer.parseInt(request.getParameter("foid"));
    List<Item> list = new FoodOrderDao().foodOrderById(foID).getItems();
%>

<h1>Order Details</h1>

<table>
    <tr>
        <th>SN</th>
        <th>Item ID</th>
        <th>Item Name</th>
        <th>Item Type</th>
        <th>Item Price</th>
        <th>Item Quantity</th>
    </tr>

    <%
    int i1 = 1;
    for (Item i : list) { %>
    <tr>
        <td><%= i1++ %></td>
        <td><%= i.getId() %></td>
        <td><%= i.getProductName() %></td>
        <td><%= i.getType() %></td>
        <td><%= i.getPrice() %></td>
        <td><%= i.getQuantity() %></td>
    </tr>
    <% } %>
</table>

<div>
    <a href="staff.jsp" class="nav-button">Back</a>
    <a href="stafflogin.jsp" class="nav-button">Home</a>
</div>

</body>
</html>
