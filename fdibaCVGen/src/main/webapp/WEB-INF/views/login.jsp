<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Sign in
    </jsp:attribute>
    <jsp:attribute name="header">
    	Sign in
    </jsp:attribute>
    <jsp:body>
    	<div class="container">
    		<div class="row">
    			<form class="form-horizontal" name='loginForm' action="<c:url value='j_spring_security_check'/>" method='POST'>
    				<div class="form-group">
    					<label class="control-label col-sm-2" for="userName">User:</label>
    					<div class="col-sm-10">
					      <input type="text" class="form-control" id="userName" name="username" placeholder="Enter your username">
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
					      <button type="submit" class="btn btn-default">Sign in</button>
					      &nbsp;or&nbsp;
					      <a href="<c:url value='/register'/>">Sign up</a>
					    </div>
					  </div>
    			</form>
    		</div>
    	</div>
	</jsp:body>
</t:genericpage>