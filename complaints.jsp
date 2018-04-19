<%-- 
    Document   : complaints
    Created on : 6 Apr, 2016, 2:08:57 PM
    Author     : Manu Jose
--%>

<%-- 
    Document   : reg
    Created on : 6 Apr, 2016, 5:49:53 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/userhder.jsp" %>
<jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<form action="complaint action.jsp" method="POST">
 <header class="panel-heading">
                          <h3 align="center">Messages</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>Title</td>
                <td><input type="text" name="1" value="" required="1"/></td>
            </tr>
            <tr>
                <td>Message</td>
                <td><textarea name="2" rows="4" cols="20" required="1"></textarea>
                    </td>
            </tr>
              <tr>
                <td>To</td>
                <td><select name="3" >
        <option>select</option>
                        <%  String r="select distinct(name) from mla ";  
   ResultSet rsitem1 = con.getData(r);
                        while (rsitem1.next()) {
                    %>
                    <option value="<%=rsitem1.getString("name")%>"><%=rsitem1.getString("name")%></option>
                    <%
                        }
                    %>
                        
      
                    </select>
                    </td>
            </tr>
                  <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="Send" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
            
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>