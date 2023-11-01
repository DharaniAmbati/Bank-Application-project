<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jsp.dto.Customer"%>
<%@ page import="com.jsp.dto.Bank"%>
  
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
<% Customer customer=(Customer)request.getAttribute("customer");%>
<% request.setAttribute("c",customer);%>
<center>
<h4 style="color: azure;">Person details...!</h4>
<table border="2px black" id="table2" style="width:70%" class="myTable">
<tr>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Delete</th>
<th>Update</th>
</tr>
<tr>
<td><%=customer.getName()%></td>
<td><%=customer.getEmail()%></td>
<td><%=customer.getPhone()%></td>
<td><%=customer.getAddress()%></td>
<td><a href="edit?id=<%=customer.getId()%>">Update</a></td>
<td><a href="delete?id=<%=customer.getId()%>">Delete</a></td>
</tr>
</table>
</center>
<% Bank bank=(Bank)request.getAttribute("bank");%>
<br> <br> <br> <br>
<center>
<h4 style="color: azure;">Bank details...!</h4>
<table border="2px black" id="table2" style="width:70%" class="myTable">
<tr>
<th>Account Number</th>
<th>IFC Number</th>
<th>Branch</th>
<th>Balance</th>
<th>Add balance</th>
</tr>
<tr>
<td><%=bank.getAccountNumber() %></td>
<td><%=bank.getIFCcode()%></td>
<td><%=bank.getBranchName()%></td>
<td><%=bank.getAvilableBalance()%></td>
<td><a href="#">Add Ammount</a> </td>
</tr>
</table> <br>
<a style="color: azure;" href="Home.jsp">HOME-PAGE</a>
</center>

</body>
</html>