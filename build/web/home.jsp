<%-- 
    Document   : home
    Created on : 16/04/2012, 22:19:16
    Author     : tiagoosg ooooooooooooi
--%>

<%@page import="controller.ControladorCadastro"%>
<%@page import="org.hibernate.validator.util.Contracts"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="usuario" class="model.Usuario" scope="session"/>    <%--Declara ou assumi um Bean--%>   
        <%
            if (usuario.getLogin() == null) { // verifica se Sessão está vazia             

                String jsp = "";
                String nome = request.getParameter("nome");
                String senha = request.getParameter("senha");

                if (!ControladorBuscas.ehUserCadastrado(nome, senha)) { // verifica se usuario é cadastrado                        
                    jsp = "/Pedido2/index.jsp";                  // Se o Usuario não é cadastrado, Redireciona para a tela de Login

                } else {
                    usuario.setLogin(nome);         // Caso contrário, cria a sessão para o usuario
                    jsp = "/Pedido2/home.jsp";      // redireciona o usuario para essa página novamente.
                }
                response.sendRedirect(jsp);            //redirediciona de fato.

            } else if (usuario.getLogin().equals("admin")) {  // verifica Se a sessao pertence ao admin, se sim monta formulario do admin
        %> 

        <%--<h2>Bom dia, <%=usuario.getLogin()%></h2>--%>
        <h2>Bom dia, ${usuario.login }</h2>

        <table border="0" width="500" align="center">
            <tr>
                <td> <a href="/Pedido2/cadastroProduto.jsp"> Cadastrar Produto</a> </td>                    
            </tr>

            <tr>
                <td> <a href="/Pedido2/cadastroCliente.jsp"> Cadastrar Cliente</a> </td>                    
            </tr>   

            <tr>
                <td> <a href="/Pedido2/realiza-pedido.jsp"> Fazer Pedido </a> </td>                    
            </tr>   
        </table>
        <br>
        <br>               
        <div id="logout" style="position:absolute;top:10px;left:1000px;"><a href="/Pedido2/logout.jsp">Logout</a></div>


        <%} else { //               se chegou aqui é porque a sessao pertence a um usuario qualquer cadastrado.
                response.sendRedirect("/Pedido2/cadastroCliente.jsp");
            }
        %>

    </body>
</html>
