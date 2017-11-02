## Introduction

Breast cancer is the most common cancer among women and the second leading cause of cancer death. Early diagnosis of cancer is critical. The sample obtained by an invasive technique can be easily digitized and used for computationally based diagnostic. Using machine learning methods for diagnostic can significantly increase processing speed and on a big scale can make the diagnostic significantly cheaper.

The “Breast Cancer Wisconsin (Diagnostic)” dataset was obtained from UCI Machine Learning Repository. Features in this dataset were computed from a digitized image of a fine needle aspirate (FNA) of a breast mass. They describe characteristics of the cell nuclei present in the image. Several nuclei in each sample were analyzed. The dataset contains 569 observations and 32 attributes (ID, diagnosis, 30 real-valued input features), and no missing values.

## Dataset

Breast Cancer Wisconsin (Diagnostic) Data Set

http://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+%28diagnostic%29		

## Code

### Train Test dataset spliting:
- split_train_test.ipynb

### Data Processing, Supervised Learning, Hyperparameter Tuning
- cancer.ipynb

### Unsupervised Learning and Dimensionly Reduction
- cancer_dr.ipynb

### Randomized Optimization for neural networks
- RHC4BC.java - Code for Randomised Hill Climbing training of neural network
- SA4BC.java - Code for Simulated Annealing training of neural network
- GA4BC.java - Code for Genetic Algorithm training of neural network
- BCTest.java - Code for Optimized parameters for 3 algos, as well as error.


## Result

We applied different machine learning methods, such as Decision Tree, AdaBoosting, k-nearest neighbor (KNN),
Support Vector Machine (SVM), and artificial neural networks (ANN). Achieved >98% precision.

We used random search techniques such as Randomized Hill Climbing, Simulated Annealing, and Genetic Algorithm
instead of backpropagation to find the optimal weights for neural networks. Achieved similar performance as backpropagation.

We implemented dimensionality reduction techniques (PCA, ICA and Randomized Projections) to run the neural
network. Achieved a similar precision but saved 80% of the running time.
