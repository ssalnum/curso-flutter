Auxilia na necessidade de implementação do mesmo código em múltiplas partes.
Também auxilia na hora de manutenção, visto que será necessário apenas modificar em um local e toda alteração será refatorada para todos os locais.

Em linguagens fortemente tipadas, é importante lembrar que: _pode-se especificar o tipo dos argumentos passados por parâmetro_ e também do _resultado retornado pela função_.
Ex.: 
```dart
main(){
	print(somar(2, 3));	
}

//Tipando os argumentos do parâmetro
//Tipando o retorno da função
int somar(int a, int b) {
	return a + b;
}
```
>Dessa forma, é retornado um erro caso seja passado um outro tipo de dado no parâmetro da função.
>Além disso, torna-se evidente o retorno da função ao especificar seu tipo.

Caso não seja especificado o tipo da variável no parâmetro ou do retorno da função, o Dart interpretará como `dynamic`.
Também é possível explicitamente passar `dynamic`.

Geralmente, é recomendado que seja especificado o tipo das variáveis, argumentos, retorno de funções, etc...









