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
<form:form action="saveAdmin" method="post" modelAttribute="admin">
<form:hidden path="id"/>
First Name: <form:input path="firstName"/>
Last Name<form:input path="lastName"/>
E-MAIL:
<form:input path="e_mail"/>
<form:button>submit</form:button>
</form:form>
</body>
</html>