<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" />
		<link href="<c:url value="/resources/css/bootstrap_.css"/>" rel="stylesheet">   
		<script src="http://code.jquery.com/jquery-latest.js"></script>  
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> 
		<link rel="stylesheet" media="screen and (max-width: 1200px) and (min-width: 601px)" href="<c:url value="/resources/css/responsiveform1.css"/>" />
		<link rel="stylesheet" media="screen and (max-width: 600px) and (min-width: 351px)" href="<c:url value="/resources/css/responsiveform2.css"/>" />
		<link rel="stylesheet" media="screen and (max-width: 350px)" href="<c:url value="/resources/css/responsiveform3.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/calendar.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/custom_2.css"/>" />
		<script src="<c:url value="/resources/js/modernizr.custom.63321.js"/>"></script>
	</head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Sistema de Gerenciamento Contábil</title>
	
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container">
	 	  	<img class="logo" src="<c:url value="/resources/img/logo.png"/>" alt="Sistema Gerenciamento Contabil">
		  </div>
		</nav> 
		<div class="row-fluid">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box_login">
					<form:form servletRelativeAction="/login" class="form-signin">
						<h2 class="form-signin-heading">Faça o login</h2>
						<p> 
							<label for="username" class="sr-only">Email address</label>
							<input type="email" class="form-control" placeholder="Usuário" name="username">
						</p>
						<p>
							<label for="password" class="sr-only">Password</label>
							<input type="password" id="inputPassword" class="form-control" placeholder="Senha" required name="password">
						</p>
						<div class="checkbox"></div>
						<button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
					</form:form>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</body>
</html>