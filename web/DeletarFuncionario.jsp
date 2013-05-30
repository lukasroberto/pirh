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
<title>Deletar Funcionários</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <section id="conteudo">
    <section id="listaFuncionario">
      <table align="center">
        <tr>
          <th width="88">C&oacute;digo</th>
          <th width="261">Nome Completo</th>
          <th width="160">CPF</th>
        </tr>
        <c:forEach items="${funcionarios}" var="funcionario">
          <form id="form2" name="form2" method="post" action="/FuncionarioController">
            <tr>
              <td>${funcionario.id}</td>
              <td>${funcionario.nome} ${funcionario.sobrenome}</td>
              <td>${funcionario.cpf}</td>
              <td><input type="hidden" name="tipo" value="deletar">
                <input type="hidden" name="id" value="${funcionario.id}">
                <input type="submit" name="enviar2" id="enviar2" value="Deletar"></td>
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
