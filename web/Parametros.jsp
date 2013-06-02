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
  <%@include file="cabecalho.jsp"%>
  <section id="conteudo">
    <section id="listaFuncionario">
      <div id="subTituloConteudo">Par&aacute;metros</div>
      <table width="100%">
        <tr>
          <th colspan="5" bgcolor="#CCCCCC" class="topoColunas">DIAS TRABALHADOS</th>
        </tr>
        <tr class="tipoDadosCadastro">
          <th width="156">&nbsp;</th>
          <th width="129">Mes/Ano</th>
          <th width="150">Dias &Uacute;teis</th>
          <th width="171">Dias n&atilde;o &Uacute;teis</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${diasTrabalhados}" var="diasTrabalhado" varStatus ="row">
                          <c:choose>
            <c:when test="${row.count % 2 == 0}">
              <c:set var="estiloLinha" value="odd"  />
            </c:when>
            <c:otherwise>
              <c:set var="estiloLinha" value="even"  />
            </c:otherwise>
          </c:choose>
          <tr class="${estiloLinha}">
            <td width="156">&nbsp;</td>
            <td width="129">${diasTrabalhado.mes} / ${diasTrabalhado.ano}</td>
            <td width="150">${diasTrabalhado.diasUteis}</td>
            <td>${diasTrabalhado.diasNaoUteis}</td>
            <td>&nbsp;</td>
          </tr>
        </c:forEach>
        <tr>
          <th colspan="5" bgcolor="#CCCCCC" class="topoColunas">TABELA INSS - VIG&Ecirc;NCIA 2013</th>
        </tr>
        <tr class="tipoDadosCadastro">
          <th width="156">&nbsp;</th>
          <th width="129">De</th>
          <th width="150">At&eacute;</th>
          <th width="171">%</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${inss}" var="inss" varStatus ="row">
                  <c:choose>
            <c:when test="${row.count % 2 == 0}">
              <c:set var="estiloLinha" value="odd"  />
            </c:when>
            <c:otherwise>
              <c:set var="estiloLinha" value="even"  />
            </c:otherwise>
          </c:choose>
          <tr class="${estiloLinha}">
            <td width="156">&nbsp;</td>
            <td width="129">${inss.de}</td>
            <td width="150">${inss.ate}</td>
            <td>${inss.porcentagem}</td>
            <td>&nbsp;</td>
          </tr>
        </c:forEach>
      </table>
      <table width="100%" align="center">
        <tr>
          <th colspan="6"></th>
        </tr>
        <tr>
          <th colspan="6" bgcolor="#CCCCCC" class="topoColunas">TABELA IRRF - VIG&Ecirc;NCIA 2013</th>
        </tr>
        <tr>
          <th width="156">&nbsp;</th>
          <th width="129" class="tipoDadosCadastro">De</th>
          <th width="150" class="tipoDadosCadastro">At&eacute;</th>
          <th width="171" class="tipoDadosCadastro">%</th>
          <th width="170" class="tipoDadosCadastro">Dedu&ccedil;&atilde;o</th>
          <th width="170">&nbsp;</th>
        </tr>
        <c:forEach items="${irrf}" var="irrf" varStatus ="row">
                  <c:choose>
            <c:when test="${row.count % 2 == 0}">
              <c:set var="estiloLinha" value="odd"  />
            </c:when>
            <c:otherwise>
              <c:set var="estiloLinha" value="even"  />
            </c:otherwise>
          </c:choose>
          <tr class="${estiloLinha}">
            <td width="156">&nbsp;</td>
            <td width="129">${irrf.de}</td>
            <td width="150">${irrf.ate}</td>
            <td>${irrf.porcentagem}</td>
            <td>${irrf.deducao}</td>
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
