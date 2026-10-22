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



# Programa

| Datas            | TPs                                   | Ts                                                                 |
|------------------|---------------------------------------|--------------------------------------------------------------------|
| 14.Set a 18.Set  |                                        | Apresentação. Introdução à correcção de Programas Imperativos. Especificações e triplos de Hoare |
| 21.Set a 24.Set  | [Ficha 1 (Especificação)](./pdfs/ficha1tp.pdf)          | Validade de um Triplo de Hoare. Regras de prova: Sequência, atribuição e condicionais |
| 28.Set a 02.Out   |  [Ficha 1 (Correcção)](./pdfs/ficha1tp.pdf)                  | Correcção de ciclos: variantes e invariantes.                      |
| 05.Out a 09.Out   |  [Ficha 1 (Correcção)](./pdfs/ficha1tp.pdf)               | Introdução à análise de complexidade. Tamanho do input. Melhor e pior casos. Caso médio. |
| 12.Out a 16.Out  | [Ficha 2 (Contagem)](./pdfs/ficha2tp.pdf)                  | Análise de definições recursivas. Relações de recorrência. Complexidade de algoritmos de ordenação. |
| 19.Out a 23.Out  | [Ficha 2 (Recorrências)](./pdfs/ficha2tp.pdf)              | Análise amortizada                                                 |
| 26.Out a 29.Out  | [Ficha 2 (Caso médio / análise amortizada)](./pdfs/ficha2tp.pdf)              | Revisões |
| 02.Nov a 06.Nov  |  | Estruturas de dados para representar dicionários: tabelas de Hash  |
| 09.Nov a 13.Nov    |                  | Árvores AVL: motivação e algoritmo de inserção balanceada           |
| 16.Nov a 20.Nov  |                      | Grafos: representações e funções de consulta                       |
| 23.Nov a 27.Nov  |   | Grafos: travessias                                                 |
| 30.Dez a 04.Dez    |       | Grafos pesados: algoritmo de Dijkstra, Prim e Floyd Warshal        |
| 8.Dez a 12.Dez   |    | Revisões                                                                   |

# Avaliação

Será constituída por dois testes nas seguintes datas:
* 14 Nov
* 07 Jan 

O exame de recurso será no dia 28 Jan.
 
# Testes e exames anteriores

* [Exame 25-26](./pdfs/exame2526.pdf)
* [Teste 2 25-26](./pdfs/teste2_2526.pdf)
* [Teste 1 25-26](./pdfs/teste1_2526.pdf)
* [Exame 24-25](./pdfs/exame2425.pdf)
* [Teste 2 24-25](./pdfs/teste2_2425.pdf)
* [Teste 1 24-25](./pdfs/teste1_2425.pdf)
* [Exame 23-24](./pdfs/exame2324.pdf)
* [Teste 2 23-24](./pdfs/teste2_2324.pdf)
* [Teste 1 23-24](./pdfs/teste1_2324.pdf)
* [Exame 22-23](./pdfs/exame2223.pdf)
* [Teste 2 22-23](./pdfs/teste2_2223.pdf)
* [Teste 1 22-23](./pdfs/teste1_2223.pdf)

# Material

### Notas/slides JSP

* [C1. Especificação e Correcção de Algoritmos](https://www.dropbox.com/scl/fi/si8rl0wnpramf3k140jp3/C1.-Especifica-o-e-Correc-o-de-Algoritmos.pdf?rlkey=c8gwl9aiax8j5xsowtv4f96o4&dl=0)
* [C2. Correção de Algoritmos com Ciclos](https://www.dropbox.com/scl/fi/9ggkdd9cz79olsgdz9enr/C2.-Correc-o-de-Algoritmos-com-Ciclos.pdf?rlkey=2ilvstmmtyxpgij6v6inttbs5&dl=0)
* [T1. Tempo de Execução de Algoritmos Iterativos](https://www.dropbox.com/scl/fi/argncz6lpdxaiaqjhfgjy/T1.-Tempo-de-Execu-o-de-Algoritmos-Iterativos.pdf?rlkey=khrabx7fvoi0qddpuqch29cpz&dl=0)
* [T2. Análise de Pior Caso, Melhor Caso, e Caso Médio](https://www.dropbox.com/scl/fi/sk8m1ovs9xfd4o8gamzcs/T2.-An-lise-de-Pior-Caso-Melhor-Caso-e-Caso-M-dio.pdf?rlkey=xl9kb0r3b0q4de12mronnubhw&dl=0)
* [T3. Análise do Tempo de Execução de Algoritmos Recursivos](https://www.dropbox.com/scl/fi/y87bwutsgugvfxlfkqtla/T3.-An-lise-do-Tempo-de-Execu-o-de-Algoritmos-Recursivos.pdf?rlkey=ex346xkdfb6rn9o50uclvs12w&dl=0)
* [T4. Tópicos sobre Algoritmos de Ordenação](https://www.dropbox.com/scl/fi/ykk6oth6h8yyxlai8pdvf/T4.-T-picos-sobre-Algoritmos-de-Ordena-o.pdf?rlkey=8cmq1f9voiyximwzx5slyugue&dl=0) (Animações: [Insertion Sort](https://www.dropbox.com/scl/fi/b7zk7xpfv6uw8ccxug9nu/Insertion-Sort-Visualization.tsx?rlkey=i2sk4ddvnqhxfg8cslbyqyz3j&dl=0), [Merge Sort](https://www.dropbox.com/scl/fi/af9cxkea2tebexdsqdx49/Merge-Sort-Visualization.tsx?rlkey=yploxrva6278milw91b5v1052&dl=0), [Counting Sort](https://www.dropbox.com/scl/fi/bd9cjdfpvm2iz52nfcn2o/Counting-Sort-Animation.html?rlkey=rum4rj8057nlgb7zh6p44kc9z&dl=0))

### Notas JBB

* [Correcção de Algoritmos](./pdfs/Correccao.pdf)
* [Análise de Complexidade](./pdfs/Complexidade.pdf)
* [Estruturas](./pdfs/Estruturas.pdf)
* [Grafos](./pdfs/Grafos.pdf)

# Contactos 

  | Docente         | Horário Atendimento |
  | ----------      |------------ |
  | [José Bernardo Barros](mailto:jbb@di.uminho.pt)  | 3a-f tarde (enviar e-mail antes) |
  | [Renato Neves](mailto:nevrenato@di.uminho.pt)    | 3a-f tarde (enviar e-mail antes) |
  | [Jorge Sousa Pinto](mailto:jsp@di.uminho.pt)     | 4a-f, 9h00-11h00 (enviar e-mail antes) |
  | [Alcino Cunha](mailto:alcino@di.uminho.pt)  | 4a-f tarde (enviar e-mail antes) |




# Bibliografia

Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. Introduction to Algorithms, Fourth Edition. The MIT Press, 2022. 

Donald E. Knuth. The Art of Computer Programming, Volume I: Fundamental Algorithms, 2nd Edition. Addison- Wesley, 1973. 

Donald E. Knuth. The Art of Computer Programming, Volume III: Sorting and Searching. Addison-Wesley, 1973. 

Donald E. Knuth. The Art of Computer Programming, Volume II: Seminumerical Algorithms, 2nd Edition. Addison- Wesley, 1981. 

Robert Sedgewick, Kevin Wayne. Algorithms. Addison-Wesley, 4th edition (March 24, 2011).
