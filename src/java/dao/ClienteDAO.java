/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bdMapping.HibernateUtil;
import model.Cliente;
import model.Endereco;
import org.hibernate.Session;

/**
 *
 * @author tiagoosg
 */
public class ClienteDAO {

     public static void cadastrarCliente(Cliente cliente){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(cliente);
        session.getTransaction().commit();
    }
     
   
    
}
