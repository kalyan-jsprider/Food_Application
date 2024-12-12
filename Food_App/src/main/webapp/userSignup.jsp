<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup Page</title>
<style>
/* Global Styles */
body {
  font-family: Arial, sans-serif;
  background-image: url("https://as1.ftcdn.net/v2/jpg/08/26/59/98/1000_F_826599844_xSJhSxd2hVjFMhJN18mB03SifwN6cXUA.jpg");
  background-size: cover;
  background-position: center;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  height: 100vh;
  margin: 0;
}

.signup-form {
  width: 100%;
  max-height:500px;
  max-width: 250px;
  background-image:url("https://as1.ftcdn.net/v2/jpg/09/83/88/84/1000_F_983888431_qRoR4J0OtixVyZ3XjEXrLHuIvpRqb30P.jpg");
  padding: 2rem;
  border-radius: 50px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  margin-right: 20%;
}

fieldset {
  border: none;
  padding: 0;
}

legend {
  font-size: 1.5rem;
  color: #333;
  margin-bottom: 1rem;
  text-align: center;
}

label {
  display: block;
  margin-bottom: 0.5rem;
  color: black;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 0.5rem;
  margin-bottom: 1rem;
  border: 1px solid #ddd;
  border-radius: 30px;
}

.role-options {
  display: flex;
  gap: 15px;
}

.btn-submit,
.btn-reset {
  width: 100%;
  padding: 0.75rem;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
  margin-top: 1rem;
}

.btn-submit {
  background-color: #4CAF50;
  color: #fff;
  transition: background-color 0.3s ease;
}

.btn-submit:hover {
  background-color: #45a049;
}

.btn-reset {
  background-color: #f44336;
  color: #fff;
  transition: background-color 0.3s ease;
}

.btn-reset:hover {
  background-color: #e53935;
}

.login-links {
  margin-top: 1.5rem;
  text-align: center;
  margin-right: 20%;
}

.login-links p {
  color: #333;
}

.login-links a {
  color: #4CAF50;
  text-decoration: none;
  font-weight: bold;
}

.login-links a:hover {
  text-decoration: underline;
}

/* Modal Styles */
.modal {
  display: none;
  position: fixed;
  z-index: 100;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
  background-color: #fff;
  margin: 15% auto;
  padding: 20px;
  border-radius: 10px;
  width: 300px;
  text-align: center;
}

.modal-content h2 {
  color: #4CAF50;
  font-size: 24px;
}

.modal-content button {
  margin-top: 20px;
  padding: 10px 20px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.modal-content button:hover {
  background-color: #45a049;
}
.modal-content img{
width: 100px;
margin-top: -50px;
border-radius: 50%;
box-shadow: blue;

}
</style>
</head>
<body>

<form action="userSignup" class="signup-form" onsubmit="return showPopup()">
  <fieldset>
    <legend>User Signup</legend>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="pass">Password:</label>
    <input type="password" id="pass" name="pass" required><br>

    <label>Role:</label>
    <div class="role-options">
      <input type="radio" id="admin" name="role" value="admin">
      <label for="admin">Admin</label>
      <input type="radio" id="branchmanager" name="role" value="branchmanager">
      <label for="branchmanager">Branch Manager</label>
    </div>
    <div>
      <input type="submit" value="SIGNUP" class="btn-submit">
    </div>
    <input type="reset" value="CANCEL" class="btn-reset">
  </fieldset>
</form>

<div class="login-links">
  <p>Already have an account as Admin or Branch Manager? <a href="login.jsp">Login Now</a></p>
  <p>Already have an account as Staff? <a href="stafflogin.jsp">Login Now</a></p>
  <p>Login as Customer? <a href="customerlogin.jsp">Login Now</a></p>
</div>

<!-- Modal Popup -->
<div id="successModal" class="modal">
  <div class="modal-content">
   <img src="https://www.clipartmax.com/png/middle/474-4742342_check-mark-in-powerpoint-tik-png.png" height="100px" width="200px">
    <h2>Thank you</h2>
    <p>signup sccessfully</p>
   
    
    <button onclick="redirectToLogin()">OK</button>
  </div>
</div>

<script>
function showPopup() {
  // Show the modal
  document.getElementById("successModal").style.display = "block";
  return false; // Prevent form submission
}

function redirectToLogin() {
  // Hide the modal
  document.getElementById("successModal").style.display = "none";
  // Redirect to login page
  window.location.href = "login.jsp";
}
</script>

</body>
</html>
