<%-- 
    Document   : index
    Created on : 7-Jan-2019, 5:47:41 PM
    Author     : ektasharma
--%>

<%@page import="session.SayHelloRemote"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Context ctx = new InitialContext();
        SayHelloRemote sb = (SayHelloRemote) ctx.lookup(SayHelloRemote.class.getName());
        String result = sb.HelloMethod("Bean");
        out.println(result);
        %>
    </body>
</html>
