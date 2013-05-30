package br.app.fabricas;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Disposes;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaDeEntityManager {

    @Produces
    @ApplicationScoped
    public EntityManagerFactory criarEntityManagerFactory() {
        System.out.println("Criando factory");
        return Persistence.createEntityManagerFactory("TestPU");
    }

    @Produces
    @RequestScoped
    public EntityManager criarEntityManager(EntityManagerFactory entityManagerFactory) {
        System.out.println("Criando entity manager");
        return entityManagerFactory.createEntityManager();
    }

    public void fecharEntityManager(@Disposes EntityManager entityManager) {
        System.out.println("Fechando entity manager");
        entityManager.close();
    }

    public void fecharEntityManagerFactory(@Disposes EntityManagerFactory entityManagerFactory) {
        System.out.println("Fechando factory");
        entityManagerFactory.close();
    }
}
