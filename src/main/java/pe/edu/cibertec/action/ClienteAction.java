/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import pe.edu.cibertec.dao.DaoCliente;
import pe.edu.cibertec.model.Cliente;

/**
 *
 * @author JAdv-LM
 */
public class ClienteAction extends ActionSupport {
    private Cliente cliente;
    private Cliente clienteSeleccionado;
    private Cliente clienteEditar;
    private Cliente clienteEliminar;
    
    @Inject
    @Named("mockDaoCliente")
    private DaoCliente daoImpl;

    public DaoCliente getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(DaoCliente daoImpl) {
		this.daoImpl = daoImpl;
	}

	public Cliente getClienteEditar() {
        return clienteEditar;
    }

    public void setClienteEditar(Cliente clienteEditar) {
        this.clienteEditar = clienteEditar;
    }

    public Cliente getClienteEliminar() {
        return clienteEliminar;
    }

    public void setClienteEliminar(Cliente clienteEliminar) {
        this.clienteEliminar = clienteEliminar;
    }
    
    private List<Cliente> clientes;
    private Map operadores;
    
    public String inicio() throws Exception {
        return SUCCESS;
    }
    
    public String listar() throws Exception {        
        this.clientes = daoImpl.listarCliente();
        return SUCCESS;
    }
    
    public String inicializar() throws Exception{
        String pais = "Peru";
        this.operadores = new HashMap();
        if(pais.equals("Peru")){
            this.operadores.put("01", "Operador 1");
            this.operadores.put("02", "Operador 2");
            this.operadores.put("03", "Operador 3");
            this.operadores.put("04", "Operador 4");            
        }else{
            this.operadores.put("OF", "Operador Foraneo");
        }
        return SUCCESS;
    }
    
    public String registrar() throws Exception{        
        String errorMessage = daoImpl.insertarCliente(this.cliente);
        if(errorMessage != null && !("".equals(errorMessage))){
            return ERROR;
        }
        return  SUCCESS;
    }
    
    public String mostrar() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
        int clienteCodigo = Integer.parseInt(request. getParameter("idCliente"));        
        this.clienteSeleccionado = daoImpl.obtenerCliente(clienteCodigo);
        return SUCCESS;
    }

    public String editar() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
        String idCliente = request.getParameter("idCliente");
        if(idCliente != null && !"".equals(idCliente)){
            int clienteCodigo = Integer.parseInt(idCliente);            
            this.clienteEditar = daoImpl.obtenerCliente(clienteCodigo);
        }        
        return SUCCESS;
    }
    
    public String eliminar() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
        String idCliente = request.getParameter("idCliente");
        String delete = request.getParameter("delete");
        if((idCliente != null && !"".equals(idCliente)) && (delete != null)){
            int clienteCodigo = Integer.parseInt(idCliente);            
            daoImpl.eliminarCliente(clienteCodigo);
        }else if(idCliente != null && !"".equals(idCliente)){
            int clienteCodigo = Integer.parseInt(idCliente);            
            this.clienteEliminar = daoImpl.obtenerCliente(clienteCodigo);
        }
        return SUCCESS;
    }
    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Map getOperadores() {
        return operadores;
    }

    public void setOperadores(Map operadores) {
        this.operadores = operadores;
    }

    public List<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
    }

    public Cliente getClienteSeleccionado() {
        return clienteSeleccionado;
    }

    public void setClienteSeleccionado(Cliente clienteSeleccionado) {
        this.clienteSeleccionado = clienteSeleccionado;
    }

}
