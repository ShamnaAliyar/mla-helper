<%-- 
    Document   : add constituency
    Created on : 6 Apr, 2016, 6:26:30 AM
    Author     : Manu Jose
--%>


<%@include file="../design2/admin hder.jsp" %>

<form action="c action.jsp" method="POST" >
 <header class="panel-heading">
                          <h3 align="center">Add constituency</Char>
                      </header>
    <table class="table" border="0" width="4" cellspacing="2" align="center" style="color: #000000">

        <tbody>
            <tr>
                <td>constituency Name</td>
                <td><input type="text" name="1" value=""  autofocus="1"required="1"/></td>
            </tr>
           
            <tr>
                <td></td>
                <td><div align="right"><input type="submit" class="btn btn-primary" value="Save" class="border"/>&nbsp;<input type="reset" class="btn btn-danger" value="Cancel" /></div></td>
            </tr>
        </tbody>
    
</table>
</form>
<%@include file="../design2/ftr.jsp" %>