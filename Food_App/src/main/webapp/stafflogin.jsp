<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
  /* Global Styling */
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    background-image: url("https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
  }

  .login-form {
    width: 100%;
    max-width: 250px;
    background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent background */
    padding: 2rem;
    border-radius: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    text-align: center;
    margin-right: 40%;
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

  label, input[type="email"], input[type="password"] {
    width: 100%;
    margin-bottom: 1rem;
    padding: 0.5rem;
    border: 1px solid #ddd;
    border-radius: 40px;
  }

  input[type="submit"],
  input[type="reset"],
  .home {
    width: 100%;
    padding: 0.75rem;
    border: none;
    border-radius: 40px;
    font-size: 1rem;
    margin-top: 1rem;
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

  .home {
    background-color: #007BFF;
    color: #fff;
    text-decoration: none;
  }

  .home:hover {
    background-color: #0069D9;
  }
</style>
</head>
<body>

<form action="staffLogin" class="login-form">
  <fieldset>
    <legend>Staff LOGIN PAGE</legend>

    <label for="email">Username:</label>
    <input type="email" id="email" name="email" required>

    <label for="pass">Password:</label>
    <input type="password" id="pass" name="pass" required>

    <input type="submit" value="LOGIN">
    <input type="reset" value="CANCEL"><br><br>
    <a href="userSignup.jsp" class="home">HOME</a>
  </fieldset>
</form>



</body>
</html>
