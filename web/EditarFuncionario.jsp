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
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<section id = "wrapper" name="wrapper">
  <%@include file="cabecalho.jsp"%>
  <section id="conteudo">
    <section id="listaFuncionario">
    <div id="subTituloConteudo">Editar Funcion&aacute;rio</div>
      <table width="100%" align="center">
        <tr>
          <th colspan="8"></th>
        </tr>
        <tr class="topoColunas">
          <th height="32" class="topoColunasEsquerdo">C&oacute;digo</th>
          <th>Nome Completo</th>
          <th>CPF</th>
          <th>Telefone</th>
          <th>Endereço</th>
          <th colspan="2" class="topoColunasAção">Ação</th>
        </tr>

        <c:forEach items="${funcionarios}" var="funcionario" varStatus ="row">
          <c:choose>
            <c:when test="${row.count % 2 == 0}">
              <c:set var="estiloLinha" value="odd"  />
            </c:when>
            <c:otherwise>
              <c:set var="estiloLinha" value="even"  />
            </c:otherwise>
          </c:choose>
          <tr class="${estiloLinha}">
            <td>${funcionario.id}</td>
            <td>${funcionario.nome} ${funcionario.sobrenome}</td>
            <td>${funcionario.cpf}</td>
            <td>${funcionario.telefone}</td>
            <td>${funcionario.endereco}</td>
            <td width="30"><a href="/FuncionarioController?tipo=atualizar&id=${funcionario.id}"><img src="img/icons/editar.png" alt="Editar"></a></td>
            <td width="30"><a href="/FuncionarioController?tipo=deletar&id=${funcionario.id}"><img src="img/icons/excluir.png" alt="Excluir"></a></td>
          </tr>
        </c:forEach>
      </table>
    </section>
  </section>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
