import '../modelo/venda.dart';
import '../modelo/produto.dart';
import '../modelo/venda_item.dart';
import '../modelo/cliente.dart';

main() {
  //Minha implementação
  /*
    var p1 = Produto( codigo: 1, nome: "produto1", preco: 20.00, desconto: 0.1);
    var c1 = Cliente(nome: "nomeQualquer", cpf: "123.456.789-00");
    var vi1 = VendaItem(produto: p1, quantidade: 5);
    List<VendaItem> carrinho = [vi1, vi1, vi1];
    var v1 = Venda(cliente: c1, itens: carrinho);
    print(v1.valorTotal);
  */

  //Implementação mais semelhante ao que é utilizado com Flutter
  //Abordagem utilizando mais variáveis anônimas, ao invés de declarar uma
  //variável e atribuir um valor.
  var venda = Venda(
      cliente: Cliente(nome: 'Francisco Cardoso', cpf: '123.456.789-00'),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 30,
            produto: Produto(
                codigo: 1, nome: 'Lapis preto', preco: 6.00, desconto: 0.5)),
        VendaItem(
            quantidade: 20,
            produto: Produto(
                codigo: 2, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
        VendaItem(
            quantidade: 100,
            produto: Produto(
                codigo: 3, nome: 'Borracha', preco: 2.00, desconto: 0.5))
      ]);

  print("O valor total da venda é: R\$${venda.valorTotal}");
}
