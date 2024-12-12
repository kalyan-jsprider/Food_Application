<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        .container {
            max-width: 300px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            text-align: center;
            color: #007bff;
            animation: slideIn 1.5s ease-in-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
        }

        input, textarea {
            width: auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input:focus, textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-10px);
            }
            60% {
                transform: translateY(-5px);
            }
        }

        button:hover {
            background-color: #0056b3;
        }

        .contact-info {
            text-align: center;
            margin-top: 20px;
        }

        .contact-info p {
            margin: 5px 0;
        }

        .contact-info a {
            color: #007bff;
            text-decoration: none;
        }

        .contact-info a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .container {
                margin: 20px;
                padding: 15px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Contact Us</h1>
        <form action="contactServlet" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>

            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="message">Your Message:</label>
            <textarea id="message" name="message" rows="5" placeholder="Write your message here" required></textarea>

            <button type="submit">Send Message</button>
        </form>

        <div class="contact-info">
            <p>Or reach us at:</p>
            <p>Email: <a href="mailto:support@foodapp.com">support@foodapp.com</a></p>
            <p>Phone: <a href="tel:+1234567890">+1 234 567 890</a></p>
        </div>
    </div>
</body>
</html>