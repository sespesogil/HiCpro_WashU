

source("./matrix.to.abs.R")
options(echo=T)
args <- commandArgs(trailingOnly = TRUE)
matrix_1 <- args[1]
ABS <- args[2]

arc_loops<- matrix.to.abs(matrix_1,ABS)


write.table(arc_loops, file=paste(matrix_1, ".bed", sep=""), quote = FALSE, row.names=F,col.names=F,sep="\t")










