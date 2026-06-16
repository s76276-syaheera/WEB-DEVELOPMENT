<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 7:10:37 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<h2>Club Registration Form</h2>

<form action="processRegistration.jsp" method="post">
    Student Name: <input type="text" name="studentName"><br><br>
    Matric Number: <input type="text" name="matricNo"><br><br>

    Select Club:
    <select name="club">
        <option>Programming Club</option>
        <option>Robotics Club</option>
        <option>Multimedia Club</option>
        <option>Sports Club</option>
    </select><br><br>

    <input type="submit" value="Register">
</form>

<%@ include file="footer.jsp" %>