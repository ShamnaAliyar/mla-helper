<%-- 
    Document   : fundallow
    Created on : 6 Apr, 2016, 10:36:46 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/admin hder.jsp" %>
 <jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<form action="fundaction.jsp" method="POST" >
 <header class="panel-heading">
                          <h3 align="center">add funds</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>MLA</td>
                <td><select name="1" >
        <option>select</option>
                        <%  String r="select distinct(name) from mla ";  
   ResultSet rsitem1 = con.getData(r);
                        while (rsitem1.next()) {
                    %>
                    <option value="<%=rsitem1.getString("name")%>"><%=rsitem1.getString("name")%></option>
                    <%
                        }
                    %>
                        
      
                    </select></td>
            </tr>
            <tr>
                <td>MLA</td>
                <td><input type="text" name="2" value=""  required="1"></td>
            </tr>
           
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="Register" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>