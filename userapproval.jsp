<%-- 
    Document   : userapproval
    Created on : 15 Mar, 2016, 8:03:45 PM
    Author     : Manu Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
String mode=request.getParameter("mode");
String id=request.getParameter("id");
if(mode.equals("approval")){
    String UDPATE="UPDATE mla SET status=1 WHERE mid='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("Mla view.jsp");
    }
}else{
    String UDPATE="UPDATE mla set status=0 WHERE mid='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("Mla view.jsp");
    }
}
%>
