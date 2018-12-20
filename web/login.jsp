<%-- 
    Document   : login
    Created on : Dec 13, 2018, 5:31:51 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>User Login</h1>
        <p style="color: red;">${error}</p>
        <form action="LoginServlet" method="POST">
            username:<input type="text" name="username"/><br>
            password:<input type="password" name="password"/><br>
            <input type="Submit" value="Login"/>
        </form>
    </body>
</html>
