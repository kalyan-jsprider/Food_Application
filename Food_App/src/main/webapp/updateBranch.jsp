<%@page import="com.dto.Branch"%>
<%@page import="com.dao.BrachDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Branch</title>
<style>
  /* General Body Styling */
  body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #4e54c8, #8f94fb);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    color: #333;
  }

  /* Form Container with Border Animation */
  .form-container {
    background-color: #ffffff;
    padding: 1rem; /* Reduced padding for smaller height */
    width: 280px; /* Slightly narrower width */
    border-radius: 20px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    text-align: center;
    position: relative;
    overflow: hidden;
  }

  .form-container::before {
    content: '';
    position: absolute;
    top: -2px;
    left: -2px;
    right: -2px;
    bottom: -2px;
    background: linear-gradient(45deg, #ff8a00, #e52e71, #0072ff, #00c6ff, #56ab2f, #a8e063);
    z-index: -1;
    border-radius: 14px;
    padding: 2px;
    animation: borderAnimation 8s linear infinite;
  }

  /* Border Animation */
  @keyframes borderAnimation {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
  }

  .form-container h2 {
    font-size: 1.5rem; /* Reduced font size for smaller height */
    color: #4e54c8;
    margin-bottom: 0.8rem; /* Less margin below heading */
  }

  /* Input Fields */
  label {
    display: block;
    margin: 0.4rem 0 0.3rem;
    font-weight: bold;
    font-size: 0.9rem; /* Slightly smaller font size */
  }

  input[type="text"],
  input[type="tel"] {
    width: 100%;
    padding: 0.2rem; /* Reduced padding for smaller height */
    margin-bottom: 0.8rem; /* Less margin between fields */
    border-radius: 8px;
    border: 1px solid #ddd;
    box-sizing: border-box;
    font-size: 0.9rem; /* Smaller font size */
  }

  /* Button Styling with Animations */
  .btn {
    width: 100%;
    padding: 0.6rem; /* Reduced padding for smaller height */
    font-size: 0.9rem; /* Smaller font size */
    font-weight: bold;
    color: #fff;
    border: none;
    border-radius: 8px;
    margin: 6px 0; /* Reduced margin between buttons */
    cursor: pointer;
    transition: transform 0.3s;
    background-size: 200% auto;
    background-position: 0% 50%;
    animation: colorShift 4s linear infinite;
  }

  /* Unique Colors and Animations for Each Button */
  .btn-update {
    background-image: linear-gradient(45deg, #00c6ff, #0072ff, #00c6ff);
  }

  .btn-cancel {
    background-image: linear-gradient(45deg, #ff4b2b, #ff416c, #ff4b2b);
  }

  .btn-logout {
    background-image: linear-gradient(45deg, #56ab2f, #a8e063, #56ab2f);
  }

  .btn-home {
    background-image: linear-gradient(45deg, #ff8a00, #e52e71, #ff8a00);
  }

  /* Hover Animation */
  .btn:hover {
    transform: scale(1.05);
  }

  /* Multi-color Animation Keyframes */
  @keyframes colorShift {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
  }
</style>
</head>
<body>

<%
  int branchId = Integer.parseInt(request.getParameter("id"));
  BrachDao dao = new BrachDao();
  Branch branch = dao.findBranchById(branchId);
%>

<!-- Update Branch Form -->
<div class="form-container">
  <h2>Update Branch</h2>
  <form action="updateBranch">
    <label>ID:</label>
    <input type="text" name="id" value="<%=branch.getId()%>" readonly="readonly">

    <label>Branch Name:</label>
    <input type="text" name="bn" value="<%=branch.getBranchname()%>">

    <label>Address:</label>
    <input type="text" name="address" value="<%=branch.getAddress()%>">

    <label>Phone Number:</label>
    <input type="tel" name="mob" value="<%=branch.getPhonenumber()%>">

    <!-- Animated Buttons -->
    <button type="submit" class="btn btn-update">Update Branch</button>
    <button type="reset" class="btn btn-cancel">Cancel</button>
  </form>
  
  <!-- Additional Links with Buttons -->
  <a href="logout"><button class="btn btn-logout">Admin Logout</button></a>
  <a href="userSignup.jsp"><button class="btn btn-home">Home</button></a>
</div>

</body>
</html>
