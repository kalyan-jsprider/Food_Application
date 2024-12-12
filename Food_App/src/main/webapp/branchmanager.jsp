<%@page import="com.dao.BrachDao"%>
<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
         background-image: url("https://img.freepik.com/free-photo/vibrant-autumn-maple-leaves-nature-beauty-showcased-generated-by-ai_188544-15039.jpg?t=st=1731749663~exp=1731753263~hmac=d8d97be789b62132742dd72d9fc50a0d0f75948c3c77eab8eaf0f217870d62ee&w=826");
background-repeat: no-repeat;
background-size: cover;
        
    }
    h2, h1 {
        text-align: center;
        color: white;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #6c7ae0;
        color: #ffffff;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    button {
        background-color: #6c7ae0;
        color: #ffffff;
        border: none;
        padding: 8px 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    button:hover {
        background-color: #5555e6;
        transform: scale(1.05);
    }
    a {
        text-decoration: none;
    }
    .actions {
        text-align: center;
        margin: 20px;
    }
</style>
</head>
<body>

    <%
    User branchmanager = (User) session.getAttribute("branchmanager");
    List<Branch> list = branchmanager.getBranchs();
    int branchid = 0;

    if (list.isEmpty()) {
        BrachDao dao = new BrachDao();
        List<Branch> listOfBranch = dao.findAllBranch();
    %>
    <h2>TAKE BRANCH</h2>

    <table>
        <tr>
            <th>S.NO</th>
            <th>B_ID</th>
            <th>B_NAME</th>
            <th>B_ADDRESS</th>
            <th>B_PHONE_NUMBER</th>
            <th>TAKE BRANCH</th>
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
            <td><a href="takeBranchAsBranchManager?id=<%= b.getId() %>"><button>TAKE</button></a></td>
        </tr>
        <%
        }
        %>
    </table>

    <%
    } else {
        for (Branch b : list) {
            for (User u : b.getUsers()) {
                if (u.getId() == branchmanager.getId())
                    branchid = b.getId();
            }
        }
        Branch branch = (Branch) session.getAttribute("branch");
    %>
    <h1>Your Branch ID is <%= branchid %></h1>
    <%
    }
    %>

    <div class="actions">
        <a href="crerateMenu?id=<%= branchmanager.getId() %>"><button>CREATE MENU</button></a>
        <a href="logout"><button>LOGOUT</button></a>
    </div>

</body>
</html>
