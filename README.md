# Introdução e objectivos

Esta unidade curricular visa tornar os estudantes aptos a analisar algoritmos
do ponto de vista da sua correcção e tempo de execução. Visa também tornar os
estudantes proficientes na utilização de estruturas de dados avançadas, por
exemplo grafos. A UC introduz ainda conceitos elementares de complexidade
algorítmica, tais como a noção do problema NP-completo.

1. Introdução à análise de correção de algoritmos: pré e pós-condições;
   invariantes de ciclo; anotação de programas.
2. Análise de tempo de execução de algoritmos: modelo de complexidade
   assimptótica; estratégias algorítmicas; recorrências; análise de melhor
caso, pior caso, e caso médio; análise amortizada; casos de estudo.
3. Estruturas de dados eficientes: árvores AVL, tabelas de dispersão, heaps.
   Implementação eficiente de buffers e dicionários.
4. Algoritmos fundamentais sobre grafos; estratégia algorítmica greedy e
   programação dinâmica.
5. Introdução às classes de problemas de decisão P, NP, e NP-completo.



# Programa // Plano 

| Datas            | TPs                                   | Ts                                                                 |
|------------------|---------------------------------------|--------------------------------------------------------------------|
| 15.Set a 19.Set  |                                       | Apresentação. Introdução à correcção de Programas Imperativos. Especificações e triplos de Hoare |
| 22.Set a 25.Set  | [Ficha 1.1 (Especificações)](./ficha1tp.pdf)            | Validade de um Triplo de Hoare. Regras de prova: Sequencia, atribuição e condicionais |
| 29.Set a 3.Out   | Ficha 1.2 (Correcção)                 | Correcção de ciclos: variantes e invariantes.                      |
| 6.Out a 10.Out   | Ficha 1.3 (Invariantes)               | Introdução à análise de complexidade. Tamanho do input. Melhor e pior casos. Caso médio. |
| 13.Out a 17.Out  | [Ficha 2.1 (Contagem)](./Ficha2.pdf)                  | Análise de definições recursivas. Relações de recorrência. Complexidade de algoritmos de ordenação. |
| 20.Out a 24.Out  | Ficha 2.2 (Recorrências)              | Análise amortizada                                                 |
| 27.Out a 30.Out  | Ficha 2.(3,4) (Caso médio/Amortizada) | Estruturas de dados para representar dicionarios: tabelas de Hash  |
| 3.Nov a 7.Nov    | [Ficha 3.1 (min-heaps)](./Ficha3.pdf)                 | Árvores AVL: motivação e algoritmo de inserção balanceada           |
| 10.Nov a 14.Nov  | Revisões                              | Revisões                                                           |
| 17.Nov a 21.Nov  | Ficha 3.2 (THash)                     | Grafos: representações e funções de consulta                       |
| 24.Nov a 28.Nov  | [Ficha 4.1 (Representações de grafos)](./Ficha4.pdf)  | Grafos: travessias                                                 |
| 1.Dez a 5.Dez    | Ficha 4.2 (Travessias de grafos)      | Grafos pesados: algoritmo de Dijkstra, Prim e Floyd Warshal        |
| 8.Dez a 12.Dez   | Ficha 4.3 (Grafos pesados/problema)   |                                                                    |

# Avaliação

Será constituída por dois testes nas seguintes datas:
* 15 Novembro 2025
* 10 Janeiro 2026

O exame de recurso será no dia 24 Janeiro 2026.
 
# Testes e exames anteriores

* [Exame 24-25](./exame2425.pdf)
* [Teste 2 24-25](./teste2_2425.pdf)
* [Teste 1 24-25](./teste1_2425.pdf)
* [Exame 23-24](./exame2324.pdf)
* [Teste 2 23-24](./teste2_2324.pdf)
* [Teste 1 23-24](./teste1_2324.pdf)
* [Exame 22-23](./exame2223.pdf)
* [Teste 2 22-23](./teste2_2223.pdf)
* [Teste 1 22-23](./teste1_2223.pdf)

# Material 

### Notas/slides JSP

