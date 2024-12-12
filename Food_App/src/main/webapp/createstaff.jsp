<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE STAFF</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        text-align: center;
        margin: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background-image: url("https://img.freepik.com/free-photo/flat-lay-assortment-different-vegetables-with-copy-space_23-2148655289.jpg");
        background-size: cover;
    }

    .form-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
    }

    /* Base Button Styling */
    button, input[type="submit"], input[type="reset"] {
        border: none;
        color: white;
        padding: 10px 20px;
        font-size: 14px;
        cursor: pointer;
        border-radius: 5px;
        position: relative;
        transition: all 0.3s ease-in-out;
        margin-top: 10px;
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

    /* Button Hover Effect with Rainbow Glow */
    button:hover, input[type="submit"]:hover, input[type="reset"]:hover {
        animation: rainbowGlow 1.5s infinite linear;
    }

    button:hover::before, input[type="submit"]:hover::before, input[type="reset"]:hover::before {
        opacity: 1;
        width: 500%;
        height: 500%;
    }

    /* Rainbow Glow Animation */
    @keyframes rainbowGlow {
        0% { box-shadow: 0 0 10px red; }
        20% { box-shadow: 0 0 10px orange; }
        40% { box-shadow: 0 0 10px yellow; }
        60% { box-shadow: 0 0 10px green; }
        80% { box-shadow: 0 0 10px blue; }
        100% { box-shadow: 0 0 10px violet; }
    }

    /* Unique Colors for Each Button */
    input[type="submit"] {
        background-color: #4CAF50; /* Green for CREATE STAFF */
    }

    input[type="reset"] {
        background-color: #FF5722; /* Red for CANCEL */
    }

    /* GO TO Link Styling */
    .go-to-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        color: white;
        background-color: #333;
        border-radius: 5px;
        text-decoration: none;
        font-size: 14px;
        text-align: center;
        transition: all 0.3s ease-in-out;
    }
    .go-to-link:hover {
        animation: rainbowGlow 1.5s infinite linear;
    }

</style>
</head>
<body>

<div class="form-container">
    <form action="createStaff">
        <fieldset>
            <legend>CREATE STAFF</legend>
            name:<input type="text" name="name" required><br><br>
            email:<input type="email" name="email" required><br><br>
            password:<input type="password" name="pass" required><br><br>
            <input type="submit" value="CREATE STAFF">
            <input type="reset" value="CANCEL">
        </fieldset>
    </form>

    <a href="menu.jsp" class="go-to-link">GO TO</a>
</div>

</body>
</html>
