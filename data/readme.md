### This repository holds all data needed to reproduce the results shown in the manuscript

- The file 'grosbeak.data.csv' contains detailed sample information for all 156 individuals for which genomic sequence data was generated. 
- The file 'grosbeak.sample.info.csv' contains detailed sample information for the 138 samples that passed SNP filtering protocols and were included in downstream analyses presented in the mansucript.
- The file 'unfiltered.grosbeak.snps.vcf.zst' contains all called SNPs across all 156 samples in vcf format. It is compressed using the relatively non-standard zstd program, in order to get it below the 100Mb GitHub file size limit. It can be decompressed using the zstd program (e.g., zstd -d unfiltered.grosbeak.snps.vcf.zst) or using the python program 'pyzstd'.
- The file 'grosbeak.filtered.snps.vcf.gz' contains all filtered SNPs shared across the 138 samples that passed filtering thresholds.
- The file 'grosbeak.filtered.unlinked.snps.vcf.gz' contains all filtered unlinked SNPs shared across the 138 samples that passed filtering thresholds.

