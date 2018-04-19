<%-- 
    Document   : request appoinment
    Created on : 6 Apr, 2016, 2:51:45 PM
    Author     : Manu Jose
--%>

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
<%@page import="java.sql.*" %>
<form action="appo action.jsp" method="POST" ">
 <header class="panel-heading">
                          <h3 align="center">Appointment</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>Date</td><%@page import="java.text.SimpleDateFormat"%>

<%@page  import="java.sql.*" %>
<%
    String id=request.getParameter("id");
     SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String aa=format.format(d);
Date d1 =new Date(format.parse(aa).getTime());%>
                <td><input type="date" min="<%=d1%>" name="1" value="" required="1"/></td>
            </tr>
            <tr>
                <td>time</td>
                <td><input type="time" name="2" value="" />
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
                <td><div align="right"><input type="submit" class="btn btn-primary" value="Request" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
            
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>