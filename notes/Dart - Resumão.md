Arrow Functions trabalham de forma diferente no Dart, em JS é possível realizar: 

```js
const fn = () => {
	//código...
}
```

 Já no Dart, arrow function não podem possuir "{}", pois ele interpretará que você está tentando retornar um set.
Portanto em Dart, deverá ser:

```dart
int Function (int a, int b) => a * b;
```

- Logo, pode-se observar que é retornado apenas uma linha de código, não é possível construir um bloco de código com "{}".

