package testes;

import dao.UsuarioDAO;
import model.Usuario;

public class TestaBuscarUsuarioCadastrado {
    public static void main (String[] args){
        Usuario user = UsuarioDAO.getUserLogin("tiago.goncalves@live.com", "123");
        System.out.println(user.getLogin() + " senha: " + user.getSenha());
    }
    
}
