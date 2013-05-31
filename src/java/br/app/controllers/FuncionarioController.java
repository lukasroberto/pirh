package br.app.controllers;

import br.app.dao.FuncionarioDao;
import br.app.entidades.Funcionario;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FuncionarioController extends HttpServlet {

    @Inject
    private FuncionarioDao dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        String dataAdmissao = request.getParameter("dataAdmissao");
        String jornadaMensal = request.getParameter("jornadaMensal");
        String dependentesIRRF = request.getParameter("dependentesIRRF");
        String dependentesSalFamilia = request.getParameter("dependentesSalFamilia");
        String salBase = request.getParameter("salBase");
        
        String tipo = request.getParameter("tipo");

        
        
                if (tipo.equals("atualizar")) {
            if (nome == null) {
                //Listar
                Funcionario funcionario = dao.find(Long.parseLong(id));
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "AtualizarFuncionario.jsp").forward(request, response);
            } else {
                Funcionario alteraFuncionario = dao.find(Long.parseLong(id));
                alteraFuncionario.setNome(nome.toString());
                alteraFuncionario.setSobrenome(sobrenome.toString());
                alteraFuncionario.setCpf(cpf.toString());
                alteraFuncionario.setRg(rg);
                alteraFuncionario.setTelefone(telefone);
                alteraFuncionario.setEndereco(endereco);
                alteraFuncionario.setDataAdmissao(dataAdmissao);
                alteraFuncionario.setDependentesIRRF(Integer.parseInt(dependentesIRRF));
                alteraFuncionario.setDependentesSalFamilia(Integer.parseInt(dependentesSalFamilia));
                alteraFuncionario.setSalBase(Float.parseFloat(salBase));
                dao.atualizar(alteraFuncionario);

                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "EditarFuncionario.jsp").forward(request, response);
            }
        }
        

        if (tipo.equals("editar")) {
            if (id == null) {
                //Listar
                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "EditarFuncionario.jsp").forward(request, response);
            } else {
                Funcionario alteraFuncionario = dao.find(Long.parseLong(id));
                alteraFuncionario.setNome(nome.toString());
                alteraFuncionario.setSobrenome(sobrenome.toString());
                alteraFuncionario.setCpf(cpf.toString());
                dao.atualizar(alteraFuncionario);

                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "EditarFuncionario.jsp").forward(request, response);
            }
        }

        if (tipo.equals("salvar")) {

            if (nome == null) {
                //Listar
                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "index.jsp").forward(request, response);

            } else {

                //Cria um novo Funcionario
                Funcionario salvaFuncionario = new Funcionario();
                salvaFuncionario.setCpf(cpf);
                salvaFuncionario.setNome(nome);
                salvaFuncionario.setSobrenome(sobrenome);
                salvaFuncionario.setRg(rg);
                salvaFuncionario.setTelefone(telefone);
                salvaFuncionario.setEndereco(endereco);
                salvaFuncionario.setDataAdmissao(dataAdmissao);
                salvaFuncionario.setJornadaMensal(Float.parseFloat(jornadaMensal));
                salvaFuncionario.setDependentesIRRF(Integer.parseInt(dependentesIRRF));
                salvaFuncionario.setDependentesSalFamilia(Integer.parseInt(dependentesSalFamilia));
                salvaFuncionario.setSalBase(Float.parseFloat(salBase));
    
                //Salvar
                dao.salvar(salvaFuncionario);
                //Listar
                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "listarFuncionario.jsp").forward(request, response);

            }
        }
        if (tipo.equals("deletar")) {

            if (id == null) {
                //Listar
                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "DeletarFuncionario.jsp").forward(request, response);
            } else {

                Funcionario deletaFuncionario = dao.find(Long.parseLong(id));
                dao.deletar(deletaFuncionario);

                //Listar
                List<Funcionario> funcionario = dao.listar();
                //Envia para JSP
                request.setAttribute(
                        "funcionarios", funcionario);
                request.getRequestDispatcher(
                        "EditarFuncionario.jsp").forward(request, response);
            }
        }
        if (tipo.equals("listar")) {
            //Listar
            List<Funcionario> funcionario = dao.listar();
            //Envia para JSP
            request.setAttribute(
                    "funcionarios", funcionario);
            request.getRequestDispatcher(
                    "listarFuncionario.jsp").forward(request, response);


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
