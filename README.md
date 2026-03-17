# Questionário de Reflexão Atividade 2

1 - Em qual camada foi implementado o mecanismo de cache? Explique por que essa decisão é adequada dentro da arquitetura proposta.

```
O cache foi aplicado na camada de DataSource, por meio do ProductCacheDatasource, que é responsável por armazenar e recuperar os dados em memória e a decisão é adequada pois leva em consideração a arquitetura em camadas, e isola os dados como fonte local.
```
2 - Por que o ViewModel não deve realizar chamadas HTTP diretamente?

```
O ViewModel deve cuidar apenas do estado da UI, não da origem dos dados, devido a separação de responsabilidades, trocar a api, e facilita mock de dados.
```
3 - O que poderia acontecer se a interface acessasse diretamente o DataSource?

```
A arquitetura ficaria quebrada, a ui ficaria ligada à api, caso precisasse trocar a fonte de dados isso geraria retrabalho sobre o código, e os testes ficariam mais complicados.
```

4 - Como essa arquitetura facilitaria a substituição da API por um banco de dados local?

```
Sim pois o viewModel e a ui dependem do repository e não de implementação, sendo dessa maneira mais flexivel.
```

<img width="1916" height="1078" alt="image" src="https://github.com/user-attachments/assets/e83e0c1b-e738-471b-bfa4-a10219f7c2ef" />
