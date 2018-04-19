<%-- 
    Document   : event action
    Created on : 6 Apr, 2016, 12:45:54 PM
    Author     : Manu Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    String me=session.getAttribute("name").toString();
        String a=request.getParameter("1");
        String b=request.getParameter("2");
        String c=request.getParameter("3");
        String d=request.getParameter("4");
        String e=request.getParameter("5");
       
        
        
        String select="insert into event(event,venu,date,place,time,me) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+me+"');";
       
      
        if(con.executeCommand(select))
        {
          response.sendRedirect("events.jsp");
        }
        else
        {
            response.sendRedirect("events.jsp?err=error on the page"); 
        }
        
        %>
