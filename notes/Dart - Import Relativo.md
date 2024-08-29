```dart
Class Pessoa {
	String nome;
}
```

```dart
import './pessoa.dart';

main() {
	var p1 = Pessoa();
	p1.nome = 'João';
	
	print('Nome - $p1.nome');
}
```