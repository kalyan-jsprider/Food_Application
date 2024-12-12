<%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
<style>
    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
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
        padding: 10px 15px;
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
    .update-btn {
        background-color: #4CAF50; /* Green */
    }

    .delete-btn {
        background-color: #f44336; /* Red */
    }

    .add-btn {
        background-color: #FF9800; /* Orange */
        margin-top: 15px;
        display: inline-block;
    }

    /* Additional Link Styling */
    a {
        text-decoration:none;
    }
</style>
</head>
<body>

<%
    List<User> listOfStaff = (List<User>) session.getAttribute("listOfStaff");
%>

<table>
    <tr>
        <th>S.NO</th>
        <th>STAFF_ID</th>
        <th>STAFF_NAME</th>
        <th>STAFF_EMAIL</th>
        <th>UPDATE</th>
        <th>DELETE</th>
    </tr>

    <% int i = 1;
    for (User u : listOfStaff) { %>
        <tr>
            <td><%= i++ %></td>
            <td><%= u.getId() %></td>
            <td><%= u.getName() %></td>
            <td><%= u.getEmail() %></td>
            <td><a href="updateStaff.jsp?id=<%= u.getId() %>">
                <button class="update-btn">UPDATE</button>
            </a></td>
            <td><a href="deleteStaff?id=<%= u.getId() %>">
                <button class="delete-btn">DELETE</button>
            </a></td>
        </tr>
    <% } %>
</table>

<a href="createstaff.jsp"><button class="add-btn">ADD STAFF</button></a>


</body>
</html>
