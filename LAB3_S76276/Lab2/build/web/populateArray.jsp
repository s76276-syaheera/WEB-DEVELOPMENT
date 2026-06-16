<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 2:50:32 pm
    Author     : Nursyaheera binti Mohd Hisham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PopulateArray</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 40px;
            }
            h1 {
                font-size: 24px;
            }
            table {
                border-collapse: collapse;
                width: 600px;
                text-align: center;
                border: 1px solid #ddd;
            }
            th {
                background-color: #e6cc80; /* Gold/Tan color from image */
                padding: 12px;
                border: 1px solid #ccc;
            }
            td {
                padding: 10px;
                border: 1px solid #eee;
            }
            /* Zebra striping for the background color effect */
            tr:nth-child(even) {
                background-color: #f9f6f0;
            }
            tr:nth-child(odd) {
                background-color: #ffffff;
            }
            .footer {
                margin-top: 20px;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        
        <h1>Read Java array and populate it into HTML table</h1>
        
        <%
            //2D array
            int[][] sales = {
                {2500, 2100,2200},
                {2000, 1900, 2400},
                {1800, 2200, 2450},
            };
        String[] salesman = {"Salesman 1", "Salesman 2", "Salesman 3"};
        
        %>

        <table border="1" cellpadding="10">
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mar</th>
            </tr>

            <%
                // loop untuk display data
                for(int i = 0; i < sales.length; i++){
            %>
            <tr>
                <td><%= salesman[i] %></td>
                <td><%= sales[i][0] %></td>
                <td><%= sales[i][1] %></td>
                <td><%= sales[i][2] %></td>
            </tr>
            <%
                }
            %>

</table>
    </body>
</html>
