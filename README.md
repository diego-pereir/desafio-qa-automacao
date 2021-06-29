## Installation

*Segue abaixo os passos para instalação*

*1. Instalando Ruby 64 Bits*
* a) Fazer download da versão 2.4.2 x64 http://rubyinstaller.org/downloads/
* b) Instalar no diretório C:\Ruby24-x64
* c) Antes de clicar em Install marcar todas as opções.
* c) Feche o console, e abra novamente, em seguida, digite o comando ruby –v, se der tudo certo você vai ver o seguinte resultado:

 ruby 2.4.1p111 (2017-03-22 revision 58053) [x64-mingw32]


*2. Instalando Devkit 64 Bits*
* a) http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe
* b) Descompactar no diretório C:\Ruby24-x64\devkit
* c) No console, acessar via linha de comando, a pasta onde foi instalado o DEVKIT.
* d) Na sequencia digite o comando:
ruby dk.rb init
* e) Agora abra o arquivo config.yml que foi gerado
* f) A ultima linha do arquivo deve conter o valor : -C:/Ruby24-x64. Caso contrário faça o ajuste no arquivo. Não esqueça do caractere - antes do C:\.
* g) No Console do Cmder, digite o comando: 
ruby dk.rb install


*3. Instalando Bundler, RSpec e Cucumber*
* Bundler: gem install bundler
* RSpec: gem install rspec
* Cucumber: gem install cucumber


*4. Instalando as dependências do projeto através do Bundler*
Dentro da pasta raiz do projeto executar o comando bundler install. 
Ao executar o comando todas as dependências devem ser instaladas. Para checar que todas foram instaladas verificar se o log bate com as dependências especificadas no arquivo Gemfile.
Caso não tenha sido instalado alguma dependência por algum motivo, é necessário realizar a instalação manualmente, caso o comando bundler install ainda não funcione. Para tal, verificar qual dependência faltou e executar o comando gem install <nome_da_dependencia>.

*5. Adicionando o chrome driver no lugar certo*
 * Realizar o download do chrome driver para windows.
 * Extrair o arquivo chromedriver.exe para o diretório: C:\Ruby24-x64\bin


## Running

*Executando o projeto*
*Nova estrutura*

bundle exec cucumber -p default -t@buscar_por_termo_valido

os titulos para o termo @ estão dentro do diretório features/spec
