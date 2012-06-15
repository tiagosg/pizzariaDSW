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
        <jsp:useBean id="cliente" class="model.Cliente" scope="session"/>
        <%
            if (!(cliente.getEmail() == null)) {
                //response.sendRedirect("/Pedido2/home.jsp");
            }
        %>
        <h1>Entrar</h1>
    
    <form name="frmLogin" method='POST'>
        <label>Email:
            <input type="text" name="nome" id="nome" maxlength="10" size="12">    
        </label><br />
                <br />
        <label>Senha:&nbsp;&nbsp;&nbsp;
            <input type="password" name="senha" id="senha" maxlength="10" size="12">    
        </label><br />
                <br />
        
        <button type="button" onclick="validarCamposLogin()">Acessar</button>        
    </form>  
    </body>
</html>

