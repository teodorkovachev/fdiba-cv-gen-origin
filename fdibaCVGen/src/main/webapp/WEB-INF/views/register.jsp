<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Sign up
    </jsp:attribute>
	<jsp:attribute name="header">
    	<h1>Sign up</h1>
    </jsp:attribute>
    <jsp:body>
    	<div class="container">
    		<div class="row">
    			<form id="userRegisterForm" class="form-horizontal">
    				<div class="form-group">
    					<label class="control-label col-sm-2" for="userName">Username:</label>
    					<div class="col-sm-10">
					      <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter your username">
					    </div>
	   				</div>
	   				<div class="form-group">
    					<label class="control-label col-sm-2" for="password">Password:</label>
    					<div class="col-sm-10">
					      <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
					    </div>
	   				</div>
	   				<div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
					      <div class="checkbox">
					        <label>
					        	<input type="checkbox" name="userRolesStr" value="ROLE_EMPLOYER"> I am searching for employees</label>
					      </div>
						</div>
					</div>
					<div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
					      <div class="checkbox">
					        <label>
					        	<input type="checkbox" name="userRolesStr" value="ROLE_EMPLOYEE"> I am seeking a job</label>
					      </div>
						</div>
					</div>
					<div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default">Sign up</button>
					      &nbsp;or&nbsp;
					      <a href="<c:url value='/'/>">Go back to sign in</a>
					    </div>
					  </div>
    			</form>
    		</div>
    	</div>
		<script>
			$(document).ready(setUpAjax("userRegisterForm", "/register/submit"));
		</script>
    </jsp:body>
</t:genericpage>