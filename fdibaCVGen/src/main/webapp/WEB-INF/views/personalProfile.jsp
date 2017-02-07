<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		    			<form id="personalInfo" class="form-horizontal">
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="firstName">First name:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="firstName" name="fName" placeholder="Enter your first name">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="middleName">Middle name:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="middleName" name="mName" placeholder="Enter your middle name">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="lastName">Last name:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="lastName" name="lName" placeholder="Enter your last name">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="address">Address:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="address" name="address" placeholder="Enter your last address">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="phoneNum">Phone number:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="phoneNum" name="phoneNum" placeholder="Enter your phone number">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="email">Email:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email">
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="nationality">Nationality:</label>
		    					<div class="col-sm-10">
							      <select id="nationality" class="form-control" name="national">
							      	<option value="BG">Bulgarian</option>
								    <option value="DE">German</option>
								    <option value="GB">British</option>
								    <option value="IN">Indian</option>
							      </select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="birth">Date of birth:</label>
		    					<div class="col-sm-10">
							      <input type="text" class="form-control datepicker" id="birth" name="birth" placeholder="You date of birth">
							    </div>
			   				</div>
			   				<div class="form-group"> 
					    		<div class="col-sm-offset-2 col-sm-10">
					      			<button type="submit" class="btn btn-primary">Update</button>
					    		</div>
					  		</div>
		    			</form>
	    			</div>
    			</div>
    		</div>
    	</div>
    	<script>
			$(document).ready(setUpAjax("personalInfo", "/personalProfile/updatePersonalInfo"));
		</script>
	</jsp:body>
</t:genericpage>