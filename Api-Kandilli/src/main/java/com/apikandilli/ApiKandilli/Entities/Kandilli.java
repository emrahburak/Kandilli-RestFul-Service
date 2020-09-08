/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Entities;

import java.sql.Time;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author dietpi
 */
@Entity
@Table(name="kandilli_kandilli")
public class Kandilli {
    
    
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name="tarih")
    private Date tarih;
    
    @Column(name="saat")
    private Time saat;
    
    @Column(name="enlem")
    private double enlem;
    
    @Column(name="boylam")
    private double boylam;
    
    @Column(name="derinlikkm")
    private double derinlikkm;
    
    @Column(name="md")
    private double md;
    
    @Column(name="ml")
    private double ml;
    
    @Column(name="mw")
    private double mw;
    
    @Column(name="yer")
    private String yer;
    
    @Column(name="cozumniteligi")
    private String cuzumniteligi;

    public Kandilli() {
    }
    
    
    

    public Date getTarih() {
        return tarih;
    }

    public Time getSaat() {
        return saat;
    }

    public double getEnlem() {
        return enlem;
    }

    public double getBoylam() {
        return boylam;
    }

    public double getDerinlikkm() {
        return derinlikkm;
    }

    public double getMd() {
        return md;
    }

    public double getMl() {
        return ml;
    }

    public double getMw() {
        return mw;
    }

    public String getYer() {
        return yer;
    }

    public String getCuzumniteligi() {
        return cuzumniteligi;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    
    
    
}
