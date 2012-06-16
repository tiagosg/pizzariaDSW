<%-- 
    Document   : logout
    Created on : 22/04/2012, 14:57:56
    Author     : tiagoosg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();
        String jsp = "/pizzariaDSW/index.jsp";
        response.sendRedirect(jsp);%>
    </body>
</html>
