# Desafio FCamara

#### Pré requisitos:
* [Ruby][2.6.6p146](https://www.ruby-lang.org/pt/)
* [Cucumber][3.1.2](https://cucumber.io)
* [HTTParty][0.17.3](https://rubygems.org)

- - -
##### Para instalar todas as Gems necessárias precisamos primeiro instalar a gem bundler.
      $ gem install bundler (Instala a gem bundler)
      $ bundle install (Instala todas as gems listadas no arquivo Gemfile)

- - -
#### Rodar os testes sem relatório

      $ cucumber
      $ cucumber -t @tagDoCucumber (Roda apenas o teste da tag correspondente)

#### Rodar os testes gerando relatório("Cucumber Reports"):
      $ cucumber  --format html --out reports.html
      $ cucumber  --format json --out reports.json      

- - -
### Estrutura do projeto:

+ Pasta feature
   +  Pasta principal do projeto, todas as pastas e arquivos que estão dentro da pasta feature são essenciais para a execução correta da suite automatizada.
   
+ Pasta bdd
   +  Pasta contém os arquivos responsáveis pela documentação das features e impressão dos relatorios. Os arquivos são escritos em Gherkin e utilizam a Gem Cucumber.

+ Pasta requests
   +  Pasta contém as requests necessarias para realizar chamadas especificas.

+ Pasta step_definitions
   +  Pasta contém os arquivos com as ações para a execução do teste.

+ pasta  support
   +  Pasta contém todos os arquivos de configuraçāo do sistema, explicação de cada arquivo a seguir. 

+ support/class_initializer.rb
   +  Classe inicializa variáveis das ações deixando a execução dos testes mais rapidas e tornando as variáveis globais, ou seja, podem ser reutilizadas em qualquer ponto do projeto.

+ support/filters.rb
    + Arquivo contém todos os filtros necessarios para a execução do teste.

+ support/request_helper.rb
   + Arquivo possui a URL base e todas as suas configurações

+ support/env.rb
    + Arquivo contém a inicialização das libs e configurações gerais de ambiente.

+ support/cucumber.html
    + Arquivo responsavel pelo report, gera relatorios em HTML e JSON.

+ Gemfile
    + Arquivo contém as Gems necessárias para os testes rodarem, sempre que incluir uma nova Gem, incluir ela nesse arquivo.

+ Dockerfile
   + Arquivo para rodar os testes em um container Docker

+ Dockerfile.withReport
   + Arquivo para rodar os testes em um container Docker gerando relatorio

+ Scripts para rodar os testes no docker
   + test-with-report.sh (sh test-with-report.sh)
   + test-without-report.sh (sh test-without-report.sh)
 
- - -
