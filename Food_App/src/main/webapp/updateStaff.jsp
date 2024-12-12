<%@page import="com.dto.User"%>
<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE STAFF</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
         background-image: url("https://as2.ftcdn.net/v2/jpg/02/74/78/33/1000_F_274783399_szj9PsqgC6udORRWaOqKzBitZeeDLMe3.jpg");
background-repeat: no-repeat;
background-size: cover;
    }

    form {
        background: linear-gradient(to right, #ffffff, #e6f7ff);
        border-radius: 30px;
        padding: 20px 30px;
        width: 250px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    fieldset {
        border: none;
        margin: 0;
        padding: 0;
    }

    legend {
        font-size: 20px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
    }

    input[type="text"], input[type="email"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 40px;
        font-size: 14px;
    }

    /* Button Styles */
    input[type="submit"], input[type="reset"] {
        padding: 10px 20px;
        margin: 10px 5px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
        color: white;
    }

    /* Update Button */
    input[type="submit"] {
        background-color: #4CAF50;
    }

    input[type="submit"]:hover {
        box-shadow: 0 0 15px #4CAF50, 0 0 25px #4CAF50;
    }

    /* Reset Button */
    input[type="reset"] {
        background-color: #FF5722;
    }

    input[type="reset"]:hover {
        box-shadow: 0 0 15px #FF5722, 0 0 25px #FF5722;
    }

    /* GO TO Button */
    .go-to-link {
        display: inline-block;
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 10px 20px;
        background-color: #007BFF;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 14px;
        transition: all 0.3s ease-in-out;
    }

    .go-to-link:hover {
        box-shadow: 0 0 15px #007BFF, 0 0 25px #007BFF;
    }

    .go-to-link::after {
        content: none;
        font-size: 16px;
        font-weight: bold;
    }
</style>
</head>
<body>

<%
int staffId = Integer.parseInt(request.getParameter("id"));
UserDao userDao = new UserDao();
User staff = userDao.findUserById(staffId);
%>

<form action="updatestaff">
    <fieldset>
        <legend>UPDATE STAFF</legend>
        <label for="id">ID:</label><br>
        <input type="text" id="id" name="id" value="<%=staff.getId()%>" readonly="readonly"><br><br>
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="<%=staff.getName()%>"><br><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="<%=staff.getEmail()%>"><br><br>
        <input type="submit" value="UPDATE STAFF">
        <input type="reset" value="CANCEL">
    </fieldset>
</form>

<a href="menu.jsp" class="go-to-link">GO TO</a>

</body>
</html>
