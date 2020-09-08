<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="com.dxc.complaint.ComplaintCrud"%>
<%@page import="com.dxc.complaint.Complaint"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="RegisterComplaint.jsp">
	<center>
	
Complaint Type:
<select name="complaintType">
<option value="Keyboard">keyboard</option>
<option value="mouse">Mouse</option>
<option value="network">Network</option>
<option value="permission">permission</option>
</select><br></br>
Description
<input type="text" name="description" /> <br/><br/>

Complaint date:
<input type="date" name="cDate" /> <br/><br/>
Severity :
<select name="severity" >
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    </select><br/>

 Complaint Status:
<input type="text" name="cStatus" value="pending"  readonly="readonly" /> <br/><br/>


<input type="submit" value="Register" /> <br/><br/>
<jsp:useBean id="complaint" class="com.dxc.complaint.Complaint"/>
<jsp:setProperty property="complaintType" name="complaint"/>
<jsp:setProperty property="description" name="complaint"/>
<jsp:setProperty property="severity" name="complaint"/>
<jsp:setProperty property="cStatus" name="complaint"/>
<%
	if(request.getParameter("complaintType")!=null 
	&& request.getParameter("description")!=null
	&& request.getParameter("severity")!=null
	&& request.getParameter("cStatus")!=null){
		String date=request.getParameter("cDate");
		Date sd= Date.valueOf(date);
		complaint.setcDate(sd);
		long millis=System.currentTimeMillis(); 
    java.sql.Date sqlDate = new java.sql.Date(millis);
      SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
    long ms = (sdf.parse(sdf.format(sqlDate)).getTime())-(sdf.parse(sdf.format(complaint.getcDate())).getTime());
    long m = ms / (1000*24*60*60);
    int tat = (int) m;
    if(tat == 0){
    	complaint.setTat(1);
    }
    else{
		complaint.setTat(tat);
    }
	
%>
<%=new ComplaintCrud().addComplaint(complaint) %>

<%
}
%>
&nbsp; &nbsp; &nbsp; &nbsp;		&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;     &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;


</form>
</center>
</body>
</html>