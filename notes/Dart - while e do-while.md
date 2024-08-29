O `while`, geralmente é utilizado quando não é definido exatamente a condição para interromper a iteração.
```dart
main() {
	var digitado = 'sair';
	
	while(digitado != 'sair'){
		stdout.write('Digite algo para sair: ');
		digitado = stdin.readLineSync();	
	}
	
	print('Sair');
}

```

No `do...while`, a verificação da condição ocorre posteriormente, ou seja, mesmo que seja atendido a condição estabelecida, o bloco de código será executado.
Ex.:
```dart
main() {
	var digitado = 'sair';
	
	//Esse bloco de código será executado 1 vez, antes de ser encerrado
	//Visto que a condição ja foi atendida. 		
	do {
		stdout.write('Digite algo para sair: ');
		digitado = stdin.readLineSync();	
	} while(digitado != 'sair');
	
	print('Sair');
}
```
>_Diferentemente do `while`, caso a situação fosse adaptada para o uso do `while`, o bloco de código nem seria executado._
_Pois a validação da condição, ocorre antes mesmo do bloco de código ser executado._