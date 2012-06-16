package dao;

import bdMapping.HibernateUtil;
import model.Cliente;
import org.hibernate.Session;

public class ClienteDAO {

     public static void cadastrarCliente(Cliente cliente){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(cliente);
        session.getTransaction().commit();
    }
     
   
    
}
