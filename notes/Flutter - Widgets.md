Todos os componentes presentes em uma aplicação Flutter, são __Widgets__.
Portanto, é natural que widgets possuam outros widgets no interior. Assim, formando a __ÁRVORE DE WIDGETS__.

## Construindo o 1º Widget
Para construir um widget é necessário estender a classe `StatelessWidget`.
Ex.:
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
			home: Text('Olá Mundo!!!'),
		);
	}
}
```
>É importante ressaltar que, é passado para a função main, o método `runApp()`, no qual recebe por parâmetro o widget pai que renderizará tudo.
>Como se fosse o root no react.

# Relacionados
[[Flutter - Notes]]
[[Flutter - Scaffold]]
[[Flutter - Widgets Visíveis e Invisíveis]]
