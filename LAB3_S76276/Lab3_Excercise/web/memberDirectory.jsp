<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 7:13:23 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%@ include file="header.jsp" %>

<h2>Member Directory</h2>

<%
ArrayList<String> members = new ArrayList<String>();

members.add("Ali Ahmad");
members.add("Siti Nurhaliza");
members.add("John Tan");
members.add("Raj Kumar");
members.add("Aisyah Rahman");
%>

<table border="1" cellpadding="10">
    <tr>
        <th>No</th>
        <th>Name</th>
    </tr>

<%
for(int i = 0; i < members.size(); i++){
%>
    <tr>
        <td><%= i + 1 %></td>
        <td><%= members.get(i) %></td>
    </tr>
<%
}
%>

</table>

<%@ include file="footer.jsp" %>

