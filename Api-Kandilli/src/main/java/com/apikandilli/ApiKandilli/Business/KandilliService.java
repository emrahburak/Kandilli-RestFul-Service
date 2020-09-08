/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Business;

import com.apikandilli.ApiKandilli.DataAccess.IKandilliRepository;
import org.springframework.stereotype.Service;
import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.ArrayList;
import org.springframework.data.domain.Pageable;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;


/**
 *
 * @author dietpi
 */

@Service
public class KandilliService {
    
    
    @Autowired
    IKandilliRepository repository;
    
    public List<Kandilli> getAllKandilli(Integer pageNo, Integer pageSize, String sortBy){
       
        
        Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy).descending());
        
        
        Page<Kandilli> pagedResult = repository.findAll(paging);
//        System.out.println(pagedResult.getTotalPages());
        
        if(pagedResult.hasContent()){
            return pagedResult.getContent();
        }else{
            return new ArrayList<Kandilli>();
        }
    }
    
}
