<%-- 
    Document   : view events
    Created on : 7 Apr, 2016, 11:21:31 PM
    Author     : Manu Jose
--%>



<%@include file="../design2/userhder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">View Events</Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%
                  String select="select * from event";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>Event</th>
    <th>Venue</th>
    <th>Date</th>
     <th>Place</th>
    <th>time</th>
    <th>MLA</th>
    
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("event")%></td>
            <td><%=rs.getString("venu")%></td>
             <td><%=rs.getString("date")%></td>
              <td><%=rs.getString("place")%></td>
            <td><%=rs.getString("time")%></td>
             <td><%=rs.getString("me")%></td>

          
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>
