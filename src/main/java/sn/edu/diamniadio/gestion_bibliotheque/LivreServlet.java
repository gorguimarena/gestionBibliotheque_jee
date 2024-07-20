package sn.edu.diamniadio.gestion_bibliotheque;

import java.io.*;
import java.util.Date;
import java.util.List;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;


public class LivreServlet extends HttpServlet {

    @EJB
    LivreServiceImpl livreService = new LivreServiceImpl();
    List<Livre> livreList;
    RequestDispatcher rd;

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String action = request.getParameter("action");

        if (action.equals("list")) {
            livreList = livreService.obtenirTousLesLivres();
            try {
                request.setAttribute("livres", livreList);
                rd = request.getRequestDispatcher("WEB-INF/VIEWS/listLivres.jsp");
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        } else if (action.equals("supprimer")) {
            doDelete(request, response);

        } else if (action.equals("ajouter")) {

            livreList = livreService.obtenirTousLesLivres();
            request.setAttribute("livres", livreList);
            rd = request.getRequestDispatcher("WEB-INF/VIEWS/listLivres.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        } else if (action.equals("acceuil")) {
            rd = request.getRequestDispatcher("index.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }


    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Livre livre = new Livre();
        livre.setTitre(request.getParameter("titre"));
        livre.setAuteur(request.getParameter("auteur"));
        livre.setAnneePublication(request.getParameter("anneePublicite"));
        System.out.println(request.getParameter("titre"));
        livreService.ajouterLivre(livre);

        doGet(request, response);

    }


    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        livreService.supprimerLivre(id);

        livreList = livreService.obtenirTousLesLivres();
        req.setAttribute("livres", livreList);
        rd = req.getRequestDispatcher("WEB-INF/VIEWS/listLivres.jsp");
        try {
            rd.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}