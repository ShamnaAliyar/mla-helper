<%-- 
    Document   : appo action
    Created on : 6 Apr, 2016, 2:59:21 PM
    Author     : Manu Jose
--%>

<%-- 
    Document   : complaint action
    Created on : 6 Apr, 2016, 2:26:20 PM
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
        String u=session.getAttribute("name").toString();
        String a=request.getParameter("1");
        String b=request.getParameter("2");
        String c=request.getParameter("3");
        
        
        
        String select="insert into Appointment(date,time,to1,frm) values('"+a+"','"+b+"','"+c+"','"+u+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("request appoinment.jsp");
        }
        else
        {
            response.sendRedirect("request appoinment.jsp?err=error on the page"); 
        }
        
        %>

