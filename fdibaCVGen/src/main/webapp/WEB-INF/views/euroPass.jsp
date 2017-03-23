<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Export to Word - Demo</title>
	</head>
	<body>
		<%
			if("YES".equals(request.getAttribute("exportToWord"))){
				response.setContentType("application/vnd.ms-word");
			}
		
			if(!"YES".equals(request.getAttribute("exportToWord"))){
	    %>
		<TABLE WIDTH=196 CELLPADDING=7 CELLSPACING=0>
		<COL WIDTH=182>
			<TR>
				<TD WIDTH=182 VALIGN=TOP STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="widows: 0; orphans: 0">
						<IMG width="150" SRC="<c:url value='/personalProfile/profilePic?usrName=${userName}'/>" ALIGN=BOTTOM>
					</P>
				</TD>
			</TR>
		</TABLE>
		<%
			}
	    %>
		<TABLE WIDTH=196 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<TR>
				<TD WIDTH=182 VALIGN=TOP STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<B>
								<SPAN STYLE="font-variant: small-caps">
									<FONT FACE="Arial Narrow, serif">
										<FONT SIZE=3>Personal information</FONT>
									</FONT>
								</SPAN>
							</B>
						</FONT>
					</P>
				</TD>
			</TR>
		</TABLE>
		<P STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR>
		</P>
		<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<COL WIDTH=10>
			<COL WIDTH=468>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">Name:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
						<BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
						<FONT SIZE=1 STYLE="font-size: 8pt">
							<I>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<c:out value="${fullName}"/>
								</FONT>
							</I>
						</FONT>
					</P>
				</TD>
			</TR>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">Address:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
						<FONT SIZE=1 STYLE="font-size: 8pt">
							<I>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<c:out value="${address}"/>
								</FONT>
							</I>
						</FONT>
					</P>
				</TD>
			</TR>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">Telephone number:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
						<FONT SIZE=1 STYLE="font-size: 8pt">
							<I>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<c:out value="${phoneNum}"/>
								</FONT>
							</I>
						</FONT>
					</P>
				</TD>
			</TR>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">E-mail:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
						<FONT SIZE=2>
							<FONT SIZE=2 STYLE="font-size: 11pt">
								<I><c:out value="${email}"/></I>
							</FONT>
						</FONT>
					</P>
				</TD>
			</TR>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">Nationality:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
						<FONT SIZE=2>
							<FONT SIZE=2 STYLE="font-size: 11pt">
								<I><c:out value="${nationality}"/></I>
							</FONT>
						</FONT>
					</P>
				</TD>
			</TR>
			<TR VALIGN=TOP>
				<TD WIDTH=182 STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
						<FONT SIZE=2>
							<FONT FACE="Arial Narrow, serif">
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<SPAN STYLE="font-weight: normal">Date of birth:</SPAN>
								</FONT>
							</FONT>
						</FONT>
					</P>
				</TD>
				<TD WIDTH=10 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
					</P>
				</TD>
				<TD WIDTH=468 STYLE="border: none; padding: 0in">
					<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
						<FONT SIZE=2>
							<FONT SIZE=2 STYLE="font-size: 11pt">
								<I><fmt:formatDate pattern="dd.MM.yyyy" value="${birthDate}" /></I>
							</FONT>
						</FONT>
					</P>
				</TD>
			</TR>
		</TABLE>
		<P LANG="en-GB" ALIGN=JUSTIFY STYLE="margin-bottom: 0in; widows: 2; orphans: 2">
		<BR>
		</P>
		<TABLE WIDTH=196 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<TR>
				<TD WIDTH=182 VALIGN=TOP STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
					<FONT SIZE=2><B><SPAN STYLE="font-variant: small-caps"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Education</FONT></FONT></SPAN></B></FONT></P>
				</TD>
			</TR>
		</TABLE>
		<P LANG="en-GB" STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR>
		</P>
		<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<COL WIDTH=10>
			<COL WIDTH=468>
			
			<c:forEach items="${educations}" var="education">
			
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											<fmt:formatDate pattern="dd.MM.yyyy" value="${education.from}" />
											-
											<c:choose>
											  <c:when test="${empty education.to}">
											    Present
											  </c:when>
											  <c:otherwise>
											  	<fmt:formatDate pattern="dd.MM.yyyy" value="${education.to}" />
											  </c:otherwise>
											</c:choose>
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I>&nbsp;</I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											Name and type of the educational institution:
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I><c:out value="${education.educationName}"/></I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											Primary disciplines:
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I><c:out value="${education.disciplines}"/></I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											Level by the national specification:
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I><c:out value="${education.level}"/></I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
			
			</c:forEach>
		</TABLE>
		<P LANG="en-GB" ALIGN=JUSTIFY STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR></P>
		<TABLE WIDTH=196 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<TR>
				<TD WIDTH=182 VALIGN=TOP STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
					<FONT SIZE=2><B><SPAN STYLE="font-variant: small-caps"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Professional experience</FONT></FONT></SPAN></B></FONT></P>
				</TD>
			</TR>
		</TABLE>
		<P LANG="en-GB" STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR></P>
		
		<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<COL WIDTH=10>
			<COL WIDTH=468>
			
			<c:forEach items="${profs}" var="prof">
			
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											<fmt:formatDate pattern="dd.MM.yyyy" value="${prof.from}" />
											-
											<c:choose>
											  <c:when test="${empty prof.to}">
											    Present
											  </c:when>
											  <c:otherwise>
											  	<fmt:formatDate pattern="dd.MM.yyyy" value="${prof.to}" />
											  </c:otherwise>
											</c:choose>
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I>&nbsp;</I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											Employer:
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I><c:out value="${prof.employer}"/></I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
				<TR VALIGN=TOP>
					<TD WIDTH=182 STYLE="border: none; padding: 0in">
						<P ALIGN=RIGHT STYLE="margin-top: 0.03in; widows: 2; orphans: 2; page-break-after: avoid">
							<FONT SIZE=2>
								<FONT FACE="Arial Narrow, serif">
									<FONT SIZE=2 STYLE="font-size: 11pt">
										<SPAN STYLE="font-weight: normal">
											Position:
										</SPAN>
									</FONT>
								</FONT>
							</FONT>
						</P>
					</TD>
					<TD WIDTH=10 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2"><BR>
						</P>
					</TD>
					<TD WIDTH=468 STYLE="border: none; padding: 0in">
						<P STYLE="margin-top: 0.03in; widows: 2; orphans: 2">
							<FONT SIZE=2>
								<FONT SIZE=2 STYLE="font-size: 11pt">
									<I><c:out value="${prof.position}"/></I>
								</FONT>
							</FONT>
						</P>
					</TD>
				</TR>
			
			</c:forEach>
		</TABLE>
		
		<c:forEach items="${cusoms}" var="custom">
			
			<P LANG="en-GB" ALIGN=JUSTIFY STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR></P>
		<TABLE WIDTH=196 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<TR>
				<TD WIDTH=182 VALIGN=TOP STYLE="border: none; padding: 0in">
					<P ALIGN=RIGHT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
					<FONT SIZE=2><B><SPAN STYLE="font-variant: small-caps"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>${custom.name}</FONT></FONT></SPAN></B></FONT></P>
				</TD>
			</TR>
		</TABLE>
		<P LANG="en-GB" STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR></P>
		
		<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
			<COL WIDTH=182>
			<COL WIDTH=10>
			<COL WIDTH=468>
			<TR>
				<TD></TD>
				<TD></TD>
				<TD>${custom.value}</TD>
			</TR>
		</TABLE>
			
		</c:forEach>
		
	</body>
</html>