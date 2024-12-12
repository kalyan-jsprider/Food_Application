<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://i0.wp.com/picjumbo.com/wp-content/uploads/fall-background-with-space-for-text-free-image.jpeg?w=600&quality=80') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        .container {
            max-width: 800px;
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
            animation: zoomIn 1.5s ease-in-out;
        }

        @keyframes zoomIn {
            from {
                transform: scale(0.5);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        p {
            line-height: 1.6;
            font-size: 16px;
            animation: slideUp 2s ease-in-out;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .highlight {
            color: #007bff;
            font-weight: bold;
        }

        @media (max-width: 600px) {
            .container {
                margin: 20px;
                padding: 15px;
            }

            h1 {
                font-size: 24px;
            }

            p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>About Us</h1>
        <p>
            Welcome to <span class="highlight">Foodapp</span>, a platform where the love for food meets cutting-edge technology. We believe food is more than just sustenance; it's a celebration of culture, tradition, and togetherness. Our mission is to make every dining experience memorable and seamless.
        </p>
        <p>
            Whether you're craving a hearty meal, exploring new cuisines, or connecting with your favorite local restaurants, <span class="highlight">Foodapp</span> is here to make it easy, reliable, and delightful. We take pride in offering an extensive range of options tailored to your tastes and preferences.
        </p>
       
        <p>
            At <span class="highlight">Foodapp</span>, we are more than just a service—we are a community. Your satisfaction and feedback drive us to continually improve and expand our offerings, ensuring we bring you the very best of the culinary world. Let’s embark on this flavorful journey together.
        </p>
    </div>
</body>
</html>
