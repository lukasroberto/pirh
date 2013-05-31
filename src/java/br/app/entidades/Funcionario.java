package br.app.entidades;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Funcionario implements Serializable {

    private static final long serialVersionUID = 1L;
    private Long id;
    private String nome;
    private String cpf;
    private String rg;
    private String telefone;
    private String endereco;
    private String dataAdmissao;
    private float jornadaMensal;
    private int dependentesIRRF;
    private int dependentesSalFamilia;
    private float salBase;
    private String sobrenome;

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getDataAdmissao() {
        return dataAdmissao;
    }

    public void setDataAdmissao(String dataAdmissao) {
        this.dataAdmissao = dataAdmissao;
    }

    public float getJornadaMensal() {
        return jornadaMensal;
    }

    public void setJornadaMensal(float jornadaMensal) {
        this.jornadaMensal = jornadaMensal;
    }

    public int getDependentesIRRF() {
        return dependentesIRRF;
    }

    public void setDependentesIRRF(int dependentesIRRF) {
        this.dependentesIRRF = dependentesIRRF;
    }

    public int getDependentesSalFamilia() {
        return dependentesSalFamilia;
    }

    public void setDependentesSalFamilia(int dependentesSalFamilia) {
        this.dependentesSalFamilia = dependentesSalFamilia;
    }

    public float getSalBase() {
        return salBase;
    }

    public void setSalBase(float salBase) {
        this.salBase = salBase;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }


    
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "br.app.entidades.Funcionario[ id=" + id + " ]";
    }
}
