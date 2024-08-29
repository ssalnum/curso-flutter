Preferencialmente, utilizar constantes caso as variáveis não sejam atribuídas novamente.

## Tipos de Constantes
### final


### const
A atribuição ocorre durante o tempo de compilação.
Portanto, constantes `const` não funcionarão em situações de atribuição durante o runtime.
	Ex.: `const double raio = double.parse(stdin.readSync());`
	> Tendo em vista que, é necessário o input do usuário no terminal, para assim, atribuir o valor digitado na constante durante o _runtime_.
	> Durante o tempo de compilação não haverá um valor, consequentemente atribuindo _null_.

## final x const
__final__ -> pode ser alterado durante o runtime.
Ex.:
```dart
import 'dart:io'

main() {
	stdout.write("Informe o raio: ");
	var entradaDoUsuario = stdin.readSync();
	final double raio = double.parse(entradaDoUsuario);

	print("O valor do raio é: " + raio.toString());
}
```
> Pode-se observar que, mesmo a constante `raio` sendo `final`, ainda é possível atribuir um valor que indefinido, que será o input do usuário através do terminal, por meio da função `stdin.readSync()`.

__const__ -> sua atribuição deve ocorrer em tempo de compilação. Por conta disso, uma constante `const` não funcionaria corretamente no exemplo acima.














# Relacionados
[[Dart - Constantes]]





































