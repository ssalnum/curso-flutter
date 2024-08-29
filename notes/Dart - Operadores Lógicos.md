# Operador Ternário
Ternário deve-se ao fato de necessitar de 3 valores.

```dart
import 'dart:io'

main() {
	print("Está chovendo? (s/N)");
	bool estaChovendo = stdin.readLineSync() == 's';
	
	print("Está frio? (s/N)");
	bool estaFrio = stdin.readLineSync() == 's';
	
	//Se estaChovendo ou estaFrio for verdadeiro, será impresso "Ficar 
	//em casa", caso contrário apresentará "Sair!!!"
	String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!!";
	print(resultado);
}
```

