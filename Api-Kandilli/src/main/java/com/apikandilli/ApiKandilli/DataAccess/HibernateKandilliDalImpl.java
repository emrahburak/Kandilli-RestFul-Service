/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.DataAccess;

import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author dietpi
 */


public class HibernateKandilliDalImpl implements IKandilliDal{



    
    @Autowired
    private EntityManager entityManager;

    public HibernateKandilliDalImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    
    

    @Override
    @Transactional
    public List<Kandilli> getAll() {
        
        Session session = entityManager.unwrap(Session.class);
        List<Kandilli> kandilliDatas = session.createQuery("from Kandilli", Kandilli.class)
                .getResultList();
        return kandilliDatas;
        
    }

    @Override
    public Kandilli getKandilliById(int id) {
        Session session = entityManager.unwrap(Session.class);
        Kandilli kandilliDataWithId = session.get(Kandilli.class, id);
        return kandilliDataWithId;
    }


    
}
