<%@page import="com.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Food Product</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-image:url("https://t3.ftcdn.net/jpg/05/89/70/46/360_F_589704609_b84XoVDaeopctL2Iz0lG4IQT86Dzm7xz.jpg");
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background: #fff;
        border-radius: 40px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 250px;
        text-align: center;
    }

    h1 {
        color: #6c7ae0;
        font-size: 24px;
        margin-bottom: 30px;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 5px;
        
    }

    input[type="text"],
    input[type="submit"],
    input[type="reset"],
    input[type="radio"] {
        padding: 10px;
        font-size: 16px;
        border-radius: 30px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
        transition: border-color 0.3s ease, transform 0.3s ease;
    }

    input[type="radio"] {
        width: auto;
    }

    input[type="text"]:focus,
    input[type="submit"]:hover,
    input[type="reset"]:hover {
        border-color: green;
        transform: scale(1.05);
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: #6c7ae0;
        color: white;
        cursor: pointer;
        border: none;
        font-weight: bold;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #5555e6;
    }

    .radio-group {
        display: flex;
        justify-content: center;
        gap: 15px;
        align-items: center;
    }

    .radio-group input {
        width: auto;
    }

    .cancel-btn {
        background-color: #f44336;
    }

    .cancel-btn:hover {
        background-color: #e53935;
    }

    a {
        text-decoration: none;
        display: inline-block;
        margin-top: 20px;
        font-size: 16px;
    }

    a button {
        background-color: #6c7ae0;
        color: white;
        padding: 12px 24px;
        border: none;
        border-radius: 30px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s, transform 0.3s ease;
    }

    a button:hover {
        background-color: #5555e6;
        transform: scale(1.1);
    }

</style>
</head>
<body>

<div class="form-container">
    <h1>Create Food Product</h1>
    <form action="createFoodProduct">
        <input type="text" name="name" placeholder="Product Name" required><br><br>

        <div class="radio-group">
            <label>Type:</label>
            <input type="radio" name="type" value="veg" required> VEG
            <input type="radio" name="type" value="non_veg" required> NON-VEG
        </div><br><br>

        <input type="text" name="about" placeholder="About Product" required><br><br>
        <input type="text" name="price" placeholder="Price" required><br><br>

        <input type="submit" value="Create Food Product">
        <input type="reset" class="cancel-btn" value="Cancel">
    </form>

    <a href="logout"><button>Logout</button></a>
</div>

</body>
</html>
