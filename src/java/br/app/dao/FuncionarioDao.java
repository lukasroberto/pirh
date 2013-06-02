package br.app.dao;

import br.app.entidades.Funcionario;
import br.app.entidades.Irrf;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

@RequestScoped
public class FuncionarioDao {

    @Inject
    private EntityManager entityManager;

    public List<Funcionario> listar() {
        return entityManager.createQuery("from Funcionario").getResultList();
    }

    public void salvar(Funcionario funcionario) {
        entityManager.getTransaction().begin();
        entityManager.persist(funcionario);
        entityManager.getTransaction().commit();

    }
        public void salvarIrrf(Irrf irrf) {
        entityManager.getTransaction().begin();
        entityManager.persist(irrf);
        entityManager.getTransaction().commit();

    }

    public void deletar(Funcionario funcionario) {
        entityManager.getTransaction().begin();
        entityManager.remove(funcionario);
        entityManager.getTransaction().commit();

    }

    public void atualizar(Funcionario funcionario) {
        entityManager.getTransaction().begin();
        entityManager.merge(funcionario);
        entityManager.getTransaction().commit();

    }

    public Funcionario find(Long id) {
        return entityManager.find(Funcionario.class, id);
    }
}
