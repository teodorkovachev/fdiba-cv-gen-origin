<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
									<SPAN STYLE="font-weight: normal">Address</SPAN>
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
									<SPAN STYLE="font-weight: normal">Telephone number</SPAN>
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
									<SPAN STYLE="font-weight: normal">E-mail</SPAN>
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
		</TABLE>
<P LANG="el-GR" STYLE="margin-top: 0.08in; margin-bottom: 0in; widows: 2; orphans: 2">
<BR>
</P>
<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=182>
	<COL WIDTH=5>
	<COL WIDTH=468>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2; page-break-after: avoid">
			<FONT SIZE=2><FONT FACE="Arial Narrow, serif"><FONT SIZE=2 STYLE="font-size: 11pt"><SPAN STYLE="font-weight: normal">Nationality</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=2><FONT SIZE=2 STYLE="font-size: 11pt"><I>Bulgarian</I></FONT></FONT></P>
		</TD>
	</TR>
</TABLE>
<P LANG="el-GR" STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
<BR><BR>
</P>
<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=182>
	<COL WIDTH=5>
	<COL WIDTH=468>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=2><FONT FACE="Arial Narrow, serif"><FONT SIZE=2 STYLE="font-size: 11pt">Date
			of birth</FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=2><FONT SIZE=2 STYLE="font-size: 11pt"><I>10</I></FONT><FONT SIZE=2 STYLE="font-size: 11pt"><SPAN LANG="bg-BG"><I>.05.19</I></SPAN></FONT><FONT SIZE=2 STYLE="font-size: 11pt"><I>91</I></FONT></FONT></P>
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
	<COL WIDTH=5>
	<COL WIDTH=468>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2"><A NAME="_GoBack"></A>
			<FONT SIZE=1 STYLE="font-size: 8pt"><I>2014 - Present</I></FONT></P>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Name
			and type of the educational institution</SPAN></FONT></FONT></FONT></P>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Primary
			disciplines</SPAN></FONT></FONT></FONT></P>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><I>2010-2014</I></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P LANG="bg-BG" ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<BR><BR>
			</P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2><U><B>Technical
			University - Sofia, Faculty <A HREF="http://fdiba.tu-sofia.bg/">of
			German Engineering Education and Industrial Management</A> (</B></U></FONT><FONT SIZE=2><U>FDIBA</U></FONT><FONT SIZE=2><U><B>)</B></U></FONT></I></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">German
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">,</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">Program</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">ming</SPAN></SPAN></FONT></FONT></P>
			<P LANG="bg-BG" ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<BR>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Name
			and type of the educational institution</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2><U><B>Technical
			University - Sofia, Faculty <A HREF="http://fdiba.tu-sofia.bg/">of
			German Engineering Education and Industrial Management</A> (</B></U></FONT><FONT SIZE=2><U>FDIBA</U></FONT><FONT SIZE=2><U><B>)</B></U></FONT></I></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			 <FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Primary
			disciplines</SPAN></FONT></FONT></FONT></P>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Level
			by the national classification</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">German
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">,</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">Program</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">ming</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT></FONT>
			</P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN STYLE="font-style: normal"><B>Bachelor
			of computer engineering</B></SPAN></FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><I>2006-2010</I></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P LANG="bg-BG" ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<BR>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Name
			and type of the educational institution</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><U>
			</U><FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2><SPAN LANG="de-DE"><U><B>English
			Language School "Plovdiv"</B></U></SPAN></FONT></I></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Primary
			disciplines</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN STYLE="font-style: normal">German,
			English</SPAN></FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><I><SPAN LANG="bg-BG">Acquired
			certificate  </SPAN></I></FONT>
			</P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			 <FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal"><B>Deutsches
			Sprachdiplom DSD II:</B></SPAN></SPAN></FONT></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Leseverstehen:
			                            </SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Niveau
			C1</SPAN></SPAN></FONT></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Hörverstehen:
			                             </SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Niveau
			C1</SPAN></SPAN></FONT></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Schriftliche
			Kommunikation:      </SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Niveau
			C1</SPAN></SPAN></FONT></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Mündliche
			Kommunikation:        </SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT><FONT SIZE=2><SPAN LANG="de-DE"><SPAN STYLE="font-style: normal">Niveau
			C1</SPAN></SPAN></FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Level
			by the national classification</SPAN></FONT></FONT><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN LANG="el-GR"><SPAN STYLE="font-style: normal">
			</SPAN></SPAN></FONT></FONT></FONT>
			</P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN STYLE="font-style: normal"><B>High
			school diploma</B></SPAN></FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><I>2005-2006</I></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P LANG="bg-BG" ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<BR>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Name
			and type of the educational institution</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><U>
			 </U><FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2><U><B>French
			Language School "Romain Rolland"- Stara Zagora</B></U></FONT><SPAN LANG="bg-BG">
			 </SPAN></I></FONT>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">
			<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Primary
			disciplines</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT SIZE=2><SPAN STYLE="font-style: normal">German</SPAN></FONT></FONT></P>
		</TD>
	</TR>
