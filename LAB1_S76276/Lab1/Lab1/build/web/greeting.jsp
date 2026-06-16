<%-- 
    Document   : greeting.jsp
    Created on : 1 Apr 2026, 5:44:49 pm
    Author     : NURSYAHEERA BINTI MOHD HISHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
    <title>Greeting Page</title>

    <!-- Auto refresh every 5 seconds -->
    <meta http-equiv="refresh" content="5">
</head>

<body>

<%
    // 1. Get name from servlet
    String name = (String) request.getAttribute("name");

    // 2. Get current date & time
    Date now = new Date();
%>

<h1>Hello, <%= name %>!</h1>

<p>Current Date & Time: <%= now %></p>

</body>
</html>
