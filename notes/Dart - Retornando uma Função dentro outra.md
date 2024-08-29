```dart
funcao(p1, p2){
	//10s -> p1
	//sentenca de codigo #01
	//sentenca de codigo #02
	//sentenca de codigo #03
	
	//1s -> p2
	//sentenca #04
	//sentenca #05
}

funcao(3, 17) //11s
funcao(3, 39) //11s
funcao(3, 92) //11s

//Total: 33s
```

```dart
funcao(p1, p2){
	//10s -> p1
	//sentenca de codigo #01
	//sentenca de codigo #02
	//sentenca de codigo #03
	
	return() {
		//1s -> p2
		//sentenca #04
		//sentenca #05
	}
}

var funcaoForaComParam3 = funcaoFora(3); //10s
funcaoForaComParam3(17); //1s
funcaoForaComParam3(39); //1s
funcaoForaComParam3(92); //1s

//Total: 13s
```
>_Nota-se que retornar uma função pode ser útil em determinados cenários, no qual o tempo final pode ser bastante reduzido._
>_Além disso, torna-se notório que a parte inicial do código foi reaproveitada, tendo em vista que o parâmetro recebido seria o mesmo nos 3 cenários em que a função foi chamada, assim, não foi necessário executar as `senteca #01, sentenca #02 e sentenca #03` 3 vezes._

__CLOSURES__
```dart
int Function(int) somaParcial(int a){
	return (int b) {
		return a+b;	
	}
}
```
>_Conceito de Closures assim como no JS._























