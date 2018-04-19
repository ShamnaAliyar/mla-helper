<%-- 
    Document   : fundaction
    Created on : 6 Apr, 2016, 10:41:53 AM
    Author     : Manu Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    
        String a=request.getParameter("1");
       String b=request.getParameter("2");
        
        
        String select="insert into fund(name,fund) values('"+a+"','"+b+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("fundallow.jspadd constituency.jsp");
        }
        else
        {
            response.sendRedirect("fundallow.jsp?err=error on the page"); 
        }
        
        %>

