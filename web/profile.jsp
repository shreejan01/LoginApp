<%-- 
    Document   : profile
    Created on : Apr 30, 2021, 1:33:06 AM
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
         <% 
             response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
             
            if (session.getAttribute("username") == null) {
               response.sendRedirect("login.jsp");
               }
               %>
               
               Welcome to your profile ${username}
               
               
               <form action="Logout">
                   <input type="submit" value="Logout">
               </form>         
    </body>
</html>
