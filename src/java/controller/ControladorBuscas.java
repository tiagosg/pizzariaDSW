package controller;

import model.Usuario;

public class ControladorBuscas {
    
    public static boolean ehUserCadastrado(String user, String senha) {
       
        Usuario usuario = Usuario.getUserLogin(user, senha);
        return (usuario == null) ? false : true;

    }
    
}
