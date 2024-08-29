```dart
main() {
	final lista = ['Ana', 'Lia', 'Gui'];
	lista.add('Rebeca');
	print(lista);
	
	/*
		A lista foi instanciada como final, ou seja, não pode ser 
		atribuída novamente, entretanto pode ser alterado durante o 
		runtime.
		Vale ressaltar que, é possível alterar o conteúdo da lista, por 
		meio de métodos, ex.:
		lista.add('Kiwi');
	*/
	
	lista = ['Banana', 'Maça']; // => Isso resultará em um erro.
	
	lista.add('Paulo'); // => Isso é permitido, e não gerará erro
	
	print(lista);	
}
```


```dart
main() {
	// Alteração -> O array atribuído a variável lista, é instanciado 
	// como const.
	final lista = const ['Ana', 'Lia', 'Gui'];
	// Também é possível criar a lista como:
	// const lista = ['Ana', 'Lia', 'Gui']; 
	// Assim, ela também não poderá ser atribuída e modificada por meio 
	// de métodos.
	
	lista.add('Rebeca');
	print(lista);
	
	/*
		Quando o array é instanciado como `const`, o seu conteúdo não 
		pode ser modificado, logo, diferentemente do ex. anterior, não 
		será mais possível utilizar métodos como:
			lista.add('Paulo');
	*/
	
	lista = ['Banana', 'Maça']; // => Isso resultará em um erro.
	lista.add('Paulo'); // => Isso também gerará erro.
	
	print(lista);	
}
```