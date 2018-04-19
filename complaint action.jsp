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
    
        String a=request.getParameter("1");
        String b=request.getParameter("2");
        String c=request.getParameter("3");
        String d= session.getAttribute("name").toString();
        
        String d1= session.getAttribute("id").toString();
        String select="insert into complaint(title1,complaints,to1,fr,fr1) values('"+a+"','"+b+"','"+c+"','"+d+"','"+d1+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("complaints.jsp");
        }
        else
        {
            response.sendRedirect("complaints.jsp?err=error on the page"); 
        }
        
        %>

