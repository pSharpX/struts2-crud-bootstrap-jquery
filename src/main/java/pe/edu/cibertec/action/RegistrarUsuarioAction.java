/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author JAdv-LM
 */
public class RegistrarUsuarioAction extends ActionSupport {
    private String username;
    private String password;

    public String init(){
         return SUCCESS;
    }    
    
    public String registro(){
         return SUCCESS;
    }
    
    @Override
    public String execute(){
        return SUCCESS;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
