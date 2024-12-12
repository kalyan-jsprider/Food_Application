

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodApp</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<style>
  
@charset "UTF-8";
/* Reset some default styles */
body, h1, h2, h3, h4, p, ul, li, input, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Basic styling */
body {
    font-family: 'Poppins', sans-serif;
    line-height: 1.6;
}

header {
    background-color:blue;
    color: #fff;
    padding: 1rem 0;
}

header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 80%;
    margin: 0 auto;
}

header.logo {
    align-items: center;
    border-radius: 40%;
}

nav ul {
    list-style: none;
    display: flex;
}

nav ul li {
    margin-left: 1rem;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
}

nav .dropdown-menu {
    display: none;
    position: absolute;
    background-color: rgb(0, 255, 128);
    padding: 0.5rem;
    list-style: none;
}

nav .dropdown:hover .dropdown-menu {
    display: block;
}

.hero {
    background: url('https://images.unsplash.com/photo-1647109063447-e01ab743ee8f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cmVzdGF1cmFudHN8ZW58MHx8MHx8fDA%3D') no-repeat center center/cover;
    color: #e02d2d;
    padding: 4rem 0;
    text-align: center;
}

.hero h2 {
    font-size: 2rem;
    margin-bottom: 0.5rem;
}

.hero form {
    margin-top: 1rem;
}

.hero input[type="text"] {
    padding: 0.5rem;
    border: none;
    border-radius: 5px;
    width: 60%;
}

.hero button {
    padding: 0.5rem 1rem;
    border: none;
    background-color: #f60;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
}


.restaurants {
    padding: 2rem 0;
}

.restaurant-list {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.restaurant-card {
    border: 1px solid #ddd;
    border-radius: 5px;
    overflow: hidden;
    width: 30%;
    margin-bottom: 1rem;
    text-align: center;
}

.restaurant-card img {
    width: 100%;
    height: auto;
}

.restaurant-card button {
    background-color: #f60;
    color: #fff;
    border: none;
    padding: 0.5rem;
    cursor: pointer;
    border-radius: 5px;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
}
.no-scrollbar::-webkit-scrollbar {
    display: none;
  }
  .img-container img:hover{
    box-shadow: 0 0 18px black;
  }
</style>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="logo">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgMhsu108t3J4svZdDAyBdPYi3aPWoIafR8sxZKvwIk55hHXHhQcazLcXfj1xQud-oVYQ&usqp=CAU" alt="" height="80px" width="100px">
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="userSignup.jsp" id="login-btn">signup</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h2>Discover the Best Food & Restaurants Near You</h2>
            <p>Explore new cuisines, order online, and get it delivered to your doorstep!</p>
            <form action="#">
                <input type="text" name="Search" placeholder="Search for restaurants or dishes...">
                <button type="submit">Search</button>
            </form>
        </div>
    </section>
    <h1 class="mx-7 my-3 text-2xl">List of Food</h1>

    <!-- Image container with sliding buttons -->
    <div class="relative mx-7">
        <button id="slideLeft" class="absolute left-0 top-1/2 transform -translate-y-1/2 bg-sky-500 hover:bg-sky-600 text-white font-bold py-2 px-4 rounded-l">◀</button>
        
        <div id="imageContainer" class="img-container overflow-auto flex justify-evenly items-center no-scrollbar rounded-lg space-x-7 bg-sky-400 py-10 px-9">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/4/17/1a170357-6a8a-4f7e-a1ca-18f56d041eb5_383830.JPG" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/6/11/4c140390-e252-47b2-a5aa-6d199918bb10_216675.JPG" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/7/18/1e758fd4-0981-4f7f-900a-8ce02714a4b9_769456.jpg" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/jlkzppprdiyhxnely1qm" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/9/13/eb3dba73-6835-41d6-b047-00baf7b0fb02_697216.JPG" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/ub35uaf2iferroprejgy" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/vuygl4mrkquhg0ma5dqv" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/8f52ceb30e31faed0c2d6ee81b8c639d" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/55614156379db324675650213bb544a8" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg">  
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/dvaa3cfy1v7tkdmesb7s" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg"> 
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/8/13/b300cfc1-f5ba-4d5e-ac72-78140a01469d_834820.jpg" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg"> 
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/1154cffac2453eb0bf7fdda7e5ea1659" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg"> 
            <img src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/0b69d733f3174c1d7ef9829e2a2fc33b" alt="" class="h-60 w-40 hover:scale-125 ease-in-out duration-300 rounded-lg"> 
        
        </div>
        
        <button id="slideRight" class="absolute right-0 top-1/2 transform -translate-y-1/2 bg-sky-500 hover:bg-sky-600 text-white font-bold py-2 px-4 rounded-r">▶</button>
    </div>
  

    <!-- Restaurant Listings -->
     
    <section class="restaurants">
     <div id="imageContainer" class="img-container overflow-auto flex justify-evenly items-center no-scrollbar rounded-lg space-x-7 bg-sky-400 py-10 px-9">
        <div class="container">
            <h3>Popular Restaurants</h3>
            <div class="restaurant-list">
                <div class="restaurant-card">
                    <img src="https://plus.unsplash.com/premium_photo-1670984940113-f3aa1cd1309a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudHN8ZW58MHx8MHx8fDA%3D" alt="Restaurant 1">
                    <h4>Restaurant 1</h4>
                    <p>Italian, Fast Food</p>
                    <button>Order Now</button>
                </div>
                <div class="restaurant-card">
                    <img src="https://plus.unsplash.com/premium_photo-1661883237884-263e8de8869b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmVzdGF1cmFudHN8ZW58MHx8MHx8fDA%3D" alt="Restaurant 2">
                    <h4>Restaurant 2</h4>
                    <p>Chinese, Sushi</p>
                    <button>Order Now</button>
                </div>
                <div class="restaurant-card">
                    <img src="https://plus.unsplash.com/premium_photo-1661953124283-76d0a8436b87?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D" alt="Restaurant 3">
                    <h4>Restaurant 3</h4>
                    <p>Indian, Desserts</p>
                    <button>Order Now</button>
                </div>
            </div>
        </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2024 FoodApp. All rights reserved.</p>
        </div>
    </footer>

    <script src="index.js"></script>
</body>
</html>

