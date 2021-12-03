<%-- 
    Document   : admin
    Created on : Jun 16, 2021, 4:21:50 PM
    Author     : Minh Hoang
--%>
<%@page import="hnqm.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <h1>Create new User</h1>
        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
            }
        %>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""/>
            <%= userError.getUserIDError()%></br>
            FullName<input type="text" name="fullName" equired=""/>
            <%= userError.getFullNameError()%></br>
            Role ID<input type="text" name="roleID" equired=""/>
            <%= userError.getRoleIDError()%></br>
            Phone<input type="text" name="phone" equired=""/>
            <%= userError.getRoleIDError()%></br>
            Status<input type="text" name="status" equired=""/>
            <%= userError.getRoleIDError()%></br>
            Password<input type="password" name="password" equired=""/></br>     
            Confirm<input type="password" name="confirm" equired=""/>
            <%= userError.getConfirmError()%></br>
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
            <%= userError.getMessageError()%>
        </form>
    </body>
</html>
