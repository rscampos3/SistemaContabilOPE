<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form servletRelativeAction="/cadastroUser" class="form-signin">
		<div> 
			<label for="username">Email address</label>
			<input type="text" name="login" value="">
		</div>
		<p>
			<label for="password">Password</label>
			<input type="password" name="password">
		</p>
		<p>
			<label for="role">Role</label>
			<input type="text" name="role">
		</p>
		
		<input type="submit" name="submit" value="Login">
	</form:form>
</body>
</html>