<%-- 
    Document   : editUserView
    Created on : Dec 11, 2018, 10:35:55 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <h1>Edit User</h1>
        <c:if test="${not empty userbean}">
            <form action ="${pageContext.request.contextPath}/editUser" method="POST">
                <table border = "0">
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="username" value="${userbean.username}"</td> 
                    </tr>
                    <tr>
                        <td>NewName</td>
                        <td><input type="text" name="username1"></td> 
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="password" value="${userbean.password}"</td>    
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="${userbean.address}"</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Submit">
                            <a href="${pageContext.request.contextPath}/listuser">Cancel</a>
                        </td>
                    </tr>
                </table>
            </form>
        </c:if>
    </body>
</html>
