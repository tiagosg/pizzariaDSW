<%@page import="controller.ControladorCadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="endereco" class="model.Endereco" scope="session"/>
        <jsp:setProperty name="endereco" property="logradouro" param="Logradouro"/>
        <jsp:setProperty name="endereco" property="numero" param="Numero"/>
        <jsp:setProperty name="endereco" property="complemento" param="Complemento"/>
        <jsp:setProperty name="endereco" property="bairro" param="Bairro"/>
        <jsp:setProperty name="endereco" property="cidade" param="Cidade"/>
        <jsp:setProperty name="endereco" property="uf" param="UF"/>
        <jsp:setProperty name="endereco" property="cep" param="CEP"/>
        
        <jsp:useBean id="usuario" class="model.Usuario" scope="session"/>
        <jsp:setProperty name="usuario" property="login" param="Email"/>
        <jsp:setProperty name="usuario" property="senha" param="Senha"/>
        
        <jsp:useBean id="cliente" class="model.Cliente" scope="session"/>
        <jsp:setProperty name="cliente" property="nome" param="Nome"/>
        <jsp:setProperty name="cliente" property="cpf" param="CPF"/>
        <jsp:setProperty name="cliente" property="email" param="Email"/>
        <jsp:setProperty name="cliente" property="senha" param="Senha"/>
        <jsp:setProperty name="cliente" property="telefone" param="Telefone"/>
        <jsp:setProperty name="cliente" property="celular" param="Celular"/>
        <jsp:setProperty name="cliente" property="usuario" value="${usuario}"/>
        <jsp:setProperty name="cliente" property="endereco" value="${endereco}"/>
        
        <form action="cadastrarCliente.jsp" method="POST">
            <p>  <h3> Dados Pessoais: </h3></p>
            <p>  Nome:   <input type="text" size="25" name="Nome">   </p>
            <p>  CPF:   <input type="text" size="25" name="CPF">   </p>
            <p>  Email:   <input type="text" size="25" name="Email"> </p>
            <p>  Senha:   <input type="password" size="25" name="Senha"> </p>
            <p>  Telefone:   <input type="text" size="25" name="Telefone">   </p>
            <p>  Celular:   <input type="text" size="25" name="Celular"> </p>
            <p>  <h3> Endereço: </h3></p>
            <p>  Rua/Av.:    <input type="text" size="40" name="Logradouro">    </p>
            <p>  Número: <input type="text" size="25" name="Numero"> </p>
            <p>  Complemento: <input type="text" size="25" name="Complemento"> </p>
            <p>  Bairro: <input type="text" size="25" name="Bairro"> </p>
            <p>  Cidade: <input type="text" size="25" name="Cidade"> </p>
            <p>  UF: <input type="text" size="2" name="UF"> </p>
            <p>  CEP: <input type="text" size="25" name="CEP"> </p>
            <p> Selecione a Opção Desejada </p>
                <input type="submit" value="Cadastrar">  <input type="reset" value="Limpar"> <br>
        </form>
        
        <% if(request.getParameter("Nome") != null){
            ControladorCadastro controladorCadastro = new ControladorCadastro();
            controladorCadastro.cadastrarCliente(cliente);
         }
        
        //TESTE
        %>
       
    </body>
</html>
