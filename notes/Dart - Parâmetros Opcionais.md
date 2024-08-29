É possível passar parâmetros opcionais.
É uma boa prática, passar um valor padrão, para parâmetros opcionais.
Ex.:
```dart
import 'dart:math';

main(){
	int n1 = numeroAleatorio(100);
	print (n1);

	int n2 = numeroAleatorio();
	print (n2);
}

//Para especificar que um parâmetro é opcional, utiliza-se `[]`
//Para especificar um valor padrão, apenas é atribuido um valor a 
//variável.
int numeroAleatorio([int maximo = 11]){
	return Random().nextInt(maximo);
}
```