</TABLE>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=182>
	<COL WIDTH=5>
	<COL WIDTH=468>
	<TR>
		<TD COLSPAN=3 WIDTH=683 VALIGN=TOP STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
			<FONT SIZE=2><B><SPAN STYLE="font-variant: small-caps"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Professional
			Experience</FONT></FONT></SPAN></B></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<UL>
				<LI><P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
				<FONT SIZE=1 STYLE="font-size: 8pt"><I>01.12.2012 - 15.05.2015</I></FONT></P>
				<LI><P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
				<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN LANG="bg-BG"><SPAN STYLE="font-style: normal">Employer</SPAN></SPAN></FONT></FONT></FONT></P>
				<LI><P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
				<FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Post</SPAN></FONT></FONT></FONT></P>
			</UL>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<BR><BR>
			</P>
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><I>13.03.2011-30.09.2012<SPAN LANG="bg-BG">
			</SPAN></I></FONT>
			</P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P LANG="bg-BG" ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			<BR><BR>
			</P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; margin-bottom: 0.01in; widows: 2; orphans: 2">
			"<FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2>Libra
			Software" GmbH, Sofia</FONT></I></FONT></P>
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2>Java
			Developer</FONT></I></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Employer</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2">"<FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2>Sitel
			Bulgaria: Nokia Project"</FONT></I></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=182 STYLE="border: none; padding: 0in">
			<P ALIGN=RIGHT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2><SPAN STYLE="font-style: normal">Post</SPAN></FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="el-GR" STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="margin-top: 0.01in; widows: 2; orphans: 2"><FONT SIZE=1 STYLE="font-size: 8pt"><I><FONT SIZE=2>Customer
			Service Professional</FONT></I></FONT></P>
		</TD>
	</TR>
</TABLE>
<P ALIGN=JUSTIFY STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><FONT SIZE=2><FONT FACE="Arial Narrow, serif"><SPAN LANG="el-GR"><B>	</B></SPAN></FONT></FONT></P>
<TABLE WIDTH=697 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=182>
	<COL WIDTH=5>
	<COL WIDTH=468>
	<TR VALIGN=TOP>
		<TD WIDTH=182 HEIGHT=2 STYLE="border: none; padding: 0in">
			<P ALIGN=LEFT STYLE="widows: 2; orphans: 2; page-break-after: avoid">
			<SPAN STYLE="font-variant: small-caps">                         
			<FONT SIZE=2><B><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Personal
			Skills</FONT></FONT></SPAN></B></FONT></P>
		</TD>
		<TD WIDTH=5 STYLE="border: none; padding: 0in">
			<P LANG="bg-BG" STYLE="margin-top: 0.01in; font-variant: small-caps; widows: 2; orphans: 2">
			<BR>
			</P>
		</TD>
		<TD WIDTH=468 STYLE="border: none; padding: 0in">
			<P LANG="en-GB" CLASS="western" STYLE="margin-top: 0.01in"><SPAN LANG="en-US"><I>Java
			EE: Enterprise Java Beans, Servlets, JSP; basic Knowledge in
			HTML5, CSS3, JavaScript and SQL, Rich experience with mobile phone
			technologies, Programming</I></SPAN><SPAN LANG="bg-BG"><I> </I></SPAN><SPAN LANG="en-US"><I>in
			</I></SPAN><SPAN LANG="bg-BG"><I> </I></SPAN><SPAN LANG="en-US"><I>C
			and Java (Eclipse IDE),  Good Knowledge in OOP and concepts</I></SPAN><SPAN LANG="bg-BG"><I>,</I></SPAN><SPAN LANG="en-US"><I>
			Excellent</I></SPAN><SPAN LANG="bg-BG"><I> </I></SPAN><SPAN LANG="en-US"><I>work</I></SPAN><SPAN LANG="bg-BG"><I>
			</I></SPAN><SPAN LANG="en-US"><I>with</I></SPAN><SPAN LANG="bg-BG"><I>
			</I></SPAN><SPAN LANG="en-US"><I>Microsoft</I></SPAN><SPAN LANG="bg-BG"><I>-</I></SPAN><SPAN LANG="en-US"><I>based</I></SPAN><SPAN LANG="bg-BG"><I>
			</I></SPAN><SPAN LANG="en-US"><I>software</I></SPAN><SPAN LANG="bg-BG"><I>
			</I></SPAN><SPAN LANG="en-US"><I>products </I></SPAN><SPAN LANG="bg-BG"><I>,</I></SPAN><SPAN LANG="en-US"><I>
			fluency in </I></SPAN><SPAN LANG="bg-BG"><I> </I></SPAN><SPAN LANG="en-US"><I>German
			and English</I></SPAN><SPAN LANG="bg-BG"><I>  </I></SPAN>
			</P>
		</TD>
	</TR>
</TABLE>
<P LANG="bg-BG" STYLE="margin-bottom: 0in; widows: 2; orphans: 2"><BR>
</P>
<P LANG="en-GB" CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
	</body>
</html>