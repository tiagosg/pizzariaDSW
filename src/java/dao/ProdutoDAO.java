package dao;

import bdMapping.HibernateUtil;
import model.Produto;
import org.hibernate.Session;

public class ProdutoDAO {

    public static void cadastrarProduto(Produto produto){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(produto);
        session.getTransaction().commit();
    }
}