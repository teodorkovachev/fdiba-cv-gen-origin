<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Personal profile: Professional experience
    </jsp:attribute>
	<jsp:attribute name="header">
    	Personal profile: Professional experience
    </jsp:attribute>
	<jsp:body>
		<div class="container">
    		<div class="row">
    			<div class="panel panel-default">
    				<div class="panel-heading">
    					<h3 class="panel-title">Professional experience</h3>
    				</div>
    				<div class="panel-body">
		    			<form:form id="prof" class="form-horizontal" modelAttribute="prof" action="/personalProfile/prof/save" method="POST">
		    				<form:input type="hidden" id="id" name="id" path="id"/>
		    				<div class="form-group">
		    					<label class="control-label col-sm-2" for="employer">Employer:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="employer" name="employer" placeholder="Name of the company" path="employer"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="position">Disciplines:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control" id="position" name="position" path="position" placeholder="Position in the company"/>
							    </div>
			   				</div>
			   				<div class="form-group">
		    					<label class="control-label col-sm-2" for="from">From:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control datepicker" id="from" name="from" path="from" placeholder="Starting date"/>
							    </div>
			   				</div>
			   				<div class="form-group toDateDiv">
		    					<label class="control-label col-sm-2" for="to">To:</label>
		    					<div class="col-sm-10">
							      <form:input type="text" class="form-control datepicker toDate" id="to" name="to" path="to" placeholder="Ending date"/>
							    </div>
			   				</div>
			   				<div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10">
							      <div class="checkbox">
							        <label>
							        	<input class="current" type="checkbox" <c:if test="${empty prof.to}">checked</c:if> >I am still working there</label>
							      </div>
								</div>
							</div>
			   				<div class="form-group"> 
					    		<div class="col-sm-offset-2 col-sm-10">
					      			<button type="submit" class="btn btn-primary">Update</button>
					      			<button type="submit" formmethod="get" formaction="<c:url value='/personalProfile/prof/delete'/>" class="btn btn-primary">Delete</button>
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