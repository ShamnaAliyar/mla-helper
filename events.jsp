
<%-- 
    Document   : reg
    Created on : 6 Apr, 2016, 5:49:53 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/hder.jsp" %>
  <jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<form action="event action.jsp" method="POST" >
 <header class="panel-heading">
                          <h3 align="center">Event Allocation</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>Event</td>
                <td><input type="text" name="1" value=""  required="1"/></td>
            </tr>
             
            <tr>
                <td>Venue</td>
                <td><input type="text" name="2" value="" required="1" /></td>
            </tr>
              
            <tr>
                  <tr>
                <td>Date</td>
                <td><input type="date" name="3" value="" required="1" /></td>
            </tr>
            
             
              <tr>
                <td>Place</td>
                <td><input type="text" name="4" value="" required="1" /></td>
              </tr>
            <tr> 
                
              <tr>
                <td>time</td>
                <td><input type="time" name="5" value="" required="1" /></td>
              </tr>
            <tr> 
              
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="save" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>
