## Document Clustering with Non-Negative Matrix Factorization (NMF) and K-Means

This project explores document clustering using Non-Negative Matrix Factorization (NMF) and K-Means algorithms implemented in R.

**Data and Inspiration:**

* **Dataset:** The ACQ dataset (https://cran.r-project.org/web/packages/tm/vignettes/tm.pdf) from the official R collection is used.
* **Paper Inspiration:** The implementation is inspired by the paper "NMF03.pdf" (https://people.eecs.berkeley.edu/~jfc/hcc/courseSP05/lecs/lec14/NMF03.pdf).
* **Detailed Methodology:** A comprehensive explanation of the methodology is provided in "[NMF Document clustering](Doc_clustering.pdf)" (Croatian).

**Presentation and Comparison:**

* **Results and Details:** A presentation, "(nmf.pptx)" (Croatian), showcases key points and findings.
* **NMF Variants Compared:** Two NMF variants are evaluated:
    * Minimizing the Frobenius norm
    * Minimizing the distributional distance (KL-Divergence)
* **Benchmarking:** Standard benchmarking was not applicable due to the single-cluster nature of the original dataset.

**Addressing Challenges:**

* **Sampling and Consistency:** Random 20% feature space removal is used to assess prediction consistency under various scenarios.
* **Hungarian Algorithm:** The Hungarian algorithm ensures consistent cluster annotation.
* **Numerical Challenges:** The project investigates numerical difficulties associated with implementing the NMF algorithm from scratch. Refer to the "[NMF Document clustering](Doc_clustering.pdf)" paper for further details.

