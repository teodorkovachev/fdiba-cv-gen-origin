<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Personal profile: Education
    </jsp:attribute>
	<jsp:attribute name="header">
    	Personal profile: Education
    </jsp:attribute>
	<jsp:body>
		<div class="container">
    		<div class="row">
    			<div class="panel panel-default">
    				<div class="panel-heading">
    					<h3 class="panel-title">Custom Field</h3>
    				</div>
    				<div class="panel-body">
		    			<form:form id="custom" class="form-horizontal" modelAttribute="custom" action="/personalProfile/custom/save" method="POST">
		    				<form:input type="hidden" id="id" name="id" path="id"/>
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="customName">Name:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="customName" name="customName" placeholder="Name of the custom field" path="name"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="value">Value:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="value" name="value" path="value" placeholder="The value of the field to be shown"/>
							    </div>
			   				</div>
			   				<div class="form-group"> 
					    		<div class="col-sm-offset-2 col-sm-10">
					      			<button type="submit" class="btn btn-primary">Update</button>
					      			<button type="submit" formmethod="get" formaction="<c:url value='/personalProfile/custom/delete'/>" class="btn btn-primary">Delete</button>
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