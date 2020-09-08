<%@page import="com.dxc.complaint.ComplaintCrud"%>
<%@page import="com.dxc.complaint.Complaint"%>
<%@page import="com.dxc.complaint.Resolve"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>


<form method="get" action="ResolveComplaint.jsp">
<center>

Complaint Id:
<input type="text" name="complaintId" /> <br/><br/>
Resolved By:
<input type="text" name="resolvedBy" /> <br/><br/>

Resolved Comments:
<input type="text" name="rComments" /> <br/><br/>
<input type="submit" value="submit" /> <br/><br/>
<%
String id="";
Resolve resolve = new Resolve();
String comment="";
if (request.getParameter("complaintId") != null){
id=request.getParameter("complaintId");

comment=request.getParameter("rComments");
%>
<jsp:useBean id="complaintId" class="com.dxc.complaint.Resolve" />
<jsp:setProperty property="*" name="complaintId"/>
<%
resolve.setResolvedBy(complaintId.getResolvedBy());
%>
<%=new ComplaintCrud().resolveComp(complaintId) %>
<%
}
%>

</center>
</form>
</body>
</html>

