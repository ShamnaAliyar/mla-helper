<%-- 
    Document   : replay
    Created on : 7 Apr, 2016, 10:17:36 PM
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


<form action="complaint action.jsp" method="POST" >
 <header class="panel-heading">
                          <h3 align="center"></Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td></td>
                <td><input type="text" name="1" value="<%=request.getParameter("id")%>"  /></td>
            </tr>
             
            <tr>
                <td>Replay</td>
                <td><textarea name="2" rows="4" cols="20"></textarea></td>
            </tr>
              
            
              
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="save" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>
