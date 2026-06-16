<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 7:12:42 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<h2>Fee Calculator</h2>

<form method="post">
    Number of Activities:
    <input type="number" name="activity"><br><br>
    <input type="submit" value="Calculate">
</form>

<%
String act = request.getParameter("activity");

if(act != null){
    int activity = Integer.parseInt(act);
    double total = activity * 10.0;
%>

<h3>Total Fee: RM <%= String.format("%.2f", total) %></h3>

<%
}
%>

<%@ include file="footer.jsp" %>
