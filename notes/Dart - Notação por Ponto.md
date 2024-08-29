No Dart, é possível utilizar métodos através da notação do `.`, assim como no JS.
Ex.: 
```dart
main () {
	String texto = "texto qualquer";
	print(texto.toUppercase()); //TEXTO QUALQUER
}
```

Contudo, no Dart também é possível utilizar os métodos built-in de cada tipo dado, diretamente nos valores, ex.:
```dart
main () {
	print("texto qualquer".toUppercase()); //TEXTO QUALQUER
}
```

Assim como no JS, no Dart também é possível realizar métodos encadeados, ex.:
```dart
main () {
	String s5 = "leonardo leitão"
		.substring(0, 8)
		.toUpperCase()
		.padRight(15, '!');
}
```


