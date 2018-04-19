<%-- 
    Document   : view funds
    Created on : 7 Apr, 2016, 11:32:58 PM
    Author     : Manu Jose
--%>




<%@include file="../design2/userhder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">View Funds</Char>
                      </header>


<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%
                  String select="select * from funds";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>MLA</th>
    <th>Fund Amount</th>
    <th>Place</th>
     <th>Issue Date</th>
    <th>Purpose</th>
    
    
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("mla")%></td>
            <td><%=rs.getString("fund")%></td>
             <td><%=rs.getString("place")%></td>
              <td><%=rs.getString("idate")%></td>
            <td><%=rs.getString("purpose")%></td>
            

          
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>
