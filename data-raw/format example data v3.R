#------------------------------------------------#
# Format example data to include in MSomicsDATA packages #
# Lisa Bramer #
# September 26, 2016 #
# Updated by Kelly Stratton December 5, 2016 #
#------------------------------------------------#

library(MSomicsQC)
library(pmartRdata)

# Create .csv versions of th emetab edata and fdata, where sample names begin with numbers and contains dashes, in order to show how to use "check.names=FALSE" when reading in a datasets. #

# metab #
data("metab_edata")
data("metab_fdata")

names(metab_edata)
names(metab_edata) <- c("Metabolite", "1-Mock", "2-Mock", "3-Mock", "1-Infection", "2-Infection", "3-Infection", "4-Infection", "5-Infection", "6-Infection", "7-Infection", "8-Infection", "9-Infection")

metab_fdata$SampleID <- c("1-Mock", "2-Mock", "3-Mock", "1-Infection", "2-Infection", "3-Infection", "4-Infection", "5-Infection", "6-Infection", "7-Infection", "8-Infection", "9-Infection")

write.csv(metab_edata, "C:/git/pmartRdata/extdata/metab_edata_sample_names.csv", row.names=FALSE)
write.csv(metab_fdata, "C:/git/pmartRdata/extdata/metab_fdata_sample_names.csv", row.names=FALSE)

# to access these .csv files: #
edata <- read.csv(system.file("extdata", "metab_edata_sample_names.csv", package="pmartRdata"), header=TRUE)
names(edata)
edata <- read.csv(system.file("extdata", "metab_edata_sample_names.csv", package="pmartRdata"), header=TRUE, check.names=FALSE)
names(edata)
fdata <- read.csv(system.file("extdata", "metab_fdata_sample_names.csv", package="pmartRdata"), header=TRUE)
