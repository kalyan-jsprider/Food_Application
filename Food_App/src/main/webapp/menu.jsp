<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Food Products and Staff</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        text-align: center;
        margin-top: 50px;
        background-image: url("https://img.freepik.com/free-photo/flat-lay-assortment-different-vegetables-with-copy-space_23-2148655289.jpg");
        background-size: cover;
    }
    h1 {
        color: #6c7ae0;
    }
    /* Keyframes for multi-color animation */
    @keyframes colorChange {
        0% {
            background-color: #6c7ae0;
        }
        25% {
            background-color: #ff6347; /* Tomato */
        }
        50% {
            background-color: #32cd32; /* LimeGreen */
        }
        75% {
            background-color: #ff8c00; /* DarkOrange */
        }
        100% {
            background-color: #6c7ae0; /* Back to Blue */
        }
    }

    button {
        color: white;
        border: none;
        padding: 12px 24px;
        font-size: 16px;
        cursor: pointer;
        margin: 10px;
        border-radius: 5px;
        transition: transform 0.3s ease;
        animation: colorChange 4s infinite; /* Apply the color change animation */
    }

    button:hover {
        transform: scale(1.1); /* Zoom-in effect on hover */
    }

    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<h1>Manage Food Products and Staff</h1>

<a href="navigateToCreatefoodProduct">
    <button>ADD FOOD PRODUCT</button>
</a><br><br>

<a href="findAllFoodProduct">
    <button>FIND ALL FOOD PRODUCTS</button>
</a><br><br>

<a href="createstaff.jsp">
    <button>CREATE STAFF</button>
</a><br><br>

<a href="findAllStaff">
    <button>FIND ALL STAFF</button>
</a><br><br>

<a href="logout">
    <button>LOGOUT</button>
</a>

</body>
</html>
