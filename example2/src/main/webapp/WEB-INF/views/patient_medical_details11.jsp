<!--   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Patient Medical Detail</title>
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
  padding-left:200px;
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
            <a class="navbar-brand" href="patientMD.html"><img src="images/logo.png" height=30px></a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active" ><h4>Welcome Admin</h4></li>
            
          </ul>
         <a href="index.html"> <button class="btn btn-success navbar-btn" style="float:right;">Logout</button></a>
        </div>
      </nav>

<h2><center><b>PATIENT'S MEDICAL DETAILS</b></center> </h2>


<div class="container">
  <form:form action="savePatient_medical" method="post" modelAttribute="patient_medical">
 <form:hidden path="id"/>
    <div class="row">
      <div class="col-25">
        <label for="uid"> User Id </label>
      </div>
      <div class="col-75">
        <form:input type="text" id="uid" name="uid" placeholder=" 100345 " maxlength="6" readonly path="user_id" />
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="Checkin Date">Checkin Date</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="inDate" name="inDate" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}"
        placeholder="DD.MM.YYYY" required path="checkin_date"/>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Checkout date">Checkout Date</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="outDate" name="outDate" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" placeholder="DD.MM.YYYY"required path="checkout_date"/>
      </div>
    </div>
   <div class="row">
        <div class="col-25">
              <label for="Disease">Disease</label>
        </div> 
          <div class="col-75">
          <form:input type="text" id="Disease" name="Disease"   maxlength="100" placeholder="Disease" required path="disease"/>
        </div>
    </div> 
    <div class="row">
            <div class="col-25">
                  <label for="Treatment Status">Treatment Status</label>
            </div>
            <div class="col-75">
                    <form:select path="treatment_status" required>
                            <form:option value="" disabled selected>Select Status</form:option>>
                            <form:option value="Ongoing">Ongoing</form:option>
                            <form:option value="Complete">Complete</form:option>
                          </form:select>
            </div>
        </div>
        <div class="row">
                <div class="col-25">
                      <label for="Name Of Doctor">Name Of Doctor</label>
                </div>
                <div class="col-75">
                        <form:select path="doctor_name" required>
                                <form:option value="" disabled selected>Select Doctor's Name</form:option>
                                <form:option value="Dr. Suresh Bhatia">Dr. Suresh Bhatia</form:option>
                                <form:option value="Dr. Tarun Nagpal">Dr. Tarun Nagpal</form:option>
                                <form:option value="Dr. Mukul Manchanda">Dr. Mukul Manchanda</form:option>
                                <form:option value="Dr. Aashi Akriti">Dr. Aashi Akriti</form:option>
                                <form:option value="Dr. Ravindra Kumar">Dr. Ravindra Kumar</form:option>
                              </form:select>
                </div>
            </div>
              <div class="row">
                    <div class="col-25">
                      <label for="Height">Height(in cms)</label>
                    </div>
                    <div class="col-75">
                      <form:input type="text" id="Height" name="Height" placeholder="Height" maxlength="3" reqiured="enter" path="height"/>
                    </div>
                  </div>    
                  <div class="row">
                        <div class="col-25">
                          <label for="Weight">Weight(in kg)</label>
                        </div>
                        <div class="col-75">
                          <form:input type="text" id="Weight" name="Weight" placeholder="Weight" maxlength="3" reqiured="enter" path="weight"/>
                        </div>
                      </div>   
                      <div class="row">
                            <div class="col-25">
                              <label for="Blood Group">Blood Group</label>
                            </div>
                            <div class="col-75">
                              <form:input type="text" id="Blood_Group" name="Blood_Group" placeholder="Blood Group" maxlength="3" reqiured="enter" path="blood_group"/>
                            </div>
                          </div>   
                          <div class="row">
                                <div class="col-25">
                                  <label for="Bed Number">Bed Number</label>
                                </div>
                                <div class="col-75">
                                  <form:input type="text" id="Bed Number" name="Bed_Number" placeholder="Bed Number" reqiured path="bed_no"/>
                                </div>
                              </div>   
                              <div class="row">
                                    <div class="col-25">
                                          <label for="Seriousness">Seriousness</label>
                                    </div>
                                    <div class="col-75">
                                            <select required>
                                                    
                                                    <option value="Major">Major</option>
                                                    <option value="Minor">Minor</option>
                                                    <option value="Neutral">Neutral</option>
                                                   
                                                  </select>
                                    </div> 
                  <br>  <br>     <br>  <br>    <br> 
                  <div class="hh">
                      <center><form:button type="submit" class="btn btn-success" onclick="myfun()">Submit</form:button></center>  
                      
                    </div>        
    
   </form:form>
</div>
<script>
    function myfun(){
        confirm("Are you sure you want to proceed..");
    }
</script>

 

</body>
</html> -->