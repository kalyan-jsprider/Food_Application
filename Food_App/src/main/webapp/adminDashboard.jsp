<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
  /* General Page Styling */
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    color: #333;
    margin: 0;
    padding-top: 70px; /* Offset for fixed navbar */
    background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20230721/pngtree-3d-rendered-illustration-of-instagram-reels-icon-image_3722426.jpg");
    background-size: cover;
  }
  
  /* Navbar Styling */
  .navbar {
    position: fixed;
    top: 0;
    width: 100%;
    height: 70px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 15px;
    background: linear-gradient(90deg, #ff4b2b, #ff416c, #00c6ff, #0072ff);
    background-size: 400% 400%;
    animation: rainbowBackground 10s ease infinite;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
  }

  .navbar img {
    height: 60px;
    width: 80px;
    border-radius: 8px;
  }

  .navbar a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
    padding: 10px 20px;
    border-radius: 20px;
    transition: background-color 0.3s ease;
  }

  .navbar a:hover {
    background-color: rgba(255, 255, 255, 0.2);
  }

  @keyframes rainbowBackground {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
  }

  /* Table Styling */
  h1 {
    font-size: 2rem;
    color: #4CAF50;
    margin-bottom: 1rem;
  }

  table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    background-color: #fff;
  }

  th, td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ddd;
  }

  th {
    background-color: #4CAF50;
    color: white;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  /* Button Styling */
  .update-button, .delete-button {
    padding: 10px 20px;
    color: #fff;
    font-weight: bold;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    text-decoration: none;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    transition: transform 0.2s;
  }

  .update-button {
    background: linear-gradient(45deg, #3498db, #8e44ad);
  }
  
  .delete-button {
    background: linear-gradient(45deg, #ff4b2b, #ff416c);
  }

  .update-button:hover, .delete-button:hover {
    transform: scale(1.1);
  }

</style>
</head>
<body>

<!-- Navbar Structure -->
<div class="navbar">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgMhsu108t3J4svZdDAyBdPYi3aPWoIafR8sxZKvwIk55hHXHhQcazLcXfj1xQud-oVYQ&usqp=CAU" alt="Logo">
  <div>
    <a href="userSignup.jsp">Home</a>
    <a href="logout">Logout</a>
  </div>
</div>


<table>
  <tr>
    <th>S.NO</th>
    <th>B_ID</th>
    <th>B_NAME</th>
    <th>B_ADDRESS</th>
    <th>B_PHONE_NUMBER</th>
    <th>UPDATE</th>
    <th>DELETE</th>
  </tr>

  <!-- Table Content from Java Loop -->
  <%
    List<Branch> listOfBranch = (List<Branch>) session.getAttribute("list");
    User admin = (User) session.getAttribute("admin");
    int i = 1;
    for (Branch b : listOfBranch) {
  %>
  <tr>
    <td><%=i++%></td>
    <td><%=b.getId()%></td>
    <td><%=b.getBranchname()%></td>
    <td><%=b.getAddress()%></td>
    <td><%=b.getPhonenumber()%></td>
    <td><a href="updateBranch.jsp?id=<%=b.getId()%>" class="update-button">UPDATE</a></td>
    <td><a href="deleteBranch?id=<%=b.getId()%>" class="delete-button">DELETE</a></td>
  </tr>
  <% } %>
</table>

</body>
</html>
