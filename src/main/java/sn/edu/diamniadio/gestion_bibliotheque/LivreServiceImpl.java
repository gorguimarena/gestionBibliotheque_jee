package sn.edu.diamniadio.gestion_bibliotheque;

import com.sun.net.httpserver.Request;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;


import java.util.List;

@Stateless
public class LivreServiceImpl implements LivreService {
    EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("bibliotheque");
    EntityManager entityManager = entityManagerFactory.createEntityManager();
    EntityTransaction transaction = entityManager.getTransaction();

    @Override
    public void ajouterLivre(Livre livre) {
        try{
            transaction.begin();
            entityManager.persist(livre);
            transaction.commit();
        }catch (Exception e) {
            transaction.rollback();
        }

    }

    @Override
    public void supprimerLivre(int id) {
        try{
            transaction.begin();
            entityManager.remove(entityManager.find(Livre.class, id));
            transaction.commit();
        }catch (Exception e) {
            transaction.rollback();
        }
    }

    @Override
    public List<Livre> obtenirTousLesLivres() {
        return entityManager.createQuery("select e from Livre e", Livre.class).getResultList();
    }
}
