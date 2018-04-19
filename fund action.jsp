<%-- 
    Document   : fund action
    Created on : 6 Apr, 2016, 12:22:41 PM
    Author     : Manu Jose
--%>

<%-- 
    Document   : regaction
    Created on : 6 Apr, 2016, 6:23:20 AM
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
        String b=request.getParameter("2");
        String c=request.getParameter("3");
        String d=request.getParameter("4");
        String e=request.getParameter("5");
         String f=request.getParameter("6");
       
        
        
        String select="insert into funds(mla,fund,place,cons,idate,purpose) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("Fundtransfer.jsp");
        }
        else
        {
            response.sendRedirect("Fundtransfer.jsp?err=error on the page"); 
        }
        
        %>

