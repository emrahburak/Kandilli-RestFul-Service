/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Business;

import com.apikandilli.ApiKandilli.DataAccess.IKandilliDal;
import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author dietpi
 */


public class KandilliManager implements IKandilliService{
    
    
    IKandilliDal kandilliDal;

    
    @Autowired
    public KandilliManager(IKandilliDal kandilliDal) {
        this.kandilliDal = kandilliDal;
    }
    
    

    @Override
    @Transactional
    public List<Kandilli> getAll() {
        
        return kandilliDal.getAll();
    }

    @Override
    @Transactional
    public Kandilli getKandilliById(int id) {
        return kandilliDal.getKandilliById(id);
    }
    
}
