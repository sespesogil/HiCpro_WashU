

#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "Creating pair-wise match..." 
R --vanilla --args $1 $2  < HiCpro_WashU.R

varname=$1

echo "Sorting files..."
cat -n $varname.bed  >  awk.in.bed
awk -F'\t' '{print $2"\t"$3"\t"$4"\t"$5":"$6"-"$7","$8"\t"$1"\t""."}' awk.in.bed > $varname.washu.bed
echo "Zipping..."
bgzip  $varname.washu.bed
tabix -p bed $varname.washu.bed.gz
rm $varname.bed awk.in.bed

echo "Finished! :-)" 



