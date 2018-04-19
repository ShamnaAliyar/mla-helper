<%-- 
    Document   : notification
    Created on : 7 Apr, 2016, 11:07:33 PM
    Author     : Manu Jose
--%>

<%-- 
    Document   : user view
    Created on : 6 Apr, 2016, 7:01:33 AM
    Author     : Manu Jose
--%>



<%@include file="../design2/userhder_1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



 <header class="panel-heading">
     <h3 align="center">Notifications On Complaints </Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%
         String id=session.getAttribute("id").toString();
         String select="select * from complaint where status=1 and fr1='"+id+"'";
        
    ResultSet rs=con.getData(select);
    %>
    
    
    
    
   
    <thead style="">
    
    <th>From</th>
    <th>Complaint</th>
    <th>Reply</th>
    
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("to1")%></td>
            <td><%=rs.getString("complaints")%></td>
             <td><%=rs.getString("replay")%></td>

          
        </tr>
</tbody>
    <%
    }
    %>
</table>
&nbsp;&nbsp;
 <header class="panel-heading">
                          <h3 align="center"> Appointments fixed notifications</Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%
         String id1=session.getAttribute("name").toString();
         String select1="select * from appointment where status=1 and frm='"+id1+"'";
    ResultSet rs1=con.getData(select1);
    %>
   
    <thead style="">
    
    <th>To</th>
    <th>date</th>
    <th>time</th>
    
    </thead>     
    <tbody>
         <%
    while(rs1.next())
    {
     %>   
     <tr class="success">
            <td><%=rs1.getString("to1")%></td>
            <td><%=rs1.getString("date")%></td>
             <td><%=rs1.getString("time")%></td>

          
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>
