/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apikandilli.ApiKandilli.Entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author dietpi
 */
@Entity
@Table(name = "kandilli_kandilli")
public class Kandilli implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "tarih")
    @Temporal(TemporalType.DATE)
    private Date tarih;
    @Column(name = "saat")
    @Temporal(TemporalType.TIME)
    private Date saat;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "enlem")
    private Double enlem;
    @Column(name = "boylam")
    private Double boylam;
    @Column(name = "derinlikkm")
    private Double derinlikkm;
    @Column(name = "md")
    private Double md;
    @Column(name = "ml")
    private Double ml;
    @Column(name = "mw")
    private Double mw;
    @Column(name = "yer")
    private String yer;
    @Column(name = "cozumniteligi")
    private String cozumniteligi;

    public Kandilli() {
    }

    public Kandilli(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTarih() {
        return tarih;
    }

    public void setTarih(Date tarih) {
        this.tarih = tarih;
    }

    public Date getSaat() {
        return saat;
    }

    public void setSaat(Date saat) {
        this.saat = saat;
    }

    public Double getEnlem() {
        return enlem;
    }

    public void setEnlem(Double enlem) {
        this.enlem = enlem;
    }

    public Double getBoylam() {
        return boylam;
    }

    public void setBoylam(Double boylam) {
        this.boylam = boylam;
    }

    public Double getDerinlikkm() {
        return derinlikkm;
    }

    public void setDerinlikkm(Double derinlikkm) {
        this.derinlikkm = derinlikkm;
    }

    public Double getMd() {
        return md;
    }

    public void setMd(Double md) {
        this.md = md;
    }

    public Double getMl() {
        return ml;
    }

    public void setMl(Double ml) {
        this.ml = ml;
    }

    public Double getMw() {
        return mw;
    }

    public void setMw(Double mw) {
        this.mw = mw;
    }

    public String getYer() {
        return yer;
    }

    public void setYer(String yer) {
        this.yer = yer;
    }

    public String getCozumniteligi() {
        return cozumniteligi;
    }

    public void setCozumniteligi(String cozumniteligi) {
        this.cozumniteligi = cozumniteligi;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Kandilli)) {
            return false;
        }
        Kandilli other = (Kandilli) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.apikandilli.ApiKandilli.Entities.KandilliKandilli[ id=" + id + " ]";
    }
    
}
