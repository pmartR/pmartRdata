###format example isobaric pep data objects ###



# July 20, 2020 - Kelly Stratton: update attributes for data objects, removing specification of reference pool, set, etc. from the data object (as these now get specified when you normalize_isobaric) # 

devtools::install_local("~/git/pmartR", force = TRUE)
library(pmartR)
library(pmartRdata)

data("isobaric_edata")
data("isobaric_emeta")
data("isobaric_fdata")

isobaric_object <- as.isobaricpepData(e_data = isobaric_edata, f_data = isobaric_fdata, e_meta = isobaric_emeta, edata_cname = "Peptide", fdata_cname = "Sample", emeta_cname = "Protein", check.names = FALSE)


usethis::use_data(isobaric_object, overwrite = TRUE)



