# HiCpro-WashU
Utility to transform HiC-Pro (https://github.com/nservant/HiC-Pro) results to visual pair-wise interactions in WashU epigenome browser. 

![alt text](https://xespes10.u.hpc.mssm.edu/images/schematicview.png)
# Required dependencies

- R version > v3.3.1
- Samtools > v1.1
# Usage 

```./HiCpro_WashU.sh matrix_file abs_bedfile```

```matrix_file``` =  matrix HiC-Pro output (path+file) 

```abs_bedfile``` = abs HiC-pro output (path+file) 

Both matrix and abs.bedfile require to have the same HiC resolution

Resulting files ```*.bed.gz``` and ```*.bed.gz.tbi``` must be moved to a web server to be linked to the pair-wise entry in WashU Epigenome browser
(http://epigenomegateway.wustl.edu/browser/)


