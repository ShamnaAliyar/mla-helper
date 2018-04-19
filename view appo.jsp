<%-- 
    Document   : view appo
    Created on : 7 Apr, 2016, 11:49:26 PM
    Author     : Manu Jose
--%>



<%@include file="../design2/hder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">Appointments</Char>
                      </header>

<%String mla=session.getAttribute("name").toString();  %>
<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%String select="select * from appointment where to1='"+mla+"'";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>From</th>
    <th>Time</th>
    <th>Date</th>
    <th>Action</th>
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("frm")%></td>
            <td><%=rs.getString("time")%></td>
            <td><%=rs.getString("date")%></td>

           
            
               <td><%
              if(rs.getString("status").equals("0")){
              %>
              <a  href="userapproval1.jsp?id=<%=rs.getString("id")%>&mode=approval" style="color: green" >Approve</a>
              <%
              }else{
              %>
              <a href="userapproval1.jsp?id=<%=rs.getString("id")%>&mode=reject" style="color:red">Reject</a>
              <%
              }
              %>
              </td>
             
              
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>

