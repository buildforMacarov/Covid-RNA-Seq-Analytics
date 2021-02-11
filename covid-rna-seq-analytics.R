# Load packages
library(readr) # reads data
library(dplyr) # manupulate dataframe
library(magrittr) # piping in R
library("tximport", lib.loc="~/R/win-library/4.0")
# reading the data
sample_table = read.csv("../SraRunTable.csv") %>%
  select(Sample_Name, source_name, Treatment, 
         Cell_Line, Cell_type, Time_point) %>%
  slice(seq(1,48,by=4))
#12 samples repeated 4 times so just take one row

# use bioconductor to read the salmon output which is
# transcript level count into R and then summarise it
# in gene level count

tximport(files = ,
         type = "salmon",
         tx2gene = ,
         ignoreTxVersion = TRUE)



























