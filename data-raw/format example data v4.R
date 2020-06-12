#------------------------------------------------#
# Format example data to include in MSomicsDATA packages #
# Lisa Bramer #
# September 26, 2016 #
# Updated by Kelly Stratton December 5, 2016 #
# Re-run by Kelly Stratton December 19, 2016 to update the attributes #
# Re-run by Kelly Stratton November 28, 2017 to update the attributes #
#------------------------------------------------#

library(pmartRqc)
library(pmartRdata)

### Without a time component ###

# peptide #
data("pep_object")
pep_object <- setchecknames(pep_object, FALSE)
devtools::use_data(pep_object, overwrite = TRUE)


# prot #
data("pro_object")
pro_object <- setchecknames(pro_object, FALSE)
devtools::use_data(pro_object, overwrite = TRUE)


# metab #
data("metab_object")
metab_object <- setchecknames(metab_object, FALSE)
devtools::use_data(metab_object, overwrite = TRUE)


# lipid #
data("lipid_object")
lipid_object <- setchecknames(lipid_object, FALSE)
devtools::use_data(lipid_object, overwrite = TRUE)

