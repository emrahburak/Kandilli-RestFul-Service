/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 *
 * @author dietpi
 */
@Configuration
public class CorsConfig {
    
    public WebMvcConfigurer corsConfigure(){
        return new WebMvcConfigurerAdapter(){
            public void addCorsMapping(CorsRegistry registry){
                registry.addMapping("/api/**");
            }
        };
    }
    
}
