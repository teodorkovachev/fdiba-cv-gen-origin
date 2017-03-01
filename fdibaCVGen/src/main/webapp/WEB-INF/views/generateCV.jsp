<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:genericpage>
	<jsp:attribute name="title">
    	Genearate a CV
    </jsp:attribute>
	<jsp:attribute name="header">
    	<h1>Genearate a CV</h1>
    </jsp:attribute>
    <jsp:body>
    	<div class="container">
    		<div class="row">
    			<form id="genCVForm" class="form-horizontal" action="generateCV">
    				<div class="form-group">
    					<label class="control-label col-sm-2" for="template">Template:</label>
    					<div class="col-sm-10">
					      <select id="template" class="form-control" name="template">
					      	<option value="euroPass">Europass CV</option>
						    <option value="academic">Academic CV</option>
						    <option value="chronological">Chronological CV</option>
						    <option value="skillBased">Skill-based CV</option>
					      </select>
					    </div>
	   				</div>
	   				<div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-2">
					      <button type="submit" class="btn btn-default" formaction="<c:url value='/generateCV/doc'/>">Generate MSDoc</button>
					    </div>
					    <div class="col-sm-1">
					      <button type="submit" class="btn btn-default" formaction="<c:url value='/generateCV/pdf'/>">Generate PDF</button>
					    </div>
					  </div>
    			</form>
    		</div>
    	</div>
    </jsp:body>
</t:genericpage>