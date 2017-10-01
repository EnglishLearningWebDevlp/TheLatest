package DAO;

import bean.UsersEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.persistence.NoResultException;
import java.util.List;

public class UsersDAO {

    @Qualifier("sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    public void save(UsersEntity userEntity){
        Session s = sessionFactory.openSession();
        Transaction tx= s.beginTransaction();
        s.save(userEntity);
        tx.commit();
    }

    public void delete(UsersEntity userEntity){
        Session s = sessionFactory.openSession();
        Transaction tx= s.beginTransaction();
        s.delete(userEntity);
        tx.commit();
    }
    public List findAll(){
        Session s=sessionFactory.openSession();
        String queryString="from UsersEntity";
        Query query=s.createQuery(queryString);
        return query.list();
    }
    public UsersEntity findById(String id){
        Session s=sessionFactory.openSession();
        String queryString="from UsersEntity as model where model.userid="+id;
        Query query;
       try{
           query=s.createQuery(queryString);
           return (UsersEntity) query.getSingleResult();
       } catch (NoResultException e){
           return null;
       }

    }


    public SessionFactory getSessionFactory(){
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
