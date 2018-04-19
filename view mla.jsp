<%-- 
    Document   : view mka
    Created on : 7 Apr, 2016, 11:18:26 PM
    Author     : Manu Jose
--%>

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



<%@include file="../design2/userhder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">View MLA</Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%
                  String select="select * from mla";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>Name</th>
    <th>Email</th>
    <th>Constituency</th>
    
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("email")%></td>
             <td><%=rs.getString("cons")%></td>

          
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>
