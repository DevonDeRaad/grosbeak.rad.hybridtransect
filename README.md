# The following repository holds all data and code for the manuscript:
Strong selection maintains a narrow, stable avian tension zone in the Great Plains (genus *Pheucticus*)
- Lead author: Devon DeRaad (devonderaad@gmail.com)

### Sample mapping
* Detailed code showing how I created the sampling map using occurence data from the [eBirdst](https://ebird.github.io/ebirdst/) R package can be viewed at: [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.sampling.mapping.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.sampling.mapping.html).

### Data availability
* SNP datasets and sampling sheets can be found in the folder named [data](https://github.com/DevonDeRaad/grosbeak.rad.hybridtransect/tree/main/data).
* fastq files containing all raw sequence data will be archived as a single BioProject via NCBI upon the acceptance of this manuscript.

### Sequence data to SNPs
* All code used to map raw RADseq reads to the reference genome and  during the [Stacks](https://catchenlab.life.illinois.edu/stacks/) RAD locus assembly, processing, and SNP calling pipeline can be found in the folder called [sequence.data.to.snps](https://github.com/DevonDeRaad/grosbeak.rad.hybridtransect/tree/main/sequence.data.to.snps).

### SNP filtering
* We used the R packages [vcfR](https://knausb.github.io/vcfR_documentation/) and [SNPfiltR](https://devonderaad.github.io/SNPfiltR/) to optimize and implement a series of SNP filtering thresholds. This entire protocol can be viewed at: [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.filtering.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.filtering.html).

### Generating a phylogenetic network
* A vignette style walkthrough detailing how I generated a phylogenetic network using ~50K genome-wide filtered SNPs as input is available to view at [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.splitstree.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.splitstree.html).

### Unsupervised ancestry assignment
* A vignette style walkthrough the results of running the program *ADMIXTURE* on multiple datasets and testing for multimodality in genomic ancestry, is available to view at [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.run.ADMIXTURE.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.run.ADMIXTURE.html).

### Geographic cline analysis
* A vignette style walkthrough of how I adapted the protocol outlined by [Aguillon and Rohwer, 2022](https://academic.oup.com/evolut/article/76/5/1082/6881794) to generate geographic clines for mitochondrial ancestry, genomic ancestry, and male phenotype is available to view at [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/nls.clines.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/nls.clines.html).

### Assessing the relationship between mitochondrial ancestry, genomic ancestry, and male phenotype
* A vignette style walkthrough of how I tested and visualized the relationship between mitochondrial ancestry, genomic ancestry, and male phenotype is available to view at [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.triangle.plots.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/grosbeak.triangle.plots.html).
  
### Testing for an association between testis size and genomic ancestry
* A vignette style walkthrough of testing for a linear association between genomic ancestry and male testis size is available to view at [https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/association.testing.html](https://devonderaad.github.io/grosbeak.rad.hybridtransect/analyses/association.testing.html).

