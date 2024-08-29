Biblioteca com um conjunto de widgets, ou seja, uma coleção de componentes padronizados para UI.

Utilizando o Scaffold:
```dart
import 'package:flutter/material.dart'

main() {
	//O new não é obrigatório.
	//Também é válido: runApp(new PerguntaApp());
	runApp(new PerguntaApp());
}

//Alternativa utilizando arrow functions.
//main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {

	//O @override é necessário, para especificar que o Widget build() 
	//está sendo sobrescrito.
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home: Scaffold(
				appBar: appBar(
					tittle: Text('Perguntas'),	
				),	
				body: Text('Olá Flutter!!!'),
			),
		);
	}
}
```