* [C1. Especificação e Correcção de Algoritmos](https://www.dropbox.com/scl/fi/si8rl0wnpramf3k140jp3/C1.-Especifica-o-e-Correc-o-de-Algoritmos.pdf?rlkey=c8gwl9aiax8j5xsowtv4f96o4&dl=0)
* [C2. Correcção de Algoritmos com Ciclos](https://www.dropbox.com/scl/fi/9ggkdd9cz79olsgdz9enr/C2.-Correc-o-de-Algoritmos-com-Ciclos.pdf?rlkey=2ilvstmmtyxpgij6v6inttbs5&dl=0)
* [T1. Tempo de Execução de Algoritmos Iterativos](https://www.dropbox.com/scl/fi/argncz6lpdxaiaqjhfgjy/T1.-Tempo-de-Execu-o-de-Algoritmos-Iterativos.pdf?rlkey=khrabx7fvoi0qddpuqch29cpz&dl=0)
* [T2. Análise de Pior Caso, Melhor Caso, e Caso Médio](https://www.dropbox.com/scl/fi/sk8m1ovs9xfd4o8gamzcs/T2.-An-lise-de-Pior-Caso-Melhor-Caso-e-Caso-M-dio.pdf?rlkey=xl9kb0r3b0q4de12mronnubhw&dl=0)
* [T3. Análise do Tempo de Execução de Algoritmos Recursivos](https://www.dropbox.com/scl/fi/y87bwutsgugvfxlfkqtla/T3.-An-lise-do-Tempo-de-Execu-o-de-Algoritmos-Recursivos.pdf?rlkey=ex346xkdfb6rn9o50uclvs12w&dl=0)
* [T4. Tópicos sobre Algoritmos de Ordenação](https://www.dropbox.com/scl/fi/ykk6oth6h8yyxlai8pdvf/T4.-T-picos-sobre-Algoritmos-de-Ordena-o.pdf?rlkey=8cmq1f9voiyximwzx5slyugue&dl=0)
* [T5. Análise Amortizada de Algoritmos](https://www.dropbox.com/scl/fi/qsh8pm4p6jwfs2vug649z/T5.-An-lise-Amortizada-de-Algoritmos.pdf?rlkey=oor0qi2kfg94o36o3733x4ie0&dl=0)
* [ED2. Filas com Prioridades e “Heaps”](https://www.dropbox.com/scl/fi/42yuvqrvueluxktmbcqgk/ED2.-Filas-com-Prioridades-e-Heaps.pdf?rlkey=wt4jotaz1dtxlq2ncn08iv4s3&dl=0)
* [ED4. Tabelas de “hash”](https://www.dropbox.com/scl/fi/rcrbfjvl15pcexiwke80v/ED4.-Tabelas-de-hash.pdf?rlkey=bi19mqit53ou9ogcyk0qlu177&dl=0)
* [G1. Representação de Grafos em Computador](https://www.dropbox.com/scl/fi/3g63i9nq7946bkuoqok2l/G1.-Representa-o-de-Grafos-em-Computador.pdf?rlkey=elppb2lc9wzmi7xcod30813eg&dl=0)
* [G2. Algoritmos de Travessia de Grafos](https://www.dropbox.com/scl/fi/jmhiar4wgo9aqhglbjuug/G2.-Algoritmos-de-Travessia-de-Grafos.pdf?rlkey=e8hfkjcqbq1oa7g7l7x2n0w6r&dl=0)
* [G3. Algoritmos sobre Grafos Pesados: Estratégia Greedy](https://www.dropbox.com/scl/fi/wdvqtxo5a9zet21a5d7t9/G3.-Algoritmos-sobre-Grafos-Pesados-Estrat-gia-Greedy.pdf?rlkey=f3qbs0ckmgl8pfrvsg64l7xdy&dl=0)
* [G4: Algoritmos sobre Grafos Pesados: Programação Dinâmica](https://www.dropbox.com/scl/fi/srj01vj0r8iii93jc843a/G4.-Algoritmos-sobre-Grafos-Pesados-Programa-o-Din-mica.pdf?rlkey=8rm9si26pb712axaqjrq6quhy&dl=0)



### Notas JBB

* [Correcção de Algoritmos](./Correccao.pdf)
* [Análise de Complexidade](./Complexidade.pdf)
* [Estruturas](./Estruturas.pdf)
* [Grafos](./Grafos.pdf)

# Contactos 

  | Docente         | Horário Atendimento |
  | ----------      |------------ |
  | [José Bacelar Almeida](mailto:jba@di.uminho.pt)  | 5a-f, 11h00-13h00 |
  | [José Bernardo Barros](mailto:jbb@di.uminho.pt)  | 3a-f tarde |
  | [Renato Neves](mailto:nevrenato@di.uminho.pt)    | 3a-f tarde |
  | [Jorge Sousa Pinto](mailto:jsp@di.uminho.pt)     | 6a-f, 9h00-11h00 |




# Bibliografia

Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. Introduction to Algorithms, Fourth Edition. The MIT Press, 2022. 

Donald E. Knuth. The Art of Computer Programming, Volume I: Fundamental Algorithms, 2nd Edition. Addison- Wesley, 1973. 

Donald E. Knuth. The Art of Computer Programming, Volume III: Sorting and Searching. Addison-Wesley, 1973. 

Donald E. Knuth. The Art of Computer Programming, Volume II: Seminumerical Algorithms, 2nd Edition. Addison- Wesley, 1981. 

Robert Sedgewick, Kevin Wayne. Algorithms. Addison-Wesley, 4th edition (March 24, 2011).
