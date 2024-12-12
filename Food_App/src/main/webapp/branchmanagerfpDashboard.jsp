<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRANCH MANAGER DASHBOARD</title>
<style>
body{
background-image: url("https://img.freepik.com/free-photo/green-herbal-salad-cup-concrete-table_114579-56757.jpg");
background-repeat: no-repeat;
background-size: cover;
}
    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 8px 12px;
        text-align: center;
        border: 1px solid black;
    }

    th {
        background-color: #f2f2f2;
    }

    /* Base Button Styling */
    button {
        border: 2px solid transparent;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease-in-out;
    }

    button::before {
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

    /* Glowing Effect for Button Hover */
    button:hover {
        animation: rainbowGlow 1.5s infinite linear;
        box-shadow: 0 0 10px 4px rgba(0, 255, 255, 0.7), 0 0 20px 4px rgba(0, 255, 255, 0.7);
    }

    button:hover::before {
        opacity: 1;
        width: 500%;
        height: 500%;
    }

    /* Rainbow Animation for Hover Effect */
    @keyframes rainbowGlow {
        0% {
            box-shadow: 0 0 10px 4px red, 0 0 20px 4px red;
        }
        14% {
            box-shadow: 0 0 10px 4px orange, 0 0 20px 4px orange;
        }
        28% {
            box-shadow: 0 0 10px 4px yellow, 0 0 20px 4px yellow;
        }
        42% {
            box-shadow: 0 0 10px 4px green, 0 0 20px 4px green;
        }
        57% {
            box-shadow: 0 0 10px 4px blue, 0 0 20px 4px blue;
        }
        71% {
            box-shadow: 0 0 10px 4px indigo, 0 0 20px 4px indigo;
        }
        85% {
            box-shadow: 0 0 10px 4px violet, 0 0 20px 4px violet;
        }
        100% {
            box-shadow: 0 0 10px 4px red, 0 0 20px 4px red;
        }
    }

    button:active {
        transform: scale(0.95);
    }

    button:focus {
        outline: none;
    }

    /* Custom Colors for Different Buttons */
    .update-btn {
        background-color: #4CAF50; /* Green */
    }

    .delete-btn {
        background-color: #f44336; /* Red */
    }

    .status-btn {
        background-color: #FF9800; /* Orange */
    }

    /* Add a smooth transition to table rows */
    tr {
        transition: background-color 0.3s ease;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    /* Link Styling */
    a {
        text-decoration: none;
    }

    /* Extra Styling */
    body {
        font-family: Arial, sans-serif;
    }
</style>
</head>
<body>

	<%
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>

	<table>
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>CHANGE STATUS</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		int i=1;
		for (FoodProduct f : list) {
		%>

			<tr>
			<td><%=i++ %></td>
			<td><%=f.getId() %></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability() %></td>
			<td><%=f.getAbout() %></td>
			<td><%=f.getPrice() %></td>
			<td><%=f.getType() %></td>
			<td><a href="changeAvailability?id=<%=f.getId()%>"><button class="status-btn">CHANGE STATUS</button></a></td>
			<td><a href="updatefoodproduct.jsp?fpid=<%=f.getId()%>"><button class="update-btn">UPDATE</button></a></td>
			<td><a href="deletefoodproduct?fpid=<%=f.getId()%>"><button class="delete-btn">DELETE</button></a></td>
			</tr>
		<%
		}
		%>
	</table>
<a href="createfoodProduct.jsp"><button class="update-btn">ADD FOOD PRODUCT</button></a>
<a href="menu.jsp"><button class="status-btn">HOME</button></a>
<a href="logout"><button class="delete-btn">LOGOUT</button> </a>

</body>
</html>
