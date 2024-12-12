<%@page import="com.dao.CustomerDao"%>
<%@page import="com.dto.Item"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.dto.Customer"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dto.User"%>
<%@page import="com.dto.FoodOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FoodOrderDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Order Dashboard</title>
<style>
    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid black;
    }
    th {
        background-color: #f2f2f2;
    }

    /* Base Button Styling */
    button {
        border: none;
        color: white;
        padding: 8px 15px;
        font-size: 14px;
        cursor: pointer;
        border-radius: 5px;
        position: relative;
        transition: all 0.3s ease-in-out;
    }

    button::before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 300%;
        height: 300%;
        background-color: rgba(255, 255, 255, 0.3);
        transition: all 0.5s ease-in-out;
        border-radius: 50%;
        transform: translate(-50%, -50%);
        opacity: 0;
    }

    /* Button Hover Effect with Rainbow Glow */
    button:hover {
        animation: rainbowGlow 1.5s infinite linear;
    }

    button:hover::before {
        opacity: 1;
        width: 500%;
        height: 500%;
    }

    /* Rainbow Glow Animation */
    @keyframes rainbowGlow {
        0% { box-shadow: 0 0 10px red; }
        20% { box-shadow: 0 0 10px orange; }
        40% { box-shadow: 0 0 10px yellow; }
        60% { box-shadow: 0 0 10px green; }
        80% { box-shadow: 0 0 10px blue; }
        100% { box-shadow: 0 0 10px violet; }
    }

    /* Unique Colors for Each Button */
    .view-btn {
        background-color: #4CAF50; /* Green */
    }

    .take-btn {
        background-color: #FF9800; /* Orange */
    }

    /* HOME Link Styling */
    .home-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 15px;
        color: white;
        background-color: #333;
        border-radius: 5px;
        text-decoration: none;
        font-size: 14px;
        text-align: center;
        transition: all 0.3s ease-in-out;
    }
    .home-link:hover {
        animation: rainbowGlow 1.5s infinite linear;
    }
</style>
</head>
<body>

<%
    User staff = (User) session.getAttribute("staff");
    Branch branch = staff.getBranchs().get(0);
    List<Item> listOfItem = null;
    Customer c = null;
    List<FoodOrder> list = new FoodOrderDao().findByFoodOrderStatus();

    if (!list.isEmpty()) {
%>

<h3>Branch ID: <%= branch.getId() %></h3>
<h3>Branch Name: <%= branch.getBranchname() %></h3>

<table>
    <tr>
        <th>SN</th>
        <th>BRANCH ID</th>
        <th>Cust_Id</th>
        <th>Cust_Name</th>
        <th>Cust_Mob</th>
        <th>Cust_Address</th>
        <th>Cust_FoodOrderId</th>
        <th>Cust_FoodOrderTime</th>
        <th>Cust_FoodOrderPrice</th>
        <th>Status</th>
        <th>View Item</th>
        <th>Take</th>
    </tr>
    
    <% 
        int id = 1;
        for(FoodOrder f : list) {
            if(f.getBranchId() == branch.getId()) {
                c = new CustomerDao().findCustomerByID(f.getCustId());
    %>
    <tr>
        <td><%= id++ %></td>
        <td><%= branch.getId() %></td>
        <td><%= c.getId() %></td>
        <td><%= c.getName() %></td>
        <td><%= c.getMob() %></td>
        <td><%= c.getAddress() %></td>
        <td><%= f.getId() %></td>
        <td><%= f.getOrdertime() %></td>
        <td><%= f.getTotalprice() %></td>
        <td><%= f.isStatus() %></td>
        <td><a href="viewItem.jsp?foid=<%= f.getId() %>"><button class="view-btn">VIEW ITEM</button></a></td>
        <td><a href="takeFoodOrder?foid=<%= f.getId() %>&cid=<%= c.getId() %>&bid=<%= branch.getId() %>"><button class="take-btn">TAKE</button></a></td>   
    </tr>
    <%      }
        }
    %>
</table>

<% } %>

<a href="stafflogin.jsp" class="home-link">HOME</a>

</body>
</html>
