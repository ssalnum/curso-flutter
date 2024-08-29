```Dart
/*
	- List
	- Set
	- Map
*/

main() {
	List<String> aprovados = ['Ana','Anderson','Daniel','Rafael',];
	
	// Acessando a lista	
	print(aprovados[0]); //Ana
	print(aprovados.elementAt(2)); //Ana
	print(aprovados.length); //4
	
	//Caso um número não seja utilizado para contas aritméticas, pode ser
	//interessante, armazená-lo como uma `String`, e não como int.
	//Assim como um número.
	Map<String, String> telefones = {
		'João': '+55 (43) 12345-6789'
		'João': '+55 (11) 98765-4321'	
	};

	//Também possível criar um map através de construtores:
	Map<String, String> outrosTelefones = new Map();
	
	//Em Maps, não é possível existir 2 chaves, por conta disso, o 
	//último valor atribuido a chave é o valor armazenado.	
	print(telefones['João']); //+55 (11) 98765-4321
	print(telefofnes); //{João: +55 (11) 98765-4321}
	//Portanto, pode-se observar que não existem a chave 'João' com 2 
	//valores diferentes, ou, 2 chaves iguais.
	
	print(telefones.length); //1
	print(telefones.keys); //(João)
	print(telefones.values); //(+55 (11) 98765-4321)
	print(telefones.entries);

	//Set
	Set<String> times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};	

	//Não é possível adicionar valores repetidos em Sets:
	times.add('Palmeiras');
	times.add('Palmeiras');
	times.add('Palmeiras');
	//Será apenas adicionado 'Palmeiras' 1 vez.
	
	print(times.length); //5
	print(times.contains('Vasco')); //true
	print(times.first); //Vasco
	print(times.last; //Palmeiras
	
}
```
> Após especificar a tipagem no Generics, sendo de forma explícita ou implícita, ex.:
	_Atribuição implícita_
> `Set times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'}`
> não é mais possível adicionar valores heterogêneos.
> Todos os tipos desejados devem especificados explicitamente no momento da atribuição, ou adicionados de forma implícita, ex.: `{'Vasco', 'Flamengo', 456, 123}`  
>
> Apesar de que, não acho que seja necessário criar variáveis que armazenem tipos diferentes de dados, talvez não seja uma boa prática.
> Tirando o `Map` que é uma variável que armazena tipo:valor;



















