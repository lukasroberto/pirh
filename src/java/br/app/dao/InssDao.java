package br.app.dao;

import br.app.entidades.Inss;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

@RequestScoped
public class InssDao {

    @Inject
    private EntityManager entityManager;
    
            public List<Inss> listar() {
        return entityManager.createQuery("from Inss").getResultList();
    }
    
    public void salvar(Inss inss) {
        entityManager.getTransaction().begin();
        entityManager.persist(inss);
        entityManager.getTransaction().commit();

    }

}
