package model;
 //Tiago: Não estou usando 

import dao.UsuarioDAO;


public class Usuario {

   

    private int codigo;
    private String login;
    private String senha;

    public Usuario() {
    }

    public Usuario(String login, String senha) {
        this.login = login;
        this.senha = senha;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
     public static Usuario getUserLogin(String user, String senha) {
           Usuario usuario = UsuarioDAO.getUserLogin(user, senha);
            return usuario;
    }
}