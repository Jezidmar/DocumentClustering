# DocumentClustering task using NMF method and K-Means.

Project is made in programming language R.

ACQ dataset(https://www.rdocumentation.org/packages/tm/versions/0.7-12/topics/acq) from official R collection. 

Implementation is inspired by paper: https://people.eecs.berkeley.edu/~jfc/hcc/courseSP05/lecs/lec14/NMF03.pdf

Entire methodology can be found in article [NMF Document clustering](Doc_clustering.pdf) (Croatian)

I provide the [Presentation](Nenegativna matrična faktorizacija_final.pptx) as well where I present most important details/results.

I compare the 2 variants of NMF differing only by the optimization algorithm with standard K-means algorithm. In the first implementation, the Frobenius norm is minimized whereas in the second one the distributional distance is minimized, or the KL-Divergence.


Since the observed Dataset had data originally belonging to only one cluster, the standard (supervised) benchmarking was useless so I experimented with Sampling methods to observe the consistency of predictions in scenarios where I removed random 20% of feature space. The Hungarian algorithm is used for consistent annotation of clusters. More in paper! :)
