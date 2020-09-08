/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.DataAccess;

import com.apikandilli.ApiKandilli.Entities.Kandilli;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author dietpi
 */
@Repository
public interface IKandilliRepository extends PagingAndSortingRepository<Kandilli, Long>{
    
}
