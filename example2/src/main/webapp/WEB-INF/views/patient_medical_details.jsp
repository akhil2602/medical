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
</head>
<body>
<form:form action="savePatient_medical" method="post" modelAttribute="patient_medical">
<form:hidden path="id"/>
User id: <form:input path="user_id"/>
Last Name<form:input path="doctor_name"/>
bed:<form:input path="bed_no"/>
cind:<form:input path="checkin_date"/>
cout:<form:input path="checkout_date"/>
bgrpL:<form:input path="blood_group"/>
trtmnt:<form:input path="treatment_status"/>
heightL:<form:input path="height"/>
weight:<form:input path="weight"/>
<form:button>submit</form:button>
</form:form>
</body>
<