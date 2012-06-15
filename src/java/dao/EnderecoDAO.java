/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bdMapping.HibernateUtil;
import model.Endereco;
import org.hibernate.Session;

/**
 *
 * @author tiagoosg
 */
public class EnderecoDAO {
    
      public static void cadastrarEndereco(Endereco endereco){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(endereco);
        session.getTransaction().commit();
    }
    
}
