<%-- 
    Document   : cadastroDeFuncionario
    Created on : 09/05/2013, 20:58:58
    Author     : Lukas
--%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Funcionário</title>
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
      <form id="form1" name="form1" method="post" action="/FuncionarioController" >
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="2"><div id="subTituloConteudo">Cadastro de Funcionário</div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div class="tipoDadosCadastro">Dados Pessoais</div></td>
        </tr>
        <tr>
          <td width="54"><div id="descr">Nome:</div></td>
          <td width="438"><input name="nome" type="text" class="texbox" id="nome" size="60" maxlength="60">
            <input type="hidden" name="tipo" value="salvar"></td>
        </tr>
        <tr>
          <td><div id="descr">Sobrenome:</div></td>
          <td><input name="sobrenome" type="text" class="texbox" id="sobrenome" size="60" maxlength="60"></td>
        </tr>
        <tr>
          <td><div id="descr">CPF:</div></td>
          <td><input name="cpf" type="text" class="texbox" id="cpf"></td>
        </tr>
        <tr>
          <td><div id="descr">RG:</div></td>
          <td><input name="rg" type="text" class="texbox" id="rg"></td>
        </tr>
        <tr>
          <td><div id="descr">Telefone:</div></td>
          <td><input name="telefone" type="text" class="texbox" id="telefone"></td>
        </tr>
        <tr>
          <td><div id="descr">Endere&ccedil;o:</div></td>
          <td><input name="endereco" type="text" class="texbox" id="endereco" size="60" maxlength="60"></td>
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
          <td><input name="dataAdmissao" type="text" class="texbox" id="dataAdmissao"></td>
        </tr>
                <tr>
          <td><div id="descr">Jornada Mensal:</div></td>
          <td><input name="jornadaMensal" type="text" class="texbox" id="jornadaMensal"></td>
        </tr>
        <tr>
          <td><div id="descr">Dependentes(IRRF):</div></td>
          <td><input name="dependentesIRRF" type="text" class="texbox" id="dependentesIRRF"></td>
        </tr>
        <tr>
          <td><div id="descr">Dependentes (Sal. Familia):</div></td>
          <td><input name="dependentesSalFamilia" type="text" class="texbox" id="dependentesSalFamilia"></td>
        </tr>
        <tr>
          <td><div id="descr">Sal&aacute;rio Base:</div></td>
          <td><input name="salBase" type="text" class="texbox" id="salBase"></td>
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
