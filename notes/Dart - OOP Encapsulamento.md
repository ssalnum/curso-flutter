#poo #encapsulamento #access_modifiers

Ao utilizar o `_` antes da instanciação de um atributo de uma classe, ela torna-se __privada__.
```dart
class  Carro {
	final int velocidadeMaxima;
	int _velocidadeAtual = 0;

	Carro([this.velocidadeMaxima = 200]);

	int get velocidadeAtual {
		return this._velocidadeAtual;	
	}

	void set velocidadeAtual(int novaVelocidade) {
		bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
		if(deltaValido && novaVelocidade >= 0) {
			this._velocidadeAtual = novaVelocidade;	
		}
	}

	int acelerar() {
		if(_velocidadeAtual + 5 >= velocidadeMaxima) {
			velocidadeAtual = velocidadeMaxima;	
		} else {
			velocidadeAtual += 5	;
		}	
	return velocidadeAtual;
	}

	int frear() {
		if(_velocidadeAtual - 5 <= velocidadeMaxima) {
			velocidadeAtual = 0;	
		} else {
			velocidadeAtual -= 5	;
		}	
	return velocidadeAtual;
	}

	bool estaNoLimite(){
		return velocidadeAtual == velocidadeMaxima;	
	}
}
```

