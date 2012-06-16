/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testes;

import dao.UsuarioDAO;
import model.Usuario;

/**
 *
 * @author tiagoosg
 */
public class TestaBuscarUsuarioCadastrado {
    public static void main (String[] args){
        Usuario user = UsuarioDAO.getUserLogin("tiago.goncalves@live.com", "123");
        System.out.println(user.getLogin() + " senha: " + user.getSenha());
    }
    
}
