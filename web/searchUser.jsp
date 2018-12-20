<%-- 
    Document   : searchUser
    Created on : Dec 13, 2018, 8:19:28 PM
    Author     : Bang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>Search here: </h1>
        <form action="SearchUserServlet" method="POST">
            Search: <input type="text" name="keyword"/><br>
            <input type="submit" value="Search"/> 
        </form>
    </body>
</html>
