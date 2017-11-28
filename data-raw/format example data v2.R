#------------------------------------------------#
# Format example data to include in MSomicsDATA packages #
# Lisa Bramer, Kelly Stratton #
# September 26, 2016; November 28, 2017 #
#------------------------------------------------#

library(pmartRqc)
library(pmartRdata)

### Without a time component ###

# peptide #
data("pep_object")
pep_object <- setchecknames(pep_object, FALSE)

devtools::use_data(pep_object, overwrite = TRUE)
# devtools::use_data(pep_edata, pkg = "pmartRdata", overwrite = TRUE)
# devtools::use_data(pep_fdata, pkg = "pmartRdata", overwrite = TRUE)
# devtools::use_data(pep_emeta, pkg = "pmartRdata", overwrite = TRUE)


# prot #
data("pro_object")
pro_object <- setchecknames(pro_object, FALSE)

devtools::use_data(pro_object, overwrite = TRUE)
# devtools::use_data(pro_edata, pkg = "pmartRdata", overwrite = TRUE)
# devtools::use_data(pro_fdata, pkg = "pmartRdata", overwrite = TRUE)



# metab #
data("metab_object")
metab_object <- setchecknames(metab_object, FALSE)

devtools::use_data(metab_object, overwrite = TRUE)
# devtools::use_data(metab_edata, pkg = "pmartRdata", overwrite = TRUE)
# devtools::use_data(metab_fdata, pkg = "pmartRdata", overwrite = TRUE)


# lipid #
data("lipid_object")
lipid_object <- setchecknames(lipid_object, FALSE)

devtools::use_data(lipid_object, overwrite = TRUE)
# devtools::use_data(lipid_edata, pkg = "pmartRdata", overwrite = TRUE)
# devtools::use_data(lipid_fdata, pkg = "pmartRdata", overwrite = TRUE)

