<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<t:genericpage>
	<jsp:attribute name="title">
    	Browse CVs
    </jsp:attribute>
    <jsp:attribute name="header">
    	Browse CVs
    </jsp:attribute>
    <jsp:body>
    	<div class="container">
    	
    		<div class="row">
    			<form id="genCVForm" class="form-horizontal" action="generateCV">
    				<table class="table table-striped">
						<tbody>
							<c:forEach items="${users}" var="user">
							    <tr>      
							        <td>
							        	<label>
					        				<input type="checkbox" name="selectedUsers" value="${user.userName}"> 
					        				${user.userName}
					        			</label>
							        </td>
							    </tr>
							</c:forEach>
						</tbody>
					</table>
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
					      <button type="submit" class="btn btn-default" formaction="<c:url value='/browseCVs/download/doc'/>">Generate MSDoc</button>
					    </div>
					    <div class="col-sm-1">
					      <button type="submit" class="btn btn-default" formaction="<c:url value='/browseCVs/download/pdf'/>">Generate PDF</button>
					    </div>
					  </div>
    			</form>
    		</div>
    		
    	</div>
	</jsp:body>
</t:genericpage>