<%-- 
    Document   : userapproval1
    Created on : 6 Apr, 2016, 7:03:39 AM
    Author     : Manu Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
String mode=request.getParameter("mode");
String id=request.getParameter("id");
if(mode.equals("approval")){
    String UDPATE="UPDATE appointment SET status=1 WHERE id='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("view appo.jsp");
    }
}else{
    String UDPATE="UPDATE appointment set status=0 WHERE id='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("view appo.jsp");
    }
}
%>
