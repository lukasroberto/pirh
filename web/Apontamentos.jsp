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
<title>Apontamentos</title>
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
      <table width="100%" align="center">
        <tr>
          <th colspan="5"><div id="subTituloConteudo">Par&aacute;metros</div></th>
        </tr>
        <tr>
          <th colspan="5">&nbsp;</th>
        <tr>
          <th colspan="5" bgcolor="#CCCCCC">TABELA INSS - VIG&Ecirc;NCIA 2013</th>
        </tr>
        <tr>
          <th width="156">&nbsp;</th>
          <th width="129">De</th>
          <th width="150">At&eacute;</th>
          <th width="171">%</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${inss}" var="inss">
          <tr>
            <td width="156">&nbsp;</td>
            <td width="129">${inss.de}</td>
            <td width="150">${inss.ate}</td>
            <td>${inss.porcentagem}</td>
            <td>&nbsp;</td>
          </tr>
        </c:forEach>
        <tr>
          <th colspan="5">&nbsp;</th>
        </tr>
        <tr>
          <th colspan="5" bgcolor="#CCCCCC">DIAS TRABALHADOS</th>
        </tr>
        <tr>
          <th width="156">&nbsp;</th>
          <th width="129">Mes/Ano</th>
          <th width="150">Dias &Uacute;teis</th>
          <th width="171">Dias n&atilde;o &Uacute;teis</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${diasTrabalhados}" var="diasTrabalhado">
          <tr>
            <td width="156">&nbsp;</td>
            <td width="129">${diasTrabalhado.mes} / ${diasTrabalhado.ano}</td>
            <td width="150">${diasTrabalhado.diasUteis}</td>
            <td>${diasTrabalhado.diasNaoUteis}</td>
            <td>&nbsp;</td>
          </tr>
        </c:forEach>
        <tr>
          <th colspan="5">&nbsp;</th>
        </tr>
        <tr>
          <th colspan="5" bgcolor="#CCCCCC">TABELA INSS - VIG&Ecirc;NCIA 2013</th>
        </tr>
        <tr>
          <th width="156">&nbsp;</th>
          <th width="129">De</th>
          <th width="150">At&eacute;</th>
          <th width="171">%</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${inss}" var="inss">
          <tr>
            <td width="156">&nbsp;</td>
            <td width="129">${inss.de}</td>
            <td width="150">${inss.ate}</td>
            <td>${inss.porcentagem}</td>
            <td>&nbsp;</td>
          </tr>
        </c:forEach>
      </table>
    </section>
  </section>
  <%@include file="rodape.jsp"%>
</section>
</body>
</html>
