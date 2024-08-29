```dart
import 'dart:math'

main() {
	var nota = Random().nextInt(11);
	print('A nota sorteada foi $nota.');
	
	//O `break` é obrigatório no switch do Dart.
	switch(nota) {
		case 10: 
		case 9:
		//É possível adicionar o quanto for necessário...
			print('Quadro de Honra!');	
			break;
		case 8:
		case 7:
			print('Aprovado!');	
			break;
		case 5:
		case 4:
			print('Recuperação!');	
			break;
		default:
			print('Nota inválida!');	
			break;
	}	
	
	print('Fim!');	
}
```
>_Vale ressaltar que, o `continue`, permite que a cada iteração o bloco de código seja executado._
>_Já o `break`, interrompe a operação_.























