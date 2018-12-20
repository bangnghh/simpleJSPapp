<%-- 
    Document   : index
    Created on : Dec 8, 2018, 5:53:28 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>REGISTER FORM</h1>
        <form action="RegisterServlet" method = "POST">
            username: <input type="text" name="username"><br>
            password: <input type="password" name="password"><br>
            address : <input type="text" name="address"><br>
            <input type="submit" value="Register"/>
        </form>
    </body>
    <a href="index.jsp">Home</a>
    <a href="login.jsp">Login</a>
    <a href="searchUser.jsp">Search User</a>
</html>
