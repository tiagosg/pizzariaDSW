package model;

import java.util.ArrayList;
import java.util.List;

public class CarrinhoDeCompras {

    private List<Produto> produtosDoCarrinho;

    public CarrinhoDeCompras() {
        this.produtosDoCarrinho = new ArrayList<Produto>();
    }

    public List<Produto> getProdutosDoCarrinho() {
        return produtosDoCarrinho;
    }
}