# Desafio Análise Automação Web

**Você deverá:**
1. Completar os cenários que estão somente com título dentro da pasta **features/spec**, utilizando Gherkin;
2. Acessar a página http://automationpractice.com, inspecionar e mapear os elementos de acordo com os mapeamentos esperados para as páginas Home e Login, que estão dentro da pasta **features/pages**;
3. Criar os Steps para o Gherkin que foi descrito no primeiro passo, montando a lógica necessária para implementar as ações e validações.

**Diferenciais:** 
- Projeto com os testes executáveis, seguindo a estrutura de exemplo;
- Implementar cenário extra de adição de produto ao carrinho;

**Dicas:** 
- Mesmo não conseguindo finalizar 100% do projeto, nos envie mesmo assim. Nós avaliamos diversos itens, como: lógica, estrutura e conhecimentos nas ferramentas.
- O projeto não precisa necessariamente ser executável, o mais importante é mostrar o conhecimento para escrita de cenários, mapeamento de elementos e lógica para implementação, então descreva os steps da melhor maneira possível, sem se preocupar com sintaxe.

------------

## Sobre a execução do projeto: 
Para a realização deste desafio, é somente necessário um editor de texto, **não esperamos um código executável**, contudo, caso você deseje executar o projeto, pode seguir os passos abaixo.

Para poder executar, você deverá ter:
- Ruby >= 2.5.x;
- Chrome e Chromedriver na última versão estável.

Comandos a serem executados a partir da raíz do projeto:

Instalar as dependências:
```ruby
bundle install
```

Executar o projeto - teste de carregamento básico:
```ruby
bundle exec cucumber -p default -t@buscar_por_termo_valido
```
