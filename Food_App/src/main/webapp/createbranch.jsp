<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Branch</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        display: flex;
        flex-direction: column;
        align-items: center;
        background-image: url("https://img.freepik.com/free-photo/flat-lay-assortment-different-vegetables-with-copy-space_23-2148655289.jpg");
        background-size: cover;
        margin: 0;
    }

    /* Navbar Styling */
    .navbar {
        width: 100%;
        display: flex;
        align-items: center;
        padding: 15px;
        justify-content: space-between;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        background: linear-gradient(90deg, #ff0000, #ff7f00, #ffff00, #00ff00, #0000ff, #4b0082, #8b00ff);
        background-size: 400% 400%;
        animation: rainbow 8s infinite alternate;
    }

    /* Rainbow Animation */
    @keyframes rainbow {
        0% { background-position: 0% 50%; }
        100% { background-position: 100% 50%; }
    }

    .navbar img {
        height: 60px;
        width: 100px;
        margin-right: auto;
        align-items: center;
       border-radius: 40%;
    }

    .navbar a {
        color: #ffffff;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 1rem;
        margin: 0 10px;
    }

    .navbar a:hover {
        background-color: rgba(255, 255, 255, 0.2);
    }

    /* Form Styling */
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        margin-top: 50px;
    }
    fieldset {
        border: 1px solid #cccccc;
        padding: 15px;
        border-radius: 8px;
    }
    legend {
        font-weight: bold;
        color: #333;
    }
    input[type="text"], input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #cccccc;
        border-radius: 4px;
    }

    /* Button Styles */
    input[type="submit"], input[type="reset"] {
        padding: 10px;
        width: 100%;
        border: none;
        color: #ffffff;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
    }
    input[type="submit"] {
        background: linear-gradient(45deg, #4CAF50, #8BC34A);
        margin-top: 10px;
    }
    input[type="reset"] {
        background: linear-gradient(45deg, #f44336, #e57373);
        margin-top: 10px;
    }

    /* Glowing Hover Effect */
    @keyframes glowing {
        0% { box-shadow: 0 0 5px #4CAF50, 0 0 10px #4CAF50, 0 0 15px #4CAF50; }
        50% { box-shadow: 0 0 20px #8BC34A, 0 0 30px #8BC34A, 0 0 40px #8BC34A; }
        100% { box-shadow: 0 0 5px #4CAF50, 0 0 10px #4CAF50, 0 0 15px #4CAF50; }
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        animation: glowing 1.5s infinite alternate;
    }

    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
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
    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
    }
    .close:hover {
        color: #000;
    }
</style>
</head>
<body>

<!-- Navbar with Logo, Home, and Logout Links -->
<div class="navbar">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgMhsu108t3J4svZdDAyBdPYi3aPWoIafR8sxZKvwIk55hHXHhQcazLcXfj1xQud-oVYQ&usqp=CAU" alt="Logo">
    <a href="userSignup.jsp">HOME</a>
    <a href="logout">LOGOUT</a>
</div>

<!-- Branch Creation Form -->
<form id="branchForm" action="createbranch" method="get">
    <fieldset>
        <legend>CREATE BRANCH</legend>
        <label>Branch Name:</label>
        <input type="text" name="bn" required><br><br>
        <label>Address:</label>
        <input type="text" name="address" required><br><br>
        <label>Phone Number:</label>
        <input type="tel" name="mob" required><br><br>
        <input type="submit" value="CREATE BRANCH">
        <input type="reset" value="CANCEL">
    </fieldset>
</form>

<!-- Modal Structure -->
<div id="confirmationModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <p>Branch created successfully!</p>
        <button onclick="submitForm()">OK</button>
    </div>
</div>

<script>
    document.getElementById("branchForm").onsubmit = function(event) {
        event.preventDefault();
        document.getElementById("confirmationModal").style.display = "flex";
    };

    function closeModal() {
        document.getElementById("confirmationModal").style.display = "none";
    }

    function submitForm() {
        closeModal();
        document.getElementById("branchForm").submit();
    }
</script>
</body>
</html>
