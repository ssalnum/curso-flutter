```dart
class Data {
	int dia;
	int mes;
	int ano;
	
	//método CONSTRUTOR
	//forma mais enxuta
	Data([this.dia = 01, this.mes = 01, this.ano = 1970]);	
	//O parâmetro do método construtor, também suporta:
	//PARÂMETROS NOMEADOS e PARÂMETROS OPCIONAIS
	
	//MÉTODO CONSTRUTOR NOMEADO
	Data.com({this.dia = 01, this.mes = 01, this.ano = 1970})
	Data.ultimoDiaDoAno(this.ano) {
		dia = 31;
		mes = 12;
	}
	
	/*
	Método construtor, exerce a mesma função do que o exemplificado 
	acima a única diferença é a forma de implementação.	
		Data(int dia, int mes, int ano){
			this.dia = dia;	
			this.mes = mes;	
			this.ano = ano;	
		}	
	*/	
	
	//métodos
	String obterDataFormatada() {
		return "$dia/$mes/$ano";	
	}	
	
	String toString() {
		return obterDataFormatada();
	}	
}

main() {
	// Instanciando objeto sem método construtor
	var dataAniversario = new Data();
	dataAniversario.dia = 3;
	dataAniversario.mes = 10;
	dataAniversario.ano = 2020;
	
	// Instanciando com método construtor	
	Data dataHoje = new Data(23, 08, 2024);
	
	// Não é obrigatório utilizar o `new` para instanciar um objeto.
	// Instanciando objeto sem método construtor
	Data dataCompra = Data(); 
	dataAniversario.dia = 23;
	dataAniversario.mes = 12;
	dataAniversario.ano = 2021;
	
	String d1 = dataAniversario.obterDataFormatada();
	
	print("A data do aniversário é $d1");
	print("A data da compra é ${dataCompra.obterDataFormatada()}");
	
	print(dataHoje.obterDataFormatada());
	
	print(dataCompra);
	print(dataCompra.toString());
	
	print(Data.com(ano: 2022));
	
	var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
	print("O Mickey será publicado em $datafinal");
	
	print(Data.ultimoDiaDoAno(2023));	
}
```
>_A característica do Flutter de permitir o uso de **CONSTRUTORES NOMEADOS**, não é algo comum em outras linguagens, mas intrínseco no desenvolvimento com Flutter_.
