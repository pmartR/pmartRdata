## May 28, 2019 - Daniel Claborne - create objects from scratch#
# Edited from 'format example data v2', added checknames argument and techrep object creation, devtools -> usethis.

library(pmartRdata)

#### Peptides

data(pep_edata)
data(pep_fdata)
data(pep_emeta)
pep_object <- as.pepData(e_data = pep_edata, f_data = pep_fdata, e_meta = pep_emeta, edata_cname = "Mass_Tag_ID", 
                         fdata_cname = "SampleID", emeta_cname = "Protein", check.names = FALSE)

data(pro_edata)
data(pro_fdata)

usethis::use_data(pep_object, overwrite = TRUE)

#### Techrep Peptides

data(techrep_edata)
data(techrep_fdata)

techrep_pep_object = as.pepData(e_data = techrep_edata, f_data = techrep_fdata, edata_cname = "Mass_Tag_ID", 
                                fdata_cname = "RunID", emeta_cname = "Protein", techrep_cname = 'TECH_REP', check.names = FALSE)

usethis::use_data(techrep_pep_object, overwrite = TRUE)

#### Proteins

pro_object <- as.proData(e_data = pro_edata, f_data = pro_fdata, edata_cname = "Reference", fdata_cname = "SampleID",
                         check.names = FALSE)

attr(pro_object, "data_info")$norm_info$is_normalized <- TRUE
attr(pro_object, "data_info")$norm_info$norm_fn <- "median"
attr(pro_object, "data_info")$data_scale <- "log2"

usethis::use_data(pro_object, overwrite = TRUE)

##### Metabolites

data("metab_edata")
data("metab_fdata")

metab_object <- as.metabData(e_data = metab_edata, f_data = metab_fdata, edata_cname = "Metabolite", fdata_cname = "SampleID",
                             check.names = FALSE)
attr(metab_object, "data_info")$data_scale <- "abundance"

# replace 0s with NAs
metab_object <- edata_replace(metab_object, x = 0, y = NA)
#  "0 instances of 0 have been replaced with NA"

usethis::use_data(metab_object, overwrite = TRUE)

##### Lipids

data("lipid_edata")
data("lipid_fdata")

lipid_object <- as.lipidData(e_data = lipid_edata, f_data = lipid_fdata, edata_cname = "LipidCommonName", fdata_cname = "Sample_Name",
                             check.names = FALSE)
attr(lipid_object, "data_info")$data_scale <- "abundance"

usethis::use_data(lipid_object, overwrite = TRUE)

##### 
