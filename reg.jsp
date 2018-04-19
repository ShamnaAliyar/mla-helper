<%-- 
    Document   : reg
    Created on : 6 Apr, 2016, 5:49:53 AM
    Author     : Manu Jose
--%>

<%@include file="../design2/cmnhmehder.jsp" %>
<form action="regaction.jsp" method="POST" ">
 <header class="panel-heading">
                          <h3 align="center">User Registration</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>Name</td>
                <td><input type="text" name="1" value="" required="1"/></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><textarea name="2" rows="4" cols="20" required="1"></textarea>
                    </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td><input type="email" name="3" value="" required="1" /></td>
            </tr>
              <tr>
                  <tr>
                <td>Age</td>
                <td><input type="number" min="0" name="4" value="" required="1" /></td>
            </tr>
              <tr>
                <td>Username</td>
                <td><input type="text" name="5" value="" required="1"/></td>
            </tr>
              <tr>
                <td>Password</td>
                <td><input type="password" pattern="[A-Z]{6}" title=":ex:ABCABC" name="6" value="" required="1" /></td>
            </tr>
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="Register" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>