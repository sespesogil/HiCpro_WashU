



matrix.to.abs <- function(matrix_ICED, path.ABS) { 
m <- read.table(matrix_ICED, sep = "\t", col.names = c("ID1", "ID2", "value"), stringsAsFactors = F)
head(m)
bed <- read.table(path.ABS, sep = "\t", col.names=c("chr","start","end","ID2"))
bed2<- read.table(path.ABS, sep = "\t", col.names=c("chr","start","end","ID1"))
head(bed)
head(bed2)
m1 = merge(m, bed, by=c("ID2"))
matrix.associated_abs = merge(m1, bed2, by=c("ID1"))
final_table<-matrix.associated_abs[c('chr.y','start.y','end.y','chr.x','start.x','end.x','value')]
return(final_table)
}




