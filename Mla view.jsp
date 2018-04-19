<%-- 
    Document   : Mla view
    Created on : 6 Apr, 2016, 6:54:54 AM
    Author     : Manu Jose
--%>

<%-- 
    Document   : view user
    Created on : 15 Mar, 2016, 8:01:22 PM
    Author     : Manu Jose
--%>

<%@include file="../design2/admin hder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">MLA Approval</Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%String select="select * from mla";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>Name</th>
    <th>Address</th>
    <th>email</th>
    <th>Constituency</th>
    <th>Action</th>
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("address")%></td>
            <td><%=rs.getString("email")%></td>
             <td><%=rs.getString("cons")%></td>
            <td><%
              if(rs.getString("status").equals("0")){
              %>
              <a  href="userapproval.jsp?id=<%=rs.getString("mid")%>&mode=approval" style="color: green" >Approve</a>
              <%
              }else{
              %>
              <a href="userapproval.jsp?id=<%=rs.getString("mid")%>&mode=reject" style="color:red">Reject</a>
              <%
              }
              %>
              </td></td>
            
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>
