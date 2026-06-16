<%-- 
    Document   : useJavaObject
    Created on : 1 Apr 2026, 5:07:41 pm
    Author     : NURSYAHEERA BINTI MOHD HISHAM
--%>

<%@ page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java Object in JSP Page</title>
    </head>
    <body>
        <h1>Display Current Date and Perform Auto Refresh</h1>
        <%
        Date currentDate = new Date();
        out.println("<p>Current date and time is " + currentDate.toString() + "</p>");
        %>
        
        <%
        response.setIntHeader("Refresh", 5);
        %>
    </body>
</html>
