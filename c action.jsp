<%-- 
    Document   : c action
    Created on : 6 Apr, 2016, 6:41:12 AM
    Author     : Manu Jose
--%>


<%-- 
    Document   : regaction
    Created on : 6 Apr, 2016, 5:52:50 AM
    Author     : Manu Jose
--%>

<%-- 
    Document   : regaction
    Created on : 14 Mar, 2016, 10:40:36 PM
    Author     : Manu Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    
        String a=request.getParameter("1");
      
        
        
        String select="insert into constituency(cname) values('"+a+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("add constituency.jsp");
        }
        else
        {
            response.sendRedirect("add constituency.jsp?err=error on the page"); 
        }
        
        %>

