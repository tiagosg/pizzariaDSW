<%@page import="controller.ControladorCadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizzaria DSW</title>
    </head>
    <body>
        <h1>Cadastro de Produto</h1>
        <jsp:useBean id="produto" class="model.Produto" scope="session"/>
        <jsp:setProperty name="produto" property="descricao" param="Descricao"/>
        <jsp:setProperty name="produto" property="preco" param="Preco"/>
        
        <form action="cadastrarProduto.jsp" method="POST">
            <p>  <h3> Dados do Produto: </h3></p>
            <p>  Descricao:   <input type="text" size="25" name="Descricao">   </p>
            <p>  Preco:   <input type="text" size="25" name="Preco">   </p>
            <p> Selecione a Opção Desejada </p>
                <input type="submit" value="Cadastrar">  <input type="reset" value="Limpar"> <br>
        </form>
        
        <% if(request.getParameter("Descricao") != null){
            ControladorCadastro controladorCadastro = new ControladorCadastro();
            controladorCadastro.cadastrarProduto(produto);
         }
        %>
    </body>
</html>