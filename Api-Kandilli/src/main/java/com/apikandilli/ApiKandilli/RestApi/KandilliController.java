/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.RestApi;

import com.apikandilli.ApiKandilli.Business.IKandilliService;
import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author dietpi
 */


public class KandilliController {
    
    
    IKandilliService kandilliService;

    @Autowired
    public KandilliController(IKandilliService kandilliService) {
        this.kandilliService = kandilliService;
    }
    
    
    @GetMapping("/kandilli")
    public List<Kandilli> get(){
        return kandilliService.getAll();
    }
    
    
    
    @GetMapping("/kandilli/{id}")
    public Kandilli getById(@PathVariable int id){
        
        return kandilliService.getKandilliById(id);
    }
    
}
