<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    /* Global Styles */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        align-items: center;
        color: #ffffff;
        height: 100vh;
    }

    /* Background Video */
    .background-video {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1; /* Ensure video is behind other elements */
    }

    h1 {
        color: #fff;
        margin-top: 20px;
        z-index: 1;
    }

    /* Button Styles */
    .button {
        padding: 1rem 2rem;
        font-size: 1rem;
        color: #fff;
        background-color: #4CAF50;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
        z-index: 1;
    }

    .button:hover {
        background-color: #45a049;
        transform: scale(1.1);
    }

    /* Button Positions */
    .button-container {
        position: fixed;
        width: 100%;
        display: flex;
        justify-content: space-between;
        padding: 20px;
        box-sizing: border-box;
    }

    .left-buttons, .right-buttons {
        display: flex;
        gap: 10px;
    }

    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 2;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        justify-content: center;
        align-items: center;
    }
    .modal-content {
        background-color: #fefefe;
        padding: 20px;
        border: 1px solid #888;
        width: 300px;
        text-align: center;
        border-radius: 8px;
    }
    .modal-content button {
        padding: 8px 16px;
        margin: 10px 5px;
        border: none;
        color: #ffffff;
        border-radius: 4px;
        cursor: pointer;
    }
    .modal-content .confirm-btn {
        background-color: #4CAF50;
    }
    .modal-content .cancel-btn {
        background-color: #f44336;
    }
</style>
</head>
<body>
<!-- Background Video -->
<video class="background-video" autoplay loop muted>
    <source src="https://videos.pexels.com/video-files/4058085/4058085-uhd_2732_1440_25fps.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<%
    User admin = (User) session.getAttribute("admin");
    if (admin != null) {
%>
  

    <!-- Button Container -->
    <div class="button-container">
        <!-- Left Buttons -->
        <div class="left-buttons">
            <a href="createbranch.jsp"><button class="button">CREATE BRANCH</button></a>
        </div>

        <!-- Right Buttons -->
        <div class="right-buttons">
            <button class="button" onclick="confirmLogout()">LOGOUT</button>
            <a href="findAllBranch"><button class="button">FIND ALL</button></a>
            <a href="userSignup.jsp"><button class="button">HOME</button></a>
        </div>
    </div>

    <!-- Modal Structure -->
    <div id="logoutModal" class="modal">
        <div class="modal-content">
            <p>Are you sure you want to log out?</p>
            <button class="confirm-btn" onclick="executeLogout()">OK</button>
            <button class="cancel-btn" onclick="closeModal()">Cancel</button>
        </div>
    </div>

<%
    } else {
        response.getWriter().print("<h1 style='color:white;'>Please log in first</h1>");
        request.getRequestDispatcher("login.jsp").include(request, response);
    }
%>

<script>
    // Logout confirmation modal control
    function confirmLogout() {
        document.getElementById("logoutModal").style.display = "flex";
    }

    function closeModal() {
        document.getElementById("logoutModal").style.display = "none";
    }

    function executeLogout() {
        closeModal();
        window.location.href = "logout";
    }
</script>

</body>
</html>
