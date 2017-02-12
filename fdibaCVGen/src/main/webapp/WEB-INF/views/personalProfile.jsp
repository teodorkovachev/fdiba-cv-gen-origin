<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
    			<div class="col-sm-3">
	    			<div class="panel panel-default">
	    				<div class="panel-heading">
	    					<h3 class="panel-title">Profile image</h3>
	    				</div>
	    				<div class="panel-body">
			    			<form action="<c:url value='/personalProfile/uploadImage'/>" method="POST" enctype="multipart/form-data" class="form-horizontal">
			    				<div class="form-group">
			    					<label class="control-label col-sm-12 thumbnail" for="imageUpload">
			    						<img alt="Profile image" src="/personalProfile/profilePic?usrName=<sec:authentication property='principal.username' />">
			    					</label>
			    					<div class="form-group">
				    					<div class="col-sm-4">
				    						<button type="submit" class="btn btn-primary">Update</button>
									      	<input type="file" style="visibility: hidden;" id="imageUpload" name="imageUpload" />
									    </div>
								    </div>
				   				</div>
			    			</form>
		    			</div>
	    			</div>
    			</div>
    			<div class="col-sm-9">
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
							  		<th class="col-sm-2">From</th>
							  		<th class="col-sm-2">To</th>
							  		<th class="col-sm-7">Name and type of the educational institution</th>
							  		<th class="col-sm-1">
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
    		
    		<div class="row">
	   			<div class="panel panel-default">
	   				<div class="panel-heading">
	   					<h3 class="panel-title">Professional experience</h3>
	   				</div>
	   				<div class="panel-body">
	   					<table class="table table-striped">
							<thead>
								<tr>
							  		<th class="col-sm-2">From</th>
							  		<th class="col-sm-2">To</th>
							  		<th class="col-sm-4">Employer</th>
							  		<th class="col-sm-3">Position</th>
							  		<th class="col-sm-1">
							  			<form action="<c:url value='/personalProfile/prof/new'/>" method='GET'>
	    									<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
										</form>
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${profs}" var="prof">
								    <tr>      
								        <td><fmt:formatDate pattern="dd.MM.yyyy" value="${prof.from}" /></td>
								        <td>
								        	<c:choose>
											  <c:when test="${empty prof.to}">
											    Nowdays
											  </c:when>
											  <c:otherwise>
											  	<fmt:formatDate pattern="dd.MM.yyyy" value="${prof.to}" />
											  </c:otherwise>
											</c:choose>
										</td>
								        <td>${prof.employer}</td>
								        <td>${prof.position}</td>
								        <td>
								        	<form action="<c:url value='/personalProfile/prof/edit/${prof.id}'/>" method='GET'>
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
    		
    		<div class="row">
	   			<div class="panel panel-default">
	   				<div class="panel-heading">
	   					<h3 class="panel-title">Languages</h3>
	   				</div>
	   				<div class="panel-body">
	   					<table class="table table-striped">
							<thead>
								<tr>
							  		<th class="col-sm-3">Language</th>
							  		<th class="col-sm-2">Reading</th>
							  		<th class="col-sm-2">Listening</th>
							  		<th class="col-sm-2">Writing</th>
							  		<th class="col-sm-2">Speaking</th>
							  		<th class="col-sm-1">
							  			<form action="<c:url value='/personalProfile/lang/new'/>" method='GET'>
	    									<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
										</form>
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${langs}" var="lang">
								    <tr>      
								        <td>${lang.name}</td>
								        <td>${lang.reading}</td>
								        <td>${lang.listening}</td>
								        <td>${lang.writing}</td>
								        <td>${lang.speaking}</td>
								        <td>
								        	<form action="<c:url value='/personalProfile/lang/edit/${lang.id}'/>" method='GET'>
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
	   		<div class="row">
    			<div class="panel panel-default">
    				<div class="panel-heading">
    					<h3 class="panel-title">Personal skills</h3>
    				</div>
    				<div class="panel-body">
		    			<form:form id="personalSkills" class="form-horizontal" modelAttribute="skills">
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="com">Communication skills:</label>
		    					<div class="col-sm-10">
							      <form:textarea class="form-control" id="com" name="com" placeholder="Describe your communication skills" path="com"></form:textarea>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="org">Organisational skills:</label>
		    					<div class="col-sm-10">
							      <form:textarea class="form-control" id="org" name="org" placeholder="Describe your organisational skills" path="org"></form:textarea>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="prof">Professional skills:</label>
		    					<div class="col-sm-10">
							      <form:textarea class="form-control" id="prof" name="prof" placeholder="Describe the skills you've gained from you professional experience" path="prof"></form:textarea>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="tech">Technical skills:</label>
		    					<div class="col-sm-10">
							      <form:textarea class="form-control" id="tech" name="tech" placeholder="Describe your technical skills" path="tech"></form:textarea>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="other">Other skills:</label>
		    					<div class="col-sm-10">
							      <form:textarea class="form-control" id="other" name="other" placeholder="Other skills, that you want to share" path="other"></form:textarea>
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
    	</div>
    	<script>
			$(document).ready(setUpAjax("personalInfo", "/personalProfile/updatePersonalInfo"));
			$(document).ready(setUpAjax("personalSkills", "/personalProfile/updatePersonalSkills"));
		</script>
	</jsp:body>
</t:genericpage>