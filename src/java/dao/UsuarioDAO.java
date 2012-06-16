/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bdMapping.HibernateUtil;
import java.util.List;
import model.Usuario;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author tiagoosg
 */
public class UsuarioDAO {

    public static Usuario getUserLogin(String login, String senha) {


        Session sessao = HibernateUtil.getSessionFactory().getCurrentSession();
        sessao.beginTransaction();
        //Usuario usuario = (Usuario) sessao.createQuery(
        //        "from Usuario where login='" + login + "' and senha= '" + senha + "'").uniqueResult();
        Query seleciona = sessao.getNamedQuery("buscarUsuarioCadastrado"); // NamedQuery criada em usuario.hbm.xml
        seleciona.setString("login", login);
        seleciona.setString("senha", senha);
        Usuario usuario = (Usuario) seleciona.uniqueResult();   //Retorna um Objeto (o que possui login = senha)

        return usuario;

    }
}
/*
 *
 * public static void recuperarProdutosPeloNome(String nomeDoProduto) {
 *
 * Session sessao = HibernateUtil.getSessionFactory().getCurrentSession();
 * sessao.beginTransaction();
 *
 * Query select = sessao.getNamedQuery("buscarProdutoPeloNome");
 * select.setString("descricao", nomeDoProduto);
 *
 * List objetos = select.list();
 *
 * for (int i = 0; i < objetos.size(); i++) {
 *
 * Produto produto = (Produto) objetos.get(i); System.out.println("Produto --> :
 * " + produto.getDescricao());
 *
 * }
 *
 * sessao.getTransaction().commit();
 *
 * }
 */
/*
 * public static Usuario getUserLogin2(String login, String senha) { Usuario
 * user = null; try {
 *
 * String sql = "SELECT * FROM USUARIO WHERE LOGIN ='" + login + "' AND SENHA
 * ='" + senha + "'";
 *
 * ConnectionManagerJDBC.ConnectDB(); System.out.println(sql); ResultSet rs =
 * ConnectionManagerJDBC.getStmt().executeQuery(sql);
 *
 *
 *
 * while (rs.next()) { user = new Usuario();
 * user.setLogin(rs.getString("LOGIN")); user.setSenha(rs.getString("SENHA")); }
 *
 * ConnectionManagerJDBC.CloseDB(); return user;
 *
 * }catch (SQLException e) { throw new RuntimeException(e); }
 *
 * }
 */
