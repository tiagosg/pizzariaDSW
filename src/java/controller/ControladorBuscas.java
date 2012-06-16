/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Usuario;

/**
 *
 * @author tiagoosg
 */
public class ControladorBuscas {
    
    public static boolean ehUserCadastrado(String user, String senha) {
       
        Usuario usuario = Usuario.getUserLogin(user, senha);
        return (usuario == null) ? false : true;

    }
    
}
