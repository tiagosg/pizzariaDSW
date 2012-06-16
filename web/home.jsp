<%@page import="controller.ControladorBuscas"%>
<%@page import="controller.ControladorCadastro"%>
<%@page import="org.hibernate.validator.util.Contracts"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizzaria DSW</title>
    </head>
    <body>
        <jsp:useBean id="usuario" class="model.Usuario" scope="session"/>    <%--Declara ou assumi um Bean--%>   
        <%
            if (usuario.getLogin() == null) { // verifica se Sessão está vazia             

                String jsp = "";
                String pUsuario = request.getParameter("usuario");
                String pSenha = request.getParameter("senha");

                if (!ControladorBuscas.ehUserCadastrado(pUsuario, pSenha)) { // verifica se usuario é cadastrado                        
                    jsp = "/pizzariaDSW/index.jsp";                  // Se o Usuario não é cadastrado, Redireciona para a tela de Login

                } else {
                    usuario.setLogin(pUsuario);          // Caso contrário, cria(atribui) a sessão para o usuario e
                    jsp = "/pizzariaDSW/home.jsp";      // redireciona o usuario para essa página novamente.
                }
                response.sendRedirect(jsp);            //redirediciona de fato.

            } else if (usuario.getLogin().equals("admin")) {        // verifica Se a sessao pertence ao admin, se sim monta formulario do admin
        %> 

        <%--<h2>Bom dia, <%=usuario.getLogin()%></h2>--%>
        <h2>Bom dia, ${usuario.login }</h2>

        <table border="0" width="500" align="center">
            <tr>
                <td> <a href="/pizzariaDSW/cadastrarProduto.jsp"> Cadastrar Produtos</a> </td>                    
            </tr>
            
        </table>
        <br>
        <br>               
        <div id="logout" style="position:absolute;top:10px;left:1000px;"><a href="/pizzariaDSW/logout.jsp">Logout</a></div>


        <%} else { //               se chegou aqui é porque a sessao pertence a um usuario qualquer cadastrado.
                response.sendRedirect("/pizzariaDSW/testeUsuarioCadastrado.jsp");
            }
        %>

    </body>
</html>
