/*---------------------------------------------------------------------
 * Função de validação dos campos formLogin
 * Utilização:  funcao ValidaLogin() 
 *---------------------------------------------------------------------*/	 
 function validarCamposLogin(){    
     var frm = document.frmLogin;
     var nome = frm.nome.value;
     var senha = frm.senha.value;
     
     if(nome == ""){
        alert("Favor, preencha o campo usuario!");
        frm.nome.focus();
        return false;
     }else if(senha == ""){
        alert("Favor, preencha o campo senha!");
        frm.senha.focus();
        return false;
     }else{
        caminhourl = "/pizzariaDSW/home.jsp";  
        document.forms[0].action = caminhourl;  
        window.document.forms[0].submit();
        return true;
     }      
 }
