package br.app.dao;

import br.app.entidades.Irrf;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

@RequestScoped
public class IrrfDao {

    @Inject
    private EntityManager entityManager;
    
            public List<Irrf> listar() {
        return entityManager.createQuery("from Irrf").getResultList();
    }
    
    public void salvar(Irrf irrf) {
        entityManager.getTransaction().begin();
        entityManager.persist(irrf);
        entityManager.getTransaction().commit();

    }

}
