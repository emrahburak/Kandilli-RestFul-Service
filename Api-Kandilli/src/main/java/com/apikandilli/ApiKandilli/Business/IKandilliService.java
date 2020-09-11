/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Business;

import com.apikandilli.ApiKandilli.Entities.Kandilli;
import java.util.List;

/**
 *
 * @author dietpi
 */
public interface IKandilliService {

 public List<Kandilli> getAllKandilli(Integer pageNo, Integer pageSize, String sortBy);
}
