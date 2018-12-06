/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controles;

import DAOs.DAOAluno;
import DAOs.DAOAlunoHasModalidades;
import DAOs.DAODisciplinas;
import DAOs.DAODisciplinasHasModalidades;
import DAOs.DAOModalidades;
import Entidades.Aluno;
import Entidades.AlunoHasModalidades;
import Entidades.Disciplinas;
import Entidades.DisciplinasHasModalidades;
import Entidades.Modalidades;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucastoshitaka
 */
@WebServlet(name = "CadastroModalidadeServlet", urlPatterns = {"/CadastroModalidadeServlet"})
public class CadastroModalidadeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CadastroModalidadeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastroModalidadeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");

           // String siglaModalidade = request.getParameter("siglaModalidade");
            String nomeModalidade = request.getParameter("nomeModalidade");
            String[] dis = request.getParameterValues("disciplinas");
            DAOModalidades controle = new DAOModalidades();
            Modalidades entidade = new Modalidades();


            int d = controle.autoIdModalidades();
            entidade.setIdModalidades(d);

            entidade.setNomeModalidades(nomeModalidade);
            
            
            
            controle.inserir(entidade);
           // DAOModalidades daoModalidades = new DAOModalidades();
            DAODisciplinas daoDisciplinas = new DAODisciplinas();
            List<Disciplinas> listadisciplinas = daoDisciplinas.list();
           // DAOAlunoHasModalidades daoAlunoHasModalidades = new DAOAlunoHasModalidades();
            DAODisciplinasHasModalidades daoDisciplinasHasModalidades = new DAODisciplinasHasModalidades();
           
            // GUIAux1 oo = new GUIAux1();
            // String f = oo.getItem();
            
            int a = 0;
            for (String f : dis) {
              
                try {
                    DisciplinasHasModalidades c = daoDisciplinasHasModalidades.obter(d);
                } catch (Exception aaasd) {

                    for (Disciplinas aux : listadisciplinas) {

                        String aaa = String.valueOf(aux.getIdDisciplinas());

                        if (aaa.equals(f)) {
                            a = aux.getIdDisciplinas();
                        }

                    }

                    GUIDisciplinasModalidades xxx = new GUIDisciplinasModalidades(a, d);

                }

            }

                        response.sendRedirect(request.getContextPath() + "/paginas/cadastroModalidade.jsp");


        }
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
