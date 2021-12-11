# Unix course Final exercise

**Prepare data directories**

>cd ./projects

>mkdir project


**download data**

>cp /data-shared/vcf_examples/luscinia_vars.vcf.gz . 

**unzip**
>gunzip luscinia_vars.vcf.gz   

**choose only chromosomes and create «chr» with this data**
>cut -f1 luscinia_vars.vcf |grep -v '^#' > chr 

**choose only quality and create «qual» with this data**
>cut -f6 luscinia_vars.vcf |grep -v '^#' > qual

**create «test» with two columns (chromosomes and quality)**
>paste chr qual > test

# Work in R studio
**Choose directory and download test**
>setwd('/home/user10/projects/project')

>read_tsv('test') -> test

**download library**
>library(tidyverse)
 
**remuve data with 999**
>test <-subset(test, QUAL < 998)

**to remove incorrect chromosomes we need to find all possible variants**
>uni <- unique(test[,1])

**delete all «random» and «unmapped» data**
>test <- subset(test, (chr1 != "chr1_random") & (chr1 !="chr2_random") &
                    (chr1 != "chr10_random") & (chr1 != "chr11_random") &
                    (chr1 != "chr12_random") & (chr1 != "chr13_random") &
                    (chr1 != "chr14_random") & (chr1 != "chr15_random") &
                    (chr1 != "chr17_random") & (chr1 != "chr18_random") &
                    (chr1 != "chr19_random") & (chr1 != "chr1A_random") &
                    (chr1 != "chr1B_random") & (chr1 != "chr20_random") &
                    (chr1 != "chr21_random") & (chr1 != "chr22_random") &
                    (chr1 != "chr23_random") & (chr1 != "chr24_random") &
                    (chr1 != "chr25_random") & (chr1 != "chr26_random") &
                    (chr1 != "chr27_random") & (chr1 != "chr28_random") &
                    (chr1 != "chr3_random") & (chr1 != "chr4_random") &
                    (chr1 != "chr4A_random") & (chr1 != "chr5_random") &
                    (chr1 != "chr6_random") & (chr1 != "chr7_random") &
                    (chr1 != "chr8_random") & (chr1 != "chr9_random") &
                    (chr1 != "chrLGE22_random") & (chr1 != "chrUnmapped") &
                    (chr1 != "chrZ_random"))

**rename first column** 
>names(test)[1] <- "chr"

**make bar plot for all chromosomes, separating them by color**
>ggplot(test, aes(x = chr, fill = chr)) + geom_bar() 

**make histogram for whole genome**
>hist(test$QUAL, xlab = "Quality") 

**make histogram for all chromosomes**
>hist(subset(test, chr == "chr1")$QUAL, xlab = "Quality_chr1")

>hist(subset(test, chr == "chr1A")$QUAL, xlab = "Quality_chr1A")

>hist(subset(test, chr == "chr1B")$QUAL, xlab = "Quality_chr1B")

>hist(subset(test, chr == "chr10")$QUAL, xlab = "Quality_chr10")

>hist(subset(test, chr == "chr11")$QUAL, xlab = "Quality_chr11")

>hist(subset(test, chr == "chr12")$QUAL, xlab = "Quality_chr12")

>hist(subset(test, chr == "chr13")$QUAL, xlab = "Quality_chr13")

>hist(subset(test, chr == "chr14")$QUAL, xlab = "Quality_chr14")

>hist(subset(test, chr == "chr15")$QUAL, xlab = "Quality_chr15")

>hist(subset(test, chr == "chr16")$QUAL, xlab = "Quality_chr16")

>hist(subset(test, chr == "chr17")$QUAL, xlab = "Quality_chr17")

>hist(subset(test, chr == "chr18")$QUAL, xlab = "Quality_chr18")

>hist(subset(test, chr == "chr19")$QUAL, xlab = "Quality_chr19")

>hist(subset(test, chr == "chr2")$QUAL, xlab = "Quality_chr2")

>hist(subset(test, chr == "chr20")$QUAL, xlab = "Quality_chr20")

>hist(subset(test, chr == "chr21")$QUAL, xlab = "Quality_chr21")

>hist(subset(test, chr == "chr22")$QUAL, xlab = "Quality_chr22")

>hist(subset(test, chr == "chr23")$QUAL, xlab = "Quality_chr23")

>hist(subset(test, chr == "chr24")$QUAL, xlab = "Quality_chr24")

>hist(subset(test, chr == "chr25")$QUAL, xlab = "Quality_chr25")

>hist(subset(test, chr == "chr26")$QUAL, xlab = "Quality_chr26")

>hist(subset(test, chr == "chr27")$QUAL, xlab = "Quality_chr27")

>hist(subset(test, chr == "chr28")$QUAL, xlab = "Quality_chr28")

>hist(subset(test, chr == "chr3")$QUAL, xlab = "Quality_chr3")

>hist(subset(test, chr == "chr4")$QUAL, xlab = "Quality_chr4")

>hist(subset(test, chr == "chr4A")$QUAL, xlab = "Quality_chr4A")

>hist(subset(test, chr == "chr5")$QUAL, xlab = "Quality_chr5")

>hist(subset(test, chr == "chr6")$QUAL, xlab = "Quality_chr6")

>hist(subset(test, chr == "chr7")$QUAL, xlab = "Quality_chr7")

>hist(subset(test, chr == "chr8")$QUAL, xlab = "Quality_chr8")

>hist(subset(test, chr == "chr9")$QUAL, xlab = "Quality_chr9")

>hist(subset(test, chr == "chrAmb")$QUAL, xlab = "Quality_chrAmb")

>hist(subset(test, chr == "chrLG2")$QUAL, xlab = "Quality_chrLG2")

>hist(subset(test, chr == "chrLG5")$QUAL, xlab = "Quality_chrLG5")

>hist(subset(test, chr == "chrLGE22")$QUAL, xlab = "Quality_chrLGE22")

>hist(subset(test, chr == "chrM")$QUAL, xlab = "Quality_chrM")

>hist(subset(test, chr == "chrUn")$QUAL, xlab = "Quality_chrUn")

>hist(subset(test, chr == "chrZ")$QUAL, xlab = "Quality_chrZ")


![This is an image](Unix-course-Final-exercise/Histogram.png)
