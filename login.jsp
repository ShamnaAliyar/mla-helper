<%-- 
    Document   : login
    Created on : 11 Apr, 2016, 10:59:53 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/hder.jsp" %>
<form action="../user 2/log actio.jsp">
<table class="table-condensed" border="0" style="color: #000000" align="center">
   
    <tbody>
        <tr>
            <td>username</td>
            <td><input type="text" name="user" value="" required="1" title="lzzz" placeholder="usernme"/></td>
        </tr>
        <tr>
            <td>password</td>
            <td><input type="password" name="pass" value="" required="1" /></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn-danger" type="submit" value="Save" />&nbsp;&nbsp;<input class="btn-danger" type="reset" value="Cancel" /></td>
        </tr>
    </tbody>
</table>
</form> 
<%@include file="../design2/ftr.jsp" %>