O Dart possui tanto parâmetros posicionais, como os nomeados.

- __Parâmetros Posicionais__ -> _a ordem em que os parâmetros foram implementados, é a ordem que deve ser passado à função em sua chamada_.
- __Parâmetros Nomeados__ -> _é possível passar em qualquer ordem, desde que seja informado corretamente o nome de cada parâmetro_.

>_!Por padrão, parâmetros nomeados são opcionais!_

Ex. de Parâmetro Nomeado:
```dart
main() {
	saudarPessoa(nome: "João", idade: 33);	
	saudarPessoa(idade: 43, nome: "Maria");	
}

//Em parâmetros nomeados também é possível definir um valor padrão, ex.:
//saudarPessoa({String nome = "João", int idade = 33})
saudarPessoa({String nome, int idade}){
	print("Olá $nome nem parece que você tem $idade anos.");
}
```

