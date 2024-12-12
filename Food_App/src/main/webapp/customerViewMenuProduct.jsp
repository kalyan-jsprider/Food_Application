<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MENU LIST</title>
<style>
    /* Base Button Styling */
    input[type="submit"], input[type="reset"] {
        border: none;
        color: white;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        margin: 10px 0;
        position: relative;
        transition: all 0.3s ease-in-out;
    }

    /* ORDER Button Styling */
    input[type="submit"] {
        background-color: #4CAF50; /* Green for ORDER */
        box-shadow: 0 0 10px #4CAF50;
    }
    input[type="submit"]:hover {
        animation: glowing 1.5s infinite;
    }

    /* CANCEL Button Styling */
    input[type="reset"] {
        background-color: #FF5722; /* Orange for CANCEL */
        box-shadow: 0 0 10px #FF5722;
    }
    input[type="reset"]:hover {
        animation: glowingOrange 1.5s infinite;
    }

    /* Glow animations */
    @keyframes glowing {
        0% { box-shadow: 0 0 10px #4CAF50, 0 0 20px #4CAF50; }
        50% { box-shadow: 0 0 20px #81C784, 0 0 30px #81C784; }
        100% { box-shadow: 0 0 10px #4CAF50, 0 0 20px #4CAF50; }
    }

    @keyframes glowingOrange {
        0% { box-shadow: 0 0 10px #FF5722, 0 0 20px #FF5722; }
        50% { box-shadow: 0 0 20px #FF8A65, 0 0 30px #FF8A65; }
        100% { box-shadow: 0 0 10px #FF5722, 0 0 20px #FF5722; }
    }

    /* Table styling */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #333;
        color: white;
    }
</style>
</head>
<body>

	<%
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>
	
	<h1>MENU LIST</h1>

<form action="foodorder">

	<table border="1px solid black" cellspacing="2px" cellpadding="2px">
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>ORDER</th>
			<th>QUANTITY</th>
		</tr>

		<%
		int i = 1;
		for (FoodProduct f : list) {
			if (f.isAvailability()) {
		%>

		<tr>
			<td><%=i++%></td>
			<td><%=f.getId()%></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability()%></td>
			<td><%=f.getAbout()%></td>
			<td><%=f.getPrice()%></td>
			<td><%=f.getType()%></td>
			<td><input type="checkbox" name="fp" value="<%=f.getId()%>"></td>
			<td><input type="text" name="quantity" value="0"></td>
		</tr>
		<%
			}
		}
		%>

	</table>
	<input type="submit" value="ORDER">
	<input type="reset" value="CANCEL">
</form>

</body>
</html>
