<%-- 
    Document   : login
    Created on : Apr 30, 2021, 12:35:37 AM
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="http://localhost:8080/LoginApp/">Home</a>
        <br> 
        <h1>Login Page</h1>
        
        <form action="Login" method="POST">
            Enter username: <input type="text" name="uname" > <br>
            Enter password: <input type="password" name="pass" > <br> 
            <input type="submit" value="login">
        </form>
    </body>
</html>
