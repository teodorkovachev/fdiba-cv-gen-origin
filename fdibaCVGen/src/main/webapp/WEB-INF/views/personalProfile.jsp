<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:genericpage>
	<jsp:attribute name="title">
    	Personal profile
    </jsp:attribute>
    <jsp:attribute name="header">
    	Personal profile
    </jsp:attribute>
    <jsp:body>
    	<div class="container">
    		<div class="row">
    			<div class="panel panel-default">
    				<div class="panel-heading">
    					<h3 class="panel-title">Personal information</h3>
    				</div>
    				<div class="panel-body">
		    			<form:form id="personalInfo" class="form-horizontal" modelAttribute="personalInfo">
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="firstName">First name:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="firstName" name="fName" placeholder="Enter your first name" path="fName"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="middleName">Middle name:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="middleName" name="mName" path="mName" placeholder="Enter your middle name"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="lastName">Last name:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="lastName" name="lName" path="lName" placeholder="Enter your last name"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="address">Address:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="address" name="address" path="address" placeholder="Enter your last address"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="phoneNum">Phone number:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="phoneNum" name="phoneNum" path="phoneNum" placeholder="Enter your phone number"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="email">Email:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="email" name="email" path="email" placeholder="Enter your email"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="nationality">Nationality:</label>
		    					<div class="col-sm-10">
							      <form:select id="nationality" class="form-control" name="national" path="national">
							      	<option value="BG">Bulgarian</option>
								    <option value="DE">German</option>
								    <option value="GB">British</option>
								    <option value="IN">Indian</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="birth">Date of birth:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control datepicker" id="birth" name="birth" path="birth" placeholder="You date of birth"/>
							    </div>
			   				</div>
			   				<div class="form-group"> 
					    		<div class="col-sm-offset-2 col-sm-10">
					      			<button type="submit" class="btn btn-primary">Update</button>
					    		</div>
					  		</div>
		    			</form:form>
	    			</div>
    			</div>
    		</div>
    		
    		<div class="row">
	   			<div class="panel panel-default">
	   				<div class="panel-heading">
	   					<h3 class="panel-title">Educations</h3>
	   				</div>
	   				<div class="panel-body">
	   					<table class="table table-striped">
							<thead>
								<tr>
							  		<th>From</th>
							  		<th>To</th>
							  		<th>Name and type of the educational institution</th>
							  		<th>
							  			<form action="<c:url value='/personalProfile/education/new'/>" method='GET'>
	    									<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
										</form>
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${educations}" var="education">
								    <tr>      
								        <td><fmt:formatDate pattern="dd.MM.yyyy" value="${education.from}" /></td>
								        <td>
								        	<c:choose>
											  <c:when test="${empty education.to}">
											    Nowdays
											  </c:when>
											  <c:otherwise>
											  	<fmt:formatDate pattern="dd.MM.yyyy" value="${education.to}" />
											  </c:otherwise>
											</c:choose>
										</td>
								        <td>${education.educationName}</td>
								        <td>
								        	<form action="<c:url value='/personalProfile/education/edit/${education.id}'/>" method='GET'>
	    										<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span></button>
	    									</form>
										</td>
								    </tr>
								</c:forEach>
							</tbody>
						</table>
	    			</div>
	   			</div>
	   		</div>
    		
    	</div>
    	<script>
			$(document).ready(setUpAjax("personalInfo", "/personalProfile/updatePersonalInfo"));
		</script>
	</jsp:body>
</t:genericpage>