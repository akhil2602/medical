<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<style>
 body
{
 background-image:url("images/download.jpg");
 background-repeat:no-repeat;
 background-size:cover;
}

h4
   {
       color:white;
       padding-left: 1000px;
   }
* {
  box-sizing: border-box;
 
}

input[type=text], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
}

input[type=password], input[type=email], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
}


input[type=date], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 40px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 40px;
  background-color:  #D4E6F1;
  padding: 20px;
}

.col-25 {
  float: left;
  padding-left:230px;
  width: 30%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  padding-left:200px;
  width: 70%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.head{
    background-image: linear-gradient(rgb(129, 131, 14),rgb(102, 146, 85));
    padding: 2%;
    text-align: center;
    color:aliceblue;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>


</head>
<body>

<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"><img src="images/logo.png" height=30px></a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active" ><h4>Welcome Admin</h4></li>
            
          </ul>
         <a href="index.html"> <button class="btn btn-success navbar-btn" style="float:right;">Logout</button></a>
        </div>
      </nav>

<h2><center><b>PATIENT'S PERSONAL DETAILS</b></center> </h2>


<div class="container">
 <form:form action="savePatient" method="post" modelAttribute="patient">
 <form:hidden path="id"/>
    <div class="row">
      <div class="col-25">
        <label for="uid"> User Id </label>
      </div>
      <div class="col-75">
        <form:input type="text" id="uid" name="uid" placeholder=" e.g.100345 " maxlength="6" readonly="" path="user_id"/>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="name">Name</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="name" name="name" placeholder="Name" required="" path="patient_name" />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="rmn">Mobile Number</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="rmn" name="rmn" pattern="[0-9]{10}" placeholder="Mobile Number" required="Enter 10 digit mobile no." path="m_no"/>
      </div>
    </div>
    <div class="row">
        <div class="col-25">
              <label for="aadhar">Aadhar</label>
        </div>
        <div class="col-75">
          <form:input type="text" id="aadhar" name="aadhar"  placeholder="Aadhar" required="16 digit aadhar no. " path="aadhar_no"/>
        </div>
    </div>
              <div class="row">
                    <div class="col-25">
                      <label for="address">Address</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="address" name="address" placeholder="Address.." maxlength="50" reqiured=" " path="address"/>
                    </div>
                  </div>    
                  
                  <br>      
                  <div class="hh">
                      <center><form:button type="submit" class="btn btn-success">Click To Proceed</form:button></center>
                      
                    </div>        
    
  </form:form>
</div>



</body>
</html>