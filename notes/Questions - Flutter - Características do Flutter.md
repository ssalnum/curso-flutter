CARACTERÍSTICAS DO FLUTTER
	- Conceitos do Flutter:
		1. UI em Código: Construir uma Árvore de Widget
		2. Suporta as Diferenças entre plataformas (iOS / Android)
		3. Única base de Código (Também é possível realizar 
		   ajustes para adaptabilidade de diferentes 
		   plataformas

- Tudo são Widgets desde a raiz
	- A Construção da UI do APP é uma ÁRVORE DE WIDGETS/COMPONENTES
	- Através da base de código será possível gerar diferentes aplicações nativas para ambas plataformas

- Estruturação do código de APPs desenvolvidos em Flutter:
	- Código em Dart utiliza a Flutter API, para utilizar os seus 
	  utilitários e widgets.

	- O código em Dart é convertido para o código nativo da 
	  plataforma.
	- Isso ocorre em TEMPO DE COMPILAÇÃO, ou seja, para o código
	  apresentar o resultado da alteração, é necessário passar pelo	  compilador e realizar o processo de compilação e assim será
	  possível executar o código nativo.
	+ O RESPONSÁVEL POR REALIZAR ESSA COMPILAÇÃ DO CÓDIGO É O 
	  FLUTTER SDK. 

	- Flutter não utiliza Widgets Nativos:
		+ DIFERENTEMENTE DO REACT-NATIVE, NO QUAL UTILIZA UM
		  MESMO COMPONENTE NO CÓDIGO, E POSTERIORMENTE ELE É 
		  ADAPTADO PARA A PLATAFORMA EM QUESTÃO, O FLUTTER É
		  DIFERENTE.
		+ OU SEJA, O REACT-NATIVE UTILIZA UM COMPONENTE NO 
		  CÓDIGO. E QUANDO ELE É EXECUTADO EM DETERMINADA 
		  PLATAFORMA, O COMPONENTE É ADAPTADO, EX.:
		 
		  `RaisedButton()` -> IOS = `UIButton` 
				      Android = `widget.Button`

		+ JÁ NO FLUTTER, É FEITA UMA IMPLEMENTAÇÃO PRÓPRIA,
		  O PRÓPRIO FLUTTER ADAPTA QUAIS PIXELS DEVEM 
		  RENDERIZAR A WIDGET.
		+ ISSO OCORRE POIS, O FLUTTER UTILIZA UMA ENGINE DE
		  JOGOS PARA RENDERIZAR E CONTROLAR TODOS OS PIXELS, 
		  ASSIM PERMITINDO A EXIBIÇÃO DOS SEUS WIDGETS.
	
		+ PORTANTO, O FLUTTER É PERFORMÁTICO, RÁPIDO E		  	  FLEXÍVEL.

		+ POR CONTA DESSAS CARACTERÍSTICAS, O FLUTTER POSSUI 
		  UM MAIOR CONTROLE E MENOS LIMITAÇÕES DAS PLATAFORMAS.
		  OU SEJA, NÃO HÁ PERDA NA TRADUÇÃO.
		+ ISSO NA PARTE VISUAL, POIS O CONTROLE SOBRE OS PIXELS
		  DA MUITA LIBERDADE DURANTE O DESENVOLVIMENTO.
		+ PORTANTO, MESMO TENDO QUE COMPILAR O CÓDIGO, ISSO 
		  VEM COM O BENEFÍCIO DE UM CONTROLE MAIOR NA PARTE 
		  VISUAL, POR MEIO DOS PIXELS.

- Vale ressaltar que o flutter possui capacidade de implementar não apenas nas diferentes plataformas mobile, como também em web e desktop.

- MATERIAL DESIGN
	- Sistema de Design criado e amplamente utilizado pelo Google
	- Altamente personalizável (Funciona no iOS tb)
	- O Material Design é embutido no Flutter, mas também têm Widgets
	  com estilo da Apple (CUPERTINO)
	
- Flutter vs React-native vs Ionic
	- FLUTTER:
		- GOOGLE;
		- Dart + Flutter;
		- APP Nativa Compilada;
		- Não utiliza componentes nativos de iOS/Android;
		- Cross-Platform => Mobile, Web e Desktop;
			+ ENTRETANTO, APENAS A MOBILE ESTÁ PRODUCTION-READY,
			WEB E DESKTOP AINDA ESTÁ AMADURECENDO.

	- REACT-NATIVE:
		- FACEBOOK;
		- JavaScript + ReactJS;
		- App Nativa, Parcialmente Compilada (Componentes Visuais)
			+ OU SEJA, PEGA UM COMPONENTE EM JS E COMPILA PARA A
			PLATAFORMA EM ESPECÍFICO.
		- Utiliza componentes nativos do iOS/Android;
		- Foco em Mobile;

	- IONIC:
		- Ionic;
		- JavaScript;
		- Não existe nenhum framework embutido;
		- App dentro de uma WebView;
		- Não utiliza componentes nativos de iOS/Android;
		- Cross-Platform => Mobile, Web e Desktop

- 
		
- Estrutura do código Flutter
	- `main()` -> função principal responsável por executar tudo

- LIDANDO COM NULLSAFETY NO FLUTTER 2
	- Non-nullable instance field must be initialized:
	String texto;
	List lista;
	int numero;

	- Possível solução -> Adicionar um valor mesmo que seja vazio
	String texto = '';
	List lista = [];
	int numero = 0;

	- Nem sempre é possível atribuir uma variável com um valor padrão.
	- Nesse caso é necessário marcá-la como nullable, utilizando:
		- ? -> sinaliza ao dart que aquela variável é "nullable", e ele deixará que você crie a variável sem um valor padrão. Porém, ao tentar utilizar essas variáveis, você poderá deparar-se com o erro "The argument type can't be assigned to the parameter type". Isso acontece porque, ao utilizar-se da interrogação, é necessário que você também marque o uso dessa variável marcada. Ou seja, quando você for utilizar as variáveis marcadas você precisa fazer uma de duas coisas:
		- ! -> Garante que a variável não será nula
			texto!
			lista!
			numero!
		OU
		- utilização do casting, no qual explicita ao Dart a tipagem
		da variável, ex:	
			texto as String
			lista as List
			numero as int

- O código __Flutter__ é estruturado de forma __DECLARATIVA__:
	- Não é especificado exatamente um algoritmo para implementar uma ação;
	- Um código __IMPERATIVO__ é aquele que explicitamente define o algoritmo, assim, implementando como o código irá agir;

- O __Flutter__, não possui uma linguagem à parte para estilização.
















