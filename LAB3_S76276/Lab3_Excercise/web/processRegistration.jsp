<%-- 
    Document   : processRegistration.jsp
    Created on : 14 Apr 2026, 7:11:50 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<%
String name = request.getParameter("studentName");
String matric = request.getParameter("matricNo");
String club = request.getParameter("club");
%>

<h2>Registration Result</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Matric No:</b> <%= matric %></p>
<p><b>Club:</b> <%= club %></p>

<%@ include file="footer.jsp" %>
