

<%@include file="../design2/hder.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>



 <header class="panel-heading">
                          <h3 align="center">Messages</Char>
                      </header>

<%String mla=session.getAttribute("name").toString();  %>
<table class="table" border="1" cellspacing="20" cellpadding="10" width="100%" style="color: #000000" >
     <%String select="select * from complaint where to1='"+mla+"' and status = 0";
    ResultSet rs=con.getData(select);
    %>
   
    <thead style="">
    
    <th>From</th>
    <th>Message</th>
    
    <th>Action</th>
    </thead>     
    <tbody>
         <%
    while(rs.next())
    {
     %>   
     <tr class="success">
            <td><%=rs.getString("fr")%></td>
            <td><%=rs.getString("complaints")%></td>
           
            <td>
                <a style="color: #00cc00" href="replay.jsp?id=<%=rs.getString("fr1")%>" >Reply</a>
             
              
        </tr>
</tbody>
    <%
    }
    %>
</table>
 </div></div>
<%@include file="../design2/ftr.jsp" %>

