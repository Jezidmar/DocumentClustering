# DocumentClustering task using NMF method and K-Means.

Project is made in programming language R.

ACQ dataset(https://www.rdocumentation.org/packages/tm/versions/0.7-12/topics/acq) from official R collection. 

Implementation is inspired by paper: https://people.eecs.berkeley.edu/~jfc/hcc/courseSP05/lecs/lec14/NMF03.pdf

Entire methodology can be found in article [NMF Document clustering](Doc_clustering.pdf) (Croatian)


Dataset is selected so there is no clear difference between articles. We took 50 of them and examined consistency of clustering and based on that did our decision
We use Frobenius norm as default metric of distance. In the pptx file, we did a comparison with the Kulback Leibler divergence method too.

#TODO translate all to english.
