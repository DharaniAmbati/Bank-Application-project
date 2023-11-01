<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ page import="com.jsp.dto.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#table2 {
  		border-collapse: collapse;
	}
	body {
		background-color: #2b4162;
		background-image: linear-gradient(315deg, #2b4162 0%, #12100e 74%);
		background-repeat: no-repeat;
  		background-attachment: fixed;
		}
.myTable { 
  width: 100%;
  text-align: left;
  background-color: rgb(186, 181, 181);;
  border-collapse: collapse; 
  }
.myTable th { 
  background-color: rgb(66, 59, 59);;
  color: white; 
  }
.myTable td, 
.myTable th { 
  padding: 10px;
  border: 1px solid goldenrod; 
  }
</style>
</head>
<body>
<% List<Customer> list=(List<Customer>)request.getAttribute("customer");%>
<center>
<h4 style="color: azure;">All Persons details...!</h4>
<table border="2px black" id="table2" style="width:70%" class="myTable">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
</tr>
<%for (Customer customer : list) {%>
<tr>
<td><%=customer.getId()%></td>
<td><%=customer.getName()%></td>
<td><%=customer.getEmail()%></td>
<td><%=customer.getPhone()%></td>
</tr>
<%}%>
</table> <br> <br>
<a style="color: azure;" href="Home.jsp">HOME-PAGE</a>
</center>
</body>
</html>