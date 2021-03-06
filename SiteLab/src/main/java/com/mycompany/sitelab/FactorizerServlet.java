/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitelab;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
@WebServlet(name = "factorizer", urlPatterns = {"/factorizer"})
public class FactorizerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("factorizer.jsp");
        rd.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int number;
            int totalFactors = 0;
            int sum = 0;
            number = Integer.parseInt(request.getParameter("number"));
            List<Integer> factors = new ArrayList<>();

            for (int i = 1; i < number; i++) {
                if (number % i == 0) {
                    factors.add(i);
                    totalFactors++;
                    sum += i;
                }
            }

            request.setAttribute("number", number);
            request.setAttribute("factors", factors);

            if (sum == number) {
                request.setAttribute("perfect", true);
            } else {
                request.setAttribute("perfect", false);
            }
            if (totalFactors == 1) {
                request.setAttribute("prime", true);
            } else {
                request.setAttribute("prime", false);
            }
        } catch (NumberFormatException ex) {
            request.setAttribute("error", "Input error. Please try again.");
        }

//        RequestDispatcher rd = request.getRequestDispatcher("factorizer.jsp");
//        rd.forward(request, response);
        
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Factorizor";
    }// </editor-fold>

}
