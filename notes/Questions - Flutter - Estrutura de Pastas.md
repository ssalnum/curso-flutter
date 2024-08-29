Estrutura de Pastas
- .dart_tool -> node modules

- .idea e .iml -> arquivos de configuração do intelliJ, visto que o 
			  android studio é baseado no intellij 
			  
- .android -> local onde é armazenado os arquivos relacionados a 
		    plataforma android. Alguns momentos, pode ser necessário 
		    realizar adaptações específicas no código nativo.
			
- build -> local onde o resultado da compilação é armazenado.

- ios -> assim como a pasta .android

- lib -> local onde prioritariamente será utilizada durante o 
		 desenvolvimento, e onde é armazenado os widgets.

- .metada -> gerado automaticamente pelo flutter, não é modificado

- .packages -> local onde é registrado as dependências utilizadas no
		       projeto. Não é modificado.

- pubsec.yaml -> estabelece algumas características do projeto, assim
			 como o package.json