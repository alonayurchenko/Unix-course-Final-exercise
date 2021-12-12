# Prepare data directories
cd ./projects
mkdir project

#download data
cp /data-shared/vcf_examples/luscinia_vars.vcf.gz . 

#unzip
gunzip luscinia_vars.vcf.gz   

#choose only chromosomes and create «chr» with this data
cut -f1 luscinia_vars.vcf |grep -v '^#' > chr 

#choose only quality and create «qual» with this data
cut -f6 luscinia_vars.vcf |grep -v '^#' > qual

#create «test» with two columns (chromosomes and quality)
paste chr qual > test

