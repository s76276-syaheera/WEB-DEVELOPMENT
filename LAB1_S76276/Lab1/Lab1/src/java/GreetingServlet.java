/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * NAME: NURSYAHEERA BINTI MOHD HISHAM
 * MATRICS.NO: S76276
 * 
 */
public class GreetingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get parameter from URL
        String name = request.getParameter("name");

        // 2. If null or empty → set default "Guest"
        if (name == null || name.trim().isEmpty()) {
            name = "Guest";
        }

        // 3. Send data to JSP
        request.setAttribute("name", name);

        // 4. Forward to JSP page
        RequestDispatcher rd = request.getRequestDispatcher("greeting.jsp");
        rd.forward(request, response);
    }
}