<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@attribute name="title" fragment="true" %>
<%@attribute name="header" fragment="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	
    	<title><jsp:invoke fragment="title"/></title>
    	
    	<link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
    	<link href="<c:url value='/resources/css/bootstrap-theme.min.css'/>" rel="stylesheet">
    	<link href="<c:url value='/resources/css/bootstrap-datepicker3.min.css'/>" rel="stylesheet">
    	
		<script src="<c:url value='/resources/js/jquery-3.1.1.min.js'/>"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/resources/js/npm.js'/>"></script>
		<script src="<c:url value='/resources/js/bootstrap-datepicker.min.js'/>"></script>
		<script src="<c:url value='/resources/js/fdiba-cv-gen.js'/>"></script>
	</head>
  	<body>
  		<nav class="navbar navbar-default navbar-static-top">
      		<div class="container">
      			<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-file"></span>FDIBA CV Generator</a>
      			<sec:authorize access="isAuthenticated()">
	        		<div class="navbar-header">
	          			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
	          			</button>
	        		</div>
	        		<div id="navbar" class="collapse navbar-collapse">
	         			<ul class="nav navbar-nav">
	            			<li class="active"><a href="<c:url value='/'/>">Home</a></li>
	            			<sec:authorize access="hasRole('ROLE_EMPLOYER')">
	            				<li><a href="<c:url value='/browseCVs'/>">Browse CVs</a></li>
	            			</sec:authorize>
	            			<sec:authorize access="hasRole('ROLE_EMPLOYEE')">
	            				<li><a href="<c:url value='/personalProfile'/>">Personal profile</a></li>
	            				<li><a href="<c:url value='/generateCV'/>">Generate a CV</a></li>
	            			</sec:authorize>
	          			</ul>
	          			<ul class="nav navbar-pills pull-right">
	          				<li><a class="pull-right" href="<c:url value='j_spring_security_logout' />">Log out</a></li>
	          			</ul>
	        		</div><!--/.nav-collapse -->
        		</sec:authorize>
      		</div>
    	</nav>
    	<div class="container theme-showcase" role="main">
    		<div class="page-header">
    			<h1>
    				<jsp:invoke fragment="header"/>
    			</h1>	
    		</div>
    	</div>
    	<div id="body">
      		<jsp:doBody/>
    	</div>
  	</body>
</html>