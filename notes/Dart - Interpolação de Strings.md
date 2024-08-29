```dart
main() {
	String nome = 'João';
	String status = 'aprovado';
	Double nota = 9.2;
	
	String frase1 = nome + " está " + status + " pq tirou nota " + nota.toString() + "!";
	
	// Utilizando esse conceito similar template string, não é 
	// necessário utilizar o método nota.toString() para transformar o 
	// Double para String.	
	String frase2 = "$nome está $status pq tirou nota $nota!" 
	
}
```
> _Vale ressaltar que, também é possível utilizar de forma similar ao template strings do JS, ex.:_
> `${}`

