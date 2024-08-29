## Iterable
- __Definição__ - interface que representa uma coleção de elementos, que podem ser iterados (_percorridos_), um a um. 
- __Funcionalidade__ - fornece métodos básicos como: `.map()`, `.where()`, `.forEach()`
- __Flexibilidade__ - pode ser utilizado para criar diferentes tipos de coleções, como listas, conjuntos (`Set`), etc.
- __Ordem__ - NÃO garante a ordem dos elementos, a menos que seja implementado uma coleção ordenada.

## List
- __Definição__ -  coleção ordenada de elementos que estende `Iterable`.
- __Funcionalidade__ - além dos métodos de `Iterable`, oferece métodos adicionais como: `add()`, `.remove()`, `.insert()`, `.sort()`.
- __Ordem__ - garante a ordem dos elementos, permitindo acesso direto a elementos por índice.
- __Mutabilidade__ - pode ser modificado diretamente, permitindo adicionar, remover ou alterar elementos.

