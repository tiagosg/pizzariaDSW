<%-- 
    Document   : index
    Created on : 09/04/2012, 11:11:13
    Author     : tiagoosg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PedidoWeb v3</title>
        <script type="text/javascript" language="JavaScript" src="js/webvalida.js"></script>
    </head>
    <body>
        <jsp:useBean id="usuario" class="model.Usuario" scope="session"/>
        <%
            if (!(usuario.getLogin() == null)) {
                //response.sendRedirect("/PizzariaWeb/home.jsp");
            }
        %>
        <h1>Entrar</h1>

        <form name="frmLogin" method='GET' action="/pizzariaDSW/home.jsp">
            <label>Usuário:
                <input type="text" name="usuario" id="usuario" maxlength="30" size="30">    
            </label><br />
            <br />
            <label>Senha:&nbsp;&nbsp;&nbsp;
                <input type="password" name="senha" id="senha" maxlength="20" size="20">    
            </label><br />
            <br />
            <button type="submit">Acessar</button>
            <!--<button type="button" onclick="validarCamposLogin()">Acessar</button>  <!-- chama a funcaoJavascrit, se tiver tudo OK redireciona para caminhourl = "/pizzariaDSW/home.jsp";  -->      
        </form>  
    </body>
</html>

