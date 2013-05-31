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
<title>Atualizar Funcionário</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%--@include file="cabecalho.jsp"--%>
  <section id="conteudo">
    <section id="listaFuncionario">
      <table align="center">
        <tr>
          <th colspan="8"><div id="subTituloConteudo">Editar Funcion&aacute;rio</div></th>
        </tr>
        <tr>
          <th colspan="8">&nbsp;</th>
        </tr>
        <tr>
          <th width="170">C&oacute;digo</th>
          <th width="261">Nome Completo</th>
          <th width="173">CPF</th>
          <th width="173">RG</th>
          <th width="173">Telefone</th>
          <th width="173">Endereço</th>
          <th width="173">Admissão</th>
          <th width="173">Sal. Base</th>
        </tr>
        
        <c:forEach items="${funcionarios}" var="funcionario">
          <tr>
            <td>${funcionario.id}</td>
            <td width="261">${funcionario.nome} ${funcionario.sobrenome}</td>
            <td width="173">${funcionario.cpf}</td>
            <td width="173">${funcionario.rg}</td>
            <td width="173">${funcionario.telefone}</td>
            <td width="173">${funcionario.endereco}</td>
            <td width="173">${funcionario.dataAdmissao}</td>
            <td width="173">${funcionario.salBase}</td>
            <td width="57"><a href="/FuncionarioController?tipo=atualizar&id=${funcionario.id}">Alterar</a></td>
            <td width="57"><a href="/FuncionarioController?tipo=deletar&id=${funcionario.id}">Deletar</a></td>
          </tr>
            </form>
          
        </c:forEach>
      </table>
    </section>
  </section>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
