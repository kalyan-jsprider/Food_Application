<%@page import="com.dto.Item"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dao.BrachDao"%>
<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.Customer"%>
<%@page import="com.dto.Branch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary</title>
<style>
    /* General styling */
    body {
        font-family: Arial, sans-serif;
    }
    
    h1 {
        color: #4CAF50;
        font-size: 24px;
    }
    
    p {
        font-size: 16px;
        margin: 8px 0;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }
    
    th {
        background-color: #f4f4f4;
    }

    /* PAY Button Styling */
    .pay-button {
        background-color: #FF5722; /* Unique color for PAY */
        color: white;
        padding: 12px 20px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 20px;
        box-shadow: 0 0 10px #FF5722;
        transition: all 0.3s ease-in-out;
        text-decoration: none;
    }

    .pay-button:hover {
        animation: glowingOrange 1.5s infinite;
    }

    /* Glow animation */
    @keyframes glowingOrange {
        0% { box-shadow: 0 0 10px #FF5722, 0 0 20px #FF5722; }
        50% { box-shadow: 0 0 20px #FF8A65, 0 0 30px #FF8A65; }
        100% { box-shadow: 0 0 10px #FF5722, 0 0 20px #FF5722; }
    }
</style>
</head>
<body>

<%
Customer customerObject = (Customer) request.getSession().getAttribute("customer");
Branch b = (Branch) request.getSession().getAttribute("branch");
FoodOrder f = (FoodOrder) request.getSession().getAttribute("foodorder");

Customer c = new CustomerDao().findCustomerByID(customerObject.getId());
Branch branch = new BrachDao().findBranchById(b.getId());
%>

<h1>Your Order Summary</h1>

<p><strong>Branch:</strong> <%=b.getBranchname() %></p>
<p><strong>Address:</strong> <%=b.getAddress() %> </p>
<p><strong>Receipt Time:</strong> <%=LocalDateTime.now() %> </p>
<p><strong>Customer Name:</strong> <%=c.getName() %></p>
<p><strong>Order ID:</strong> <%=f.getId() %></p>
<p><strong>Order Time:</strong> <%=f.getOrdertime() %></p>

<table>
    <tr>
        <th>S.No</th>
        <th>Item Name</th>
        <th>Quantity</th>
        <th>Total</th>
    </tr>
    <%
    int i1 = 1;
    double sum = 0.0;
    for (Item i : f.getItems()) {
    %>
    <tr>
        <td><%=i1++ %></td>
        <td><%=i.getProductName() %></td>
        <td><%=i.getQuantity() %></td>
        <td><%=i.getPrice() %></td>
        <% sum += i.getPrice(); %>
    </tr>
    <% } %>
</table>

<p><strong>Total with 18% GST:</strong> <h4><%= sum + (sum * 0.18) %></h4></p>
<%
session.setAttribute("pay", (sum + (sum * 0.18)));
%>
<a href="customerpayment.jsp" class="pay-button">PAY</a>

</body>
</html>
