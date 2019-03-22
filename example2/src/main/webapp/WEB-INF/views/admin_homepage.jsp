<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin HomePage</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">

  <!--//booststrap end-->
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
   .con1 {
    float:right;
    
    position: relative;
    width: 15%;
  }
  .con3 {
    
    position: relative;
    width: 15%;
  }
  .con3:hover .img {
    opacity: 0.3;
  }
  
  .con3:hover .mid {
    opacity: 1;
  }
  
  .img {
    opacity: 1;
    display: block;
    width: 100%;
    height: auto;
    transition: .5s ease;
    backface-visibility: hidden;
    border-radius:50px;
  }
  
  .mid{
    transition: .5s ease;
    opacity: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    text-align: center;
  }
  
  .con1:hover .img {
    opacity: 0.3;
  }
  
  .con1:hover .mid {
    opacity: 1;
  }
  
  .tex{
    
    color:black;
    font-size: 30px;
    padding: 16px 32px;
  }.con2 {
      float:left;
      
    position: relative;
    width: 15%;
  }
  
  .img {
    opacity: 1;
    display: block;
    width: 100%;
    height: auto;
    transition: .5s ease;
    backface-visibility: hidden;
  }
  
  .mid{
    transition: .5s ease;
    opacity: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    text-align: center;
  }
  
  .con2:hover .img {
    opacity: 0.3;
  }
  
  .con2:hover .mid {
    opacity: 1;
  }
  
  .tex{
    
    color: black;
    font-size: 20px;
    padding: 16px 32px;
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
<div class="container">
        <br><br><br><br><br><br><br><br>		

<div class="con1">
<a href="patupdate.html"><img src="images/update.jpg" alt="Avatar" class="img" style="width:100%">
<div class="mid">
  <div class="tex"><b>UPDATE</b></div>
</div></a>
</div>
<div class="con2">
    <a href="patregistration.html"><img src="images/add.jpg" alt="Avatar" class="img" style="width:100%">
    <div class="mid">
      <div class="tex"><b>REGISTER</b></div>
    </div></a>
  </div>
  <center><div class="con3">
        <a href="patsearch.html"><img src="images/search.jpg" alt="Avatar" class="img" style="width:100%">
        <div class="mid">
          <div class="tex"><b>SEARCH</b></div>
        </div></a>
      </div></center>
  


</div>




</body>
</html>