<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Signup</title>
<style>
  /* Global Styling */
  body {
    font-family: Arial, sans-serif;
    background-image: url("https://t3.ftcdn.net/jpg/09/83/88/84/240_F_983888431_qRoR4J0OtixVyZ3XjEXrLHuIvpRqb30P.jpg");
    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin-right: 10%;
  }

  .signup-form {
    width: 100%;
    max-width: 250px;
    background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent background */
    padding: 2rem;
    border-radius: 40px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    text-align: center;
  }

  fieldset {
    border: none;
    padding: 0;
  }

  legend {
    font-size: 1.5rem;
    color: #333;
    margin-bottom: 1rem;
    font-weight: bold;
  }

  label, input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
    width: 100%;
    padding: 0.5rem;
    margin-bottom: 1rem;
    border: 1px solid #ddd;
    border-radius: 30px;
  }

  input[type="submit"], input[type="reset"] {
    width: 100%;
    padding: 0.75rem;
    border: none;
    border-radius: 40px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }

  input[type="reset"] {
    background-color: #f44336;
    color: #fff;
  }

  input[type="reset"]:hover {
    background-color: #e53935;
  }

</style>
</head>
<body>

<form action="customersignup" class="signup-form">
  <fieldset>
    <legend>Customer Signup</legend>
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="pass">Password:</label>
    <input type="password" id="pass" name="pass" required>

    <label for="mob">Mobile:</label>
    <input type="tel" id="mob" name="mob" required>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required>

    <input type="submit" value="SIGNUP">
    <input type="reset" value="CANCEL">
  </fieldset>
</form>

</body>
</html>
