<%-- 
    Document   : Fundtransfer
    Created on : 6 Apr, 2016, 11:39:54 AM
    Author     : Manu Jose
--%>

<%-- 
    Document   : reg
    Created on : 6 Apr, 2016, 5:49:53 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/hder.jsp" %>
  <jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<form action="fund action.jsp" method="POST" ">
 <header class="panel-heading">
                          <h3 align="center">Fund Allocation</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>MLA</td>
                <td><input type="text" name="1" value="<%=session.getAttribute("name")%>" required="1"/></td>
            </tr>
             
            <tr>
                <td>Fund amount</td>
                <td><input type="number" name="2" value="" required="1" /></td>
            </tr>
              
            <tr>
                  <tr>
                <td>fund place</td>
                <td><input type="text" name="3" value="" required="1" /></td>
            </tr>
            
              <tr>
                <td>constituency</td>
                <td><select name="4" >
        <option>select</option>
                        <%  String r="select distinct(cname) from constituency ";  
   ResultSet rsitem1 = con.getData(r);
                        while (rsitem1.next()) {
                    %>
                    <option value="<%=rsitem1.getString("cname")%>"><%=rsitem1.getString("cname")%></option>
                    <%
                        }
                    %>
                        
      
                    </select></td></td>
            </tr>
            
              <tr>
                <td>issue date</td>
                <td><input type="date" name="5" value="" required="1" /></td>
            </tr
            <tr>
                  <tr>
                <td>fund purpose</td>
                <td><input type="text" name="6" value="" required="1" /></td>
            </tr>
              
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="save" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>
