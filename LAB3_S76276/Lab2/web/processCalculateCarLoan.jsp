<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 3:28:17 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Calculate Car Loan</title>
        <style>
            /* Added CSS to match the blue text requirement */
            .blue-title {
                color: blue;
                font-weight: bold;
            }
            body { font-family: Arial, sans-serif; }
            fieldset { width: 400px; }
        </style>
    </head>
    <body>
        <h2>Perform Car Loan Calculation</h2>
        
        <fieldset>
        <%
            // These names must match the "name" attribute in your HTML form
            String amountStr = request.getParameter("loan_amount");
            String periodStr = request.getParameter("loan_period");
            
            double loanAmount = 0.0;
            int period = 0;
            double totalLoan = 0.0;
            double interestRate = 0.045; // 4.5%
            
            if (amountStr != null && periodStr != null) {
                try {
                    loanAmount = Double.parseDouble(amountStr);
                    period = Integer.parseInt(periodStr);
                    
                    // Calculation logic
                    totalLoan = loanAmount + (loanAmount * interestRate * period);
                } catch (NumberFormatException e) {
                    // Handle case where input is not a number
                    out.println("<p style='color:red;'>Error: Please enter a valid number.</p>");
                }
            }
        %>
            <p class="blue-title">Details of car loan:</p>   
            <p>Loan Request : <%= loanAmount %></p>
            <p>Period of payment : <%= period %></p>
            <p>Total Loan (+ interest) : <%= totalLoan %></p>
        </fieldset>

        <p>&copy;2026-Syaffiq</p>
    </body>
</html>