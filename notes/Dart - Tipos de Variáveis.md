## var
`var variavel = "essa é uma variável"`

A variável do tipo `var` não necessita explicitar o tipo dela.
Sua tipagem é inferida de forma subliminar.
Entretanto, uma vez estabelecida a tipagem, ela não pode ser alterada.

## por tipagem 
```dart
String variavelString = "texto";
int variavelInt = 123; 
double variavelDouble = 1.2345;
```
>_Variáveis fortemente tipadas fornecem um melhor entendimento sobre o código._
>_Entretanto, não podem receber outros tipos de valores como as variáveis `dynamic`.

## dynamic
`dynamic variavel = "essa é uma variavel"`;

A variável do tipo `dynamic` não necessita explicitar o tipo dela.
Sua tipagem é inferida de forma subliminar.
Diferentemente da `var`, a `dynamic` pode receber diferentes tipos de valores, mesmo após a atribuição de um tipo.
Ex.:

```dart
dynamic variavel = "essa é uma variável";
variavel = 123;

print(variavel); //123
```








