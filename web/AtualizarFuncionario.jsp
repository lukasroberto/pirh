<%-- 
    Document   : cadastroDeFuncionario
    Created on : 09/05/2013, 20:58:58
    Author     : Lukas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar Funcion&aacute;rio</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <%request.getAttribute("funcionarios");%>
  <section id="conteudo">
  <div id="subTituloConteudo">Atualizar Funcionário</div>
    <form id="form1" name="form1" method="post" action="/FuncionarioController" >
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="2"></td>
        </tr>
        <tr>
          <td></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div class="tipoDadosCadastro">Dados Pessoais</div></td>
        </tr>
        <tr>
          <td><div id="descr">C&oacute;digo:</div></td>
          <td><input name="id" type="text" class="texbox" id="id" value="${funcionarios.id}" size="5" maxlength="5" readonly></td>
        </tr>
        <tr>
          <td width="54"><div id="descr">Nome:</div></td>
          <td width="438"><input name="nome" type="text" class="texbox" id="nome" size="60" maxlength="60" value="${funcionarios.nome}">
            <input type="hidden" name="tipo" value="atualizar"></td>
        </tr>
        <tr>
          <td><div id="descr">Sobrenome:</div></td>
          <td><input name="sobrenome" type="text" class="texbox" id="sobrenome" size="60" maxlength="60" value="${funcionarios.sobrenome}"></td>
        </tr>
        <tr>
          <td><div id="descr">CPF:</div></td>
          <td><input name="cpf" type="text" class="texbox" id="cpf" value="${funcionarios.cpf}"></td>
        </tr>
        <tr>
          <td><div id="descr">RG:</div></td>
          <td><input name="rg" type="text" class="texbox" id="rg" value="${funcionarios.rg}"></td>
        </tr>
        <tr>
          <td><div id="descr">Telefone:</div></td>
          <td><input name="telefone" type="text" class="texbox" id="telefone" value="${funcionarios.telefone}"></td>
        </tr>
        <tr>
          <td><div id="descr">Endere&ccedil;o:</div></td>
          <td><input name="endereco" type="text" class="texbox" id="endereco" size="60" maxlength="60" value="${funcionarios.endereco}"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div class="tipoDadosCadastro">Dados Administrativos</div></td>
        </tr>
        <tr>
          <td><div id="descr">Data de Admiss&atilde;o:</div></td>
          <td><input name="dataAdmissao" type="text" class="texbox" id="dataAdmissao" value="${funcionarios.dataAdmissao}"></td>
        </tr>
        <tr>
          <td><div id="descr">Jornada Mensal:</div></td>
          <td><input name="jornadaMensal" type="text" class="texbox" id="jornadaMensal" value="${funcionarios.jornadaMensal}"></td>
        </tr>
        <tr>
          <td><div id="descr">Dependentes(IRRF):</div></td>
          <td><input name="dependentesIRRF" type="text" class="texbox" id="dependentesIRRF" value="${funcionarios.dependentesIRRF}"></td>
        </tr>
        <tr>
          <td><div id="descr">Dependentes (Sal. Familia):</div></td>
          <td><input name="dependentesSalFamilia" type="text" class="texbox" id="dependentesSalFamilia" value="${funcionarios.dependentesSalFamilia}"></td>
        </tr>
        <tr>
          <td><div id="descr">Sal&aacute;rio Base:</div></td>
          <td><input name="salBase" type="text" class="texbox" id="salBase" value="${funcionarios.salBase}"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input class="btn" type="submit" name="enviar" id="enviar" value="Enviar"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
  </section>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
