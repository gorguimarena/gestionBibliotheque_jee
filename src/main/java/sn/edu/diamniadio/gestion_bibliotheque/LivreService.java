package sn.edu.diamniadio.gestion_bibliotheque;


import jakarta.ejb.Local;

import java.util.List;

@Local
public interface LivreService {

    void ajouterLivre(Livre livre);
    void supprimerLivre(int id);
    List<Livre> obtenirTousLesLivres();

}
