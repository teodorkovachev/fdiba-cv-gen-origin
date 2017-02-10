<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Personal profile: Languages
    </jsp:attribute>
	<jsp:attribute name="header">
    	Personal profile: Languages
    </jsp:attribute>
	<jsp:body>
		<div class="container">
    		<div class="row">
    			<div class="panel panel-default">
    				<div class="panel-heading">
    					<h3 class="panel-title">Languages</h3>
    				</div>
    				<div class="panel-body">
		    			<form:form id="lang" class="form-horizontal" modelAttribute="lang" action="/personalProfile/lang/save" method="POST">
		    				<form:input type="hidden" id="id" name="id" path="id"/>
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="name">Language:</label>
		    					<div class="col-sm-10">
							      <form:select id="name" class="form-control" name="name" path="name">
							      	<option value="Bulgarian">Bulgarian</option>
								    <option value="German">German</option>
								    <option value="British">British</option>
								    <option value="Indian">Indian</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="name">Reading:</label>
		    					<div class="col-sm-10">
							      <form:select id="reading" class="form-control" name="reading" path="reading">
							      	<option value="1">Elementary proficiency</option>
								    <option value="2">Limited working proficiency</option>
								    <option value="3">Full professional proficiency</option>
								    <option value="4">Native or bilingual proficiency</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="listening">Listening:</label>
		    					<div class="col-sm-10">
							      <form:select id="listening" class="form-control" name="listening" path="listening">
							      	<option value="1">Elementary proficiency</option>
								    <option value="2">Limited working proficiency</option>
								    <option value="3">Full professional proficiency</option>
								    <option value="4">Native or bilingual proficiency</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="writing">Writing:</label>
		    					<div class="col-sm-10">
							      <form:select id="writing" class="form-control" name="writing" path="writing">
							      	<option value="1">Elementary proficiency</option>
								    <option value="2">Limited working proficiency</option>
								    <option value="3">Full professional proficiency</option>
								    <option value="4">Native or bilingual proficiency</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="speaking">Speaking:</label>
		    					<div class="col-sm-10">
							      <form:select id="speaking" class="form-control" name="speaking" path="speaking">
							      	<option value="1">Elementary proficiency</option>
								    <option value="2">Limited working proficiency</option>
								    <option value="3">Full professional proficiency</option>
								    <option value="4">Native or bilingual proficiency</option>
							      </form:select>
							    </div>
			   				</div>
			   				<div class="form-group"> 
					    		<div class="col-sm-offset-2 col-sm-10">
					      			<button type="submit" class="btn btn-primary">Update</button>
					      			<button type="submit" formmethod="get" formaction="<c:url value='/personalProfile/lang/delete'/>" class="btn btn-primary">Delete</button>
					      			<a href="<c:url value='/personalProfile'/>" class="btn btn-default">Cancel</a>
					    		</div>
					  		</div>
		    			</form:form>
	    			</div>
    			</div>
    		</div>
    	</div>
    </jsp:body>
</t:genericpage>