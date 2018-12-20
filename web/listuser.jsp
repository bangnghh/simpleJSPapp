<%-- 
    Document   : listuser
    Created on : Dec 8, 2018, 9:47:25 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
    </head>
    <body>
        <h1>User LIST</h1>
        <table border="1" cellpadding="5" cellspacing="1">
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Address</td>
                <td>Edit</td>
                <td>Delete</td>
                
            </tr>
            <c:forEach items = "${userList}" var="userbean">
                <tr>
                    <td>${userbean.username}</td>
                    <td>${userbean.password}</td>
                    <td>${userbean.address}</td>
                    <td>
                        <a href="editUser?username=${userbean.username}">Edit</a>
                    </td>
                    <td>
                        <a href="deleteUser?username=${userbean.username}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
