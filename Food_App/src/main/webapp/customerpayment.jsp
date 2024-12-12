<%@page import="com.dao.BrachDao"%>
<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Form</title>
<style>
    /* Form styling */
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f5f5f5;
    }
    
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }
    
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: #fff;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 0 10px #4CAF50;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
        box-shadow: 0 0 20px #4CAF50;
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

<form action="payment">
    <h2>Payment Details</h2>
    <label>Customer ID:</label>
    <input type="text" name="id" value="<%=c.getId()%>" readonly="readonly"><br>

    <label>Customer Name:</label>
    <input type="text" name="name" value="<%=c.getName()%>" readonly="readonly"><br>

    <label>Branch ID:</label>
    <input type="text" name="bid" value="<%=b.getId()%>" readonly="readonly"><br>

    <label>Food Order ID:</label>
    <input type="text" name="fid" value="<%=f.getId()%>" readonly="readonly"><br>

    <label>Payment Amount:</label>
    <input type="text" name="payment" value="<%=(double)session.getAttribute("pay") %>" readonly="readonly"><br>

    <input type="submit" value="PAYMENT">
</form>

</body>
</html>
