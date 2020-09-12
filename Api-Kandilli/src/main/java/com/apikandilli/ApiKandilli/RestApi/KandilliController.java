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
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author dietpi
 */

@RestController
@RequestMapping("/api/kandilli")
public class KandilliController {
    
    
    @Autowired
    IKandilliService service;
    
    @GetMapping
    public ResponseEntity<List<Kandilli>> getAllKandilli(
                        @RequestParam(defaultValue = "0") Integer pageNo,
                        @RequestParam(defaultValue = "500") Integer pageSize,
                        @RequestParam(defaultValue = "tarih") String sortBy){
        
        List<Kandilli> list = service.getAllKandilli(pageNo, pageSize, sortBy);
        
        return new ResponseEntity<List<Kandilli>>(list, new HttpHeaders(), HttpStatus.OK);
        
    }
    
}
