package controller;

import model.Cliente;


public class ControladorCadastro {

    public void cadastrarCliente(Cliente cliente){
        Cliente.gravaCliente(cliente);
    }
    
}