<%@page import="com.dto.FoodProduct"%>
<%@page import="com.dao.FoodProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Food Product</title>
<style>
    /* Base Button Styling */
    button, input[type="submit"], input[type="reset"] {
        border: 2px solid transparent;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 30px;
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease-in-out;
    }

    button::before, input[type="submit"]::before, input[type="reset"]::before {
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

    /* Glowing Effect for Button Hover */
    button:hover, input[type="submit"]:hover, input[type="reset"]:hover {
        animation: rainbowGlow 1.5s infinite linear;
    }

    button:hover::before, input[type="submit"]:hover::before, input[type="reset"]:hover::before {
        opacity: 1;
        width: 500%;
        height: 500%;
    }

    /* Rainbow Animation for Hover Effect */
    @keyframes rainbowGlow {
        0% {
            box-shadow: 0 0 10px 4px red, 0 0 20px 4px red;
        }
        14% {
            box-shadow: 0 0 10px 4px orange, 0 0 20px 4px orange;
        }
        28% {
            box-shadow: 0 0 10px 4px yellow, 0 0 20px 4px yellow;
        }
        42% {
            box-shadow: 0 0 10px 4px green, 0 0 20px 4px green;
        }
        57% {
            box-shadow: 0 0 10px 4px blue, 0 0 20px 4px blue;
        }
        71% {
            box-shadow: 0 0 10px 4px indigo, 0 0 20px 4px indigo;
        }
        85% {
            box-shadow: 0 0 10px 4px violet, 0 0 20px 4px violet;
        }
        100% {
            box-shadow: 0 0 10px 4px red, 0 0 20px 4px red;
        }
    }

    button:active, input[type="submit"]:active, input[type="reset"]:active {
        transform: scale(0.95);
    }

    button:focus, input[type="submit"]:focus, input[type="reset"]:focus {
        outline: none;
    }

    /* Custom Colors for Different Buttons */
    .update-btn {
        background-color: #4CAF50; /* Green */
    }

    .cancel-btn {
        background-color: #f44336; /* Red */
    }

    .logout-btn {
        background-color: #FF9800; /* Orange */
    }

    /* Form and Fieldset Styling */
    form {
        width: 400px;
        margin: 0 auto;
       
    }

    fieldset {
        padding: 20px;
        border: 2px solid #ddd;
    }

    legend {
        font-size: 20px;
        font-weight: bold;
    }

    input[type="text"] {
        padding: 8px;
        width: 100%;
        margin-bottom: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    /* Extra Styling */
    body {
        font-family: Arial, sans-serif;
        background-image: url("https://www.foodiesfeed.com/wp-content/uploads/2019/05/red-fruit-and-vegetables-on-a-white-background-4.jpg") ;
        background-size: cover;
    }

    a {
        text-decoration: none;
    }

</style>
</head>
<body>

<%
int foodProductId = Integer.parseInt(request.getParameter("fpid"));
// Fetch data from database
FoodProductDao dao = new FoodProductDao();
FoodProduct fp = dao.findFoodProductById(foodProductId);
%>

<form action="updatefoodproduct">
    <fieldset>
        <legend>UPDATE PRODUCT</legend>
        id: <input type="text" name="id" value="<%= fp.getId() %>" readonly="readonly"><br><br>
        name: <input type="text" name="name" value="<%= fp.getName() %>" readonly="readonly"><br><br>
        about: <input type="text" name="about" value="<%= fp.getAbout() %>"><br><br>
        price: <input type="text" name="price" value="<%= fp.getPrice() %>"><br><br>

        <input type="submit" class="update-btn" value="UPDATE">
        <input type="reset" class="cancel-btn" value="CANCEL">
        <button type="button" class="logout-btn" onclick="window.location.href='logout'">LOGOUT</button>
    </fieldset>
</form>

</body>
</html>
