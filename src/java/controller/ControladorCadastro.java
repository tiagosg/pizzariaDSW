package controller;

import model.Cliente;
import model.Produto;

public class ControladorCadastro {

    public void cadastrarCliente(Cliente cliente){
        Cliente.gravaCliente(cliente);
    }

    public void cadastrarProduto(Produto produto){
        Produto.gravaProduto(produto);
    }
}