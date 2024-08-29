```dart
import 'dart:math';

void executar({Function fnPar, Function fnImpar}){
	var sorteado = Random().nextInt(10);
	print('O valor sorteado foi $sorteado');
	sorteado % 2 == 0 ? fnPart() : fnImpart();	
}

main() {
	var minhaFnPar = () => print('O valor é par!');
	var minhaFnImpar = () => print('O valor é impar!');
	
	executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);	
}
```

```dart
int executarPor(int qtde, String Function(String) fn, String valor){
	String textoCompleto = ''; 
	for(int i = 0; i < qtde; i++){
		textoCompleto += fn(valor);	
	}
	return textoCompleto.length;
}

main(){
	print('Teste');
	var meuPrint = (String valor) {
		print(valor);
		return valor;	
	};
	executarPor(10, print, 'Muito Legal');
}
```