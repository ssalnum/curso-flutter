O Dart possibilita o armazenamento de funções em variáveis.
Isso permite passar funções por parâmetro para outras funções.

Por conta disso, o Dart também pode seguir um paradigma __FUNCIONAL__.
Apesar dele possuir grande influência do paradigma __ORIENTADO A OBJETOS__.

Ex.:
```dart
main() {

	//armazenamento uma função anônima na variável
	var adicao = (int a, int b){
		return a + b;	
	}
	print(adicao(4, 5)); //19 

	//armazenamento arrow function na variável
	var subtracao = (int a, int b) => a - b;
	print(subtracao(6, 3)); //3 
}
```
> _É possível armazenar funções em variáveis, tanto anônimas como arrow functions_.
>__LEMBRANDO QUE, DIFERENTEMENTE NO JS, NO DART NÃO É POSSÍVEL UTILIZAR BLOCOS DE CÓDIGOS EM ARROW FUNCTIONS, POIS O DART INTERPRETA ISSO COMO UM RETORNO DE UM OBJETO/SET__.

