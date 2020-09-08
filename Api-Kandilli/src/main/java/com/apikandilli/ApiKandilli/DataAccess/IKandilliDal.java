/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.DataAccess;

import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.List;

/**
 *
 * @author dietpi
 */


public interface IKandilliDal {
    
    List<Kandilli> getAll();
    Kandilli getKandilliById(int id);
    
}
