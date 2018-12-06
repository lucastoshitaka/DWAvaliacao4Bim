/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author lucastoshitaka
 */
@Entity
@Table(name = "usuarioAdm")
@NamedQueries({
    @NamedQuery(name = "UsuarioAdm.findAll", query = "SELECT u FROM UsuarioAdm u")})
public class UsuarioAdm implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_usuarioAdm")
    private Integer idusuarioAdm;
    @Column(name = "login_usuarioAdm")
    private String loginusuarioAdm;
    @Column(name = "senha_usuarioAdm")
    private String senhausuarioAdm;

    public UsuarioAdm() {
    }

    public UsuarioAdm(Integer idusuarioAdm) {
        this.idusuarioAdm = idusuarioAdm;
    }

    public Integer getIdusuarioAdm() {
        return idusuarioAdm;
    }

    public void setIdusuarioAdm(Integer idusuarioAdm) {
        this.idusuarioAdm = idusuarioAdm;
    }

    public String getLoginusuarioAdm() {
        return loginusuarioAdm;
    }

    public void setLoginusuarioAdm(String loginusuarioAdm) {
        this.loginusuarioAdm = loginusuarioAdm;
    }

    public String getSenhausuarioAdm() {
        return senhausuarioAdm;
    }

    public void setSenhausuarioAdm(String senhausuarioAdm) {
        this.senhausuarioAdm = senhausuarioAdm;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idusuarioAdm != null ? idusuarioAdm.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuarioAdm)) {
            return false;
        }
        UsuarioAdm other = (UsuarioAdm) object;
        if ((this.idusuarioAdm == null && other.idusuarioAdm != null) || (this.idusuarioAdm != null && !this.idusuarioAdm.equals(other.idusuarioAdm))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.UsuarioAdm[ idusuarioAdm=" + idusuarioAdm + " ]";
    }
    
}
