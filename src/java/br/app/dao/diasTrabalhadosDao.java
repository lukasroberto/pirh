package br.app.dao;

import br.app.entidades.DiasTrabalhados;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

@RequestScoped
public class diasTrabalhadosDao {

    @Inject
    private EntityManager entityManager;
    
        public List<DiasTrabalhados> listar() {
        return entityManager.createQuery("from DiasTrabalhados").getResultList();
    }
    
    public void salvar(DiasTrabalhados diasTrabalhados) {
        entityManager.getTransaction().begin();
        entityManager.persist(diasTrabalhados);
        entityManager.getTransaction().commit();

    }

}
