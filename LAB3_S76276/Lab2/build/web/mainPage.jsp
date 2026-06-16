<%-- 
    Document   : mainPage
    Created on : 14 Apr 2026, 4:12:19 pm
    Author     : Nursyaheera binti Mohd Hisham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mainPage</title>
        <style>
            body {
                margin: 20px;
                font-family: Arial, sans-serif;
            }
            .content-area {
                padding: 40px 20px;
                min-height: 150px;
            }
            p {
                color: red;
                line-height: 1.5;
            }
        </style>
    </head>
    <body>
        <%@include file="headerPage.jsp" %>

        <div class="content-area">
            <p>
                Java Server Page (JSP) is a technology for controlling the content<br> 
                or appearance of Web pages through the use of servlets, small<br> 
                programs that are specified in the Web page and run on the Web server <br> 
                to modify the Web page before it is sent to the user who requested it.
            </p>
        </div>

        <%@include file="footerPage.jsp" %>
    </body>
</html>
