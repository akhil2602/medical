<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<input type="button"value="click" onclick="window.location.href='showForm';return false;"/>
<br><br>
<table border="1">
<c:forEach var="tempCustomer" items="${patient_medical}">

<tr>
<td><c:out value="${tempCustomer.id}"></c:out></td>
<td><c:out value="${tempCustomer.user_id}"></c:out></td>
<td><c:out value="${tempCustomer.checkin_date}"></c:out></td>
<td><c:out value="${tempCustomer.checkout_date}"></c:out></td>
<td><c:out value="${tempCustomer.treatment_status}"></c:out></td>
<td><c:out value="${tempCustomer.doctor_name}"></c:out></td>
<td><c:out value="${tempCustomer.bed_no}"></c:out></td>
<td><c:out value="${tempCustomer.height}"></c:out></td>
<td><c:out value="${tempCustomer.weight}"></c:out></td>
<td><c:out value="${tempCustomer.blood_group}"></c:out></td>
<td><c:url var="updateLink" value="/customer/updateForm"><c:param name="customerId" value="${tempCustomer.id }"></c:param></c:url>
<a href="${updateLink}">update</a>
</td>

<td><c:url var="deleteLink" value="/customer/delete"><c:param name="customerId" value="${tempCustomer.id }"></c:param></c:url>
<a href="${deleteLink}" onclick="if(!(confirm('are you sure about this..'))) return false">delete</a>
</td>

</tr>
</c:forEach>
</table>



</body>
</html>