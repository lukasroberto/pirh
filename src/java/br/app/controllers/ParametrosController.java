/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.app.controllers;

import br.app.dao.InssDao;
import br.app.dao.IrrfDao;
import br.app.dao.diasTrabalhadosDao;
import br.app.entidades.DiasTrabalhados;
import br.app.entidades.Inss;
import br.app.entidades.Irrf;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ParametrosController extends HttpServlet {

    @Inject
    private diasTrabalhadosDao daoDiasTrabalhados;
    @Inject
    private IrrfDao daoIrrf;
    @Inject
    private InssDao daoInss;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tipo = request.getParameter("tipo");

        if (tipo.equals("listar")) {
            //Listar
            List<DiasTrabalhados> diasTrabalhados = daoDiasTrabalhados.listar();
            List<Irrf> irrf = daoIrrf.listar();
            List<Inss> inss = daoInss.listar();
            
            System.out.println(">>>>>>>>>>>>>>> "+irrf.get(0).getAte());

            //Envia para JSP
            request.setAttribute(
                    "diasTrabalhados", diasTrabalhados);
            request.setAttribute(
                    "inss", inss);
            request.setAttribute(
                    "irrf", irrf);
            request.getRequestDispatcher(
                    "Parametros.jsp").forward(request, response);
        }


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
