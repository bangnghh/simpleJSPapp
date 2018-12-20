<%-- 
    Document   : searchUserResult
    Created on : Dec 13, 2018, 8:32:12 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Result</title>
    </head>
    <body>
        <p style="color: red;">${error}</p>
        <h1>Result:</h1>
        <table>
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Address</td>
            </tr>
            <tr>
                <td>${userbean.username}</td>
                <td>${userbean.password}</td>
                <td>${userbean.address}</td>
            </tr>
            
        </table>
    </body>
</html>
