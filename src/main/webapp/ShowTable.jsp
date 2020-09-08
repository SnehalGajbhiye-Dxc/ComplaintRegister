<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.dxc.complaint.ComplaintCrud"%>
<%@page import="com.dxc.complaint.Complaint"%>
<%@page import="java.util.List"%>
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





<table border="3">
		<tr> 
			<th>Complaint Id</th>
			<th>ComplaintType</th>
			<th>Description</th>
			<th>CDate</th>
			<th>Tat</th>
				<th>Severity</th>
					
				<th>Cstatus</th>
				
				
						
			
		</tr>
	<%
		ComplaintCrud obj = new ComplaintCrud();
		List<Complaint> result = obj.showComplaint();
		for(Complaint complaint : result) {
	%>
	<tr>
		<td> <%=complaint.getComplaintId() %> </td>
		<td> <%=complaint.getComplaintType() %> </td>
		<td> <%=complaint.getDescription()%> </td>
		<td> <%=complaint.getcDate() %> </td>
		<td> <%=complaint.getTat() %> </td>
		<td> <%=complaint.getSeverity() %> </td>
		<%
if (complaint.getcStatus().equalsIgnoreCase("pending")) {
%>
<td bgcolor="Red"><%=complaint.getcStatus() %>  </td>

<%
} else {
%>
<td bgcolor="Green"><%=complaint.getcStatus() %>  </td>
<% 
}
		}
%>

<a href="ResolveComplaint.jsp">Resolve</a> &nbsp; &nbsp; &nbsp; &nbsp;
 </table>
</body>
</html>