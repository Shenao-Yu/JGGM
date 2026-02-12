# Heterogeneous Graph Condensation

**Abstract**—Heterogeneous graph neural networks are predominant in modeling  real-world 
relations between entities. However, their scalability to accommodate large graphs has been  
constrained by intensive computational and memory demands. Although existing condensation approaches  
have partially mitigated this issue by generating compact heterogeneous graphs, they still exhibit 
two critical limitations. First, the super-node initialization process inevitably leads to the loss 
of essential structural and semantic information, as BisectingKMeans ignores the local density structure 
of the data and the characteristics of non-convex distributions. Second, the reliance on fine-grained 
gradient alignment makes the optimization process sensitive to stochastic gradient noise, thereby 
compromising global convergence stability. To address these challenges, this paper proposes a novel 
heterogeneous graph condensation framework that synergistically integrates density peaks clustering 
with joint-granularity gradient matching (JGGM). The proposed method effectively preserves the intrinsic 
structural characteristics of the original graph while maintaining stable optimization dynamics during condensation. 
Comprehensive experiments conducted on multiple heterogeneous graph benchmarks demonstrate that JGGM consistently 
outper-forms state-of-the-art condensation techniques.

## Our environment configuration
* python          3.8
* torch           1.12.1+cu113
* torch_geometric 2.1.0
* torch_sparse    0.6.15
* torch_scatter   2.0.9
* prettytable     3.4.1
* sklearn         1.1.2
* tqdm            4.64.0
* numpy           1.21.5

## Dataset
| Dataset  | #node_type | #node  | #edge_type |  #edge  | #class |
|:--------:|:----------:|:------:| :----: |:-------:|:------:| 
|   DBLP   |     4      | 26128  | 3 | 119783  |   4    |
|   IMDB   |     3      | 11616  | 2 |  17106  |   3    |
|   ACM    |     4      | 10942  | 4 | 273936  |   3    |
|   Yelp   |     4      |  3913  | 2 |  77176  |   6    |
| Freebase |     8      | 180098 | 36 | 1531157 |   7    |



## Run
`python JGGM_main.py --dataset dblp --cond 0.001 `


