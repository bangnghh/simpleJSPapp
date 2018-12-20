<%-- 
    Document   : result
    Created on : Dec 8, 2018, 5:56:28 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
        %>
        <table>
            <tr>
                <td>Username: </td>
                <td><%=username%></td>
            </tr>
            <tr>
                <td>Password: </td>
                <td><%=password%></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><%=address%></td>
            </tr>
        </table>
            <a href="listuser">Go to List user</a>    
    </body>
</html>
