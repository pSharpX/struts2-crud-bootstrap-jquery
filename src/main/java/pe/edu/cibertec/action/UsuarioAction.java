/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import pe.edu.cibertec.model.Usuario;

/**
 *
 * @author JAdv-LM
 */
public class UsuarioAction extends ActionSupport{
    private Usuario usuario;
    
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    @Override
    public String execute(){
        return SUCCESS;
    }
    
    public String login(){        
        if("Christian".equalsIgnoreCase(usuario.getUsername())
                && "123456".equalsIgnoreCase(usuario.getPassword())){
            Map<String, Object> session = ActionContext.getContext().getSession();
            session.put("usuario", this.usuario.getUsername());
            this.addActionMessage(getText("login.ok"));
            return SUCCESS;
        }else{
            this.addActionError(getText("login.error"));
            return LOGIN;
        }
        
    }
    
    public String logout(){
        Map session = ActionContext.getContext().getSession();
        SessionMap sessionMap = (SessionMap)session;
        sessionMap.invalidate();
        return LOGIN;
    }
    /*
    @Override
    public void validate() {
        if(this.getUsuario() != null) {
            String usuario = this.getUsuario().getUsername();
            String password = this.getUsuario().getPassword();
            
            if(usuario == null || usuario.equals("")){
                addFieldError("usuario.username", "Ingrese usuario");
            }
            
            if(password == null || password.equals("")){
                addFieldError("usuario.password", "Ingrese password");
            }
        }
    }
*/
}
