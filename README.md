# The Decompositional Approach To Matrix Computation

In this repo, six most commonly used matrix factorization algorithms are investigated as a semester project for Efficient Computational Algorithms 2021 WS at USI Università della Svizzera italiana.
The main reference can be found [here](https://www.cs.fsu.edu/~lacher/courses/COT4401/notes/cise_v2_i1/matrix.pdf).

## Introduction 
As technoogy has been rappidly improved, machines have to analyze much more data than in the past. By means data is a large matrix with bunch of elements for example; images, variables to estimate price of a houses. Last decades researchers explored new techniques such as Machine Learning models to deal with huge datasets, however when the vast majority of these state of the art algorithms are considered, it can be seen that main numerical problem to solve is A*x = b where generally the the equation is solved for vector x.
In this project, the matrix A in the linear equation above can be factorized by at least two usefull matrices wich gives some interesting facts about the matrix.

## Work Done 
* Studied different approaches of the matrix factorization
* Literature review
* Code Python and Matlab scrips 

## Results 
<p align="center">
| Algorithm  | Numerical Stability |
| ------------- | ------------- |
| QR-Householder  | Content Cell  |
|QR-Gram-Schmidt  | Content Cell  |
| Cholesky   | Content Cell  |
| Singular Value Decomposition  | Content Cell  |
| LUP  | Content Cell  |
</p>
<p align="center">
![Speed](https://github.com/uslumt/Efficient_Computational_Algorithms/blob/main/Result/figures/Result_1.png)
 </p>
## Requirements
* Jupyter Notebook
* Python >= 3.6
* Matlab
