<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.dto.Bank"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <Style>
  body {
		background-color: #2b4162;
background-image: linear-gradient(315deg, #2b4162 0%, #12100e 74%);

		background-repeat: no-repeat;
  		background-attachment: fixed;
}
    #aa{
      width: 42%;
      padding-top: 180px;
      padding-left: 400px;
    }
  .form {
  display: flex;
  flex-direction: column;
  gap: 10px;
  padding-left: 120px;
  padding-right: 200px;
  padding-bottom: 0.4em;
  background-color: #171717;
  border-radius: 25px;
  transition: .4s ease-in-out;
  }

.form:hover {
  transform: scale(1.05);
  border: 1px solid white;
}

#heading {
  text-align: center;
  margin: 2em;
  color: rgb(255, 255, 255);
  font-size: 1.2em;
}

.field {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.5em;
  border-radius: 25px;
  padding: 0.6em;
  border: none;
  outline: none;
  color: white;
  background-color: #171717;
  box-shadow: inset 2px 5px 10px rgb(5, 5, 5);
}

.input-icon {
  height: 1.3em;
  width: 1.3em;
  fill: white;
}

.input-field {
  background: none;
  border: none;
  outline: none;
  width: 100%;
  color: #d3d3d3;
}

.form .btn {
  display: flex;
  justify-content: center;
  flex-direction: row;
  margin-top: 1em;
}

.button1 {
  padding: 0.5em;
  padding-left: 1.1em;
  padding-right: 1.1em;
  border-radius: 5px;
  margin-right: 0.5em;
  border: none;
  outline: none;
  transition: .4s ease-in-out;
  background-color: #252525;
  color: white;
  height: 48px;
}

.button1:hover {
  background-color: rgb(72, 15, 15);
  color: white;
}

.button2 {
  padding: 0.5em;
  padding-left: 2.3em;
  padding-right: 2.3em;
  border-radius: 5px;
  border: none;
  outline: none;
  transition: .4s ease-in-out;
  background-color: #252525;
  color: white;
}

.button2:hover {
  background-color: rgb(88, 21, 21);
  color: white;
}

.button3 {
  margin-bottom: 3em;
  padding: 0.5em;
  border-radius: 5px;
  border: none;
  outline: none;
  transition: .4s ease-in-out;
  background-color: #252525;
  color: white;
}

.button3:hover {
  background-color: red;
  color: white;
}
  </Style>
</head>
<body>
<% Customer customer=(Customer) request.getAttribute("cusomer");%>
<% Bank bank=(Bank) request.getAttribute("bank");%>
  <div id="aa">
  <form class="form" action="update" method="post">
    <p id="heading">Update-Page</p>
    <div class="field">
      <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
        <input autocomplete="off" placeholder="Id" class="input-field" type="text" name="id" value="<%=customer.getId()%>" >
      </div>  
    <div class="field">
      <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
        <input autocomplete="off" placeholder="Username" class="input-field" type="text" name="name" value="<%=customer.getName()%>">
      </div>  
    <div class="field">
    <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
      <input autocomplete="off" placeholder="email" class="input-field" type="text" name="email" value="<%=customer.getEmail()%>">
    </div>
    <div class="field">
    <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
      <input placeholder="Password" class="input-field" type="password" name="password" value="<%=customer.getPassword()%>">
    </div>
    <div class="field">
      <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
        <input autocomplete="off" placeholder="phone number" class="input-field" type="tel" name="phone" value="<%=customer.getPhone()%>">
      </div>
      <div class="field">
      <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
        <input placeholder="Address" class="input-field" type="text" name="address" value="<%=customer.getAddress()%>">
      </div>
      <%-- <div class="field">
        <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
          <input placeholder="Account number" class="input-field" type="number" name="accountNumber" value="<%=bank.getAccountNumber()%>">
        </div>
        <div class="field">
          <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
            <input autocomplete="off" placeholder="IFC number" class="input-field" type="text" name="IFCcode" value="<%=bank.getIFCcode()%>">
          </div>
        <div class="field">
          <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
            <input autocomplete="off" placeholder="Branch" class="input-field" type="text" name="branchName" value="<%=bank.getBranchName()%>">
          </div>
          <div class="field">
          <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"></svg>
            <input placeholder="Avilable Balance" class="input-field" type="text" name="avilableBalance" value="<%=bank.getAvilableBalance()%>">
          </div> --%>
    <div class="btn">
    <input type="submit" value="Update" class="button1"> <br>
    </div><br>
  </div>
</form>
</body>
</html>