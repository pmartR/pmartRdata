## August 2022 -------------------------------------------------------------- ##
## Kelly Stratton ----------------------------------------------------------- ##
## Add new datasets to replace previous: 
##          pepData
##          proData         
##          metabData
##          lipidData
##          isobaricpepData
##          seqData
## and their associated components (e_data, f_data, e_meta)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## Labeled Proteomics

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Unicorn/Proteomics/Processed_Data/"
isobaric_edata <- readRDS(paste0(mydir, "isobaric_edata.RDS"))
isobaric_emeta <- readRDS(paste0(mydir, "isobaric_emeta.RDS"))
isobaric_fdata <- readRDS(paste0(mydir, "isobaric_fdata.RDS"))
isobaric_object <- readRDS(paste0(mydir, "isobaric_object.RDS"))

# save into the pmartRdata package
usethis::use_data(isobaric_edata, overwrite = TRUE)
usethis::use_data(isobaric_emeta, overwrite = TRUE)
usethis::use_data(isobaric_fdata, overwrite = TRUE)
usethis::use_data(isobaric_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## Lipidomics - Negative Ion

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Unicorn/Lipidomics/Processed_Data/"
lipid_neg_edata <- readRDS(paste0(mydir, "lipid_neg_edata.RDS"))
lipid_neg_emeta <- readRDS(paste0(mydir, "lipid_neg_emeta.RDS"))
lipid_neg_fdata <- readRDS(paste0(mydir, "lipid_neg_fdata.RDS"))
lipid_neg_object <- readRDS(paste0(mydir, "lipid_neg_object.RDS"))

# save into the pmartRdata package
usethis::use_data(lipid_neg_edata, overwrite = TRUE)
usethis::use_data(lipid_neg_emeta, overwrite = TRUE)
usethis::use_data(lipid_neg_fdata, overwrite = TRUE)
usethis::use_data(lipid_neg_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## Lipidomics - Positive Ion

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Unicorn/Lipidomics/Processed_Data/"
lipid_pos_edata <- readRDS(paste0(mydir, "lipid_pos_edata.RDS"))
lipid_pos_emeta <- readRDS(paste0(mydir, "lipid_pos_emeta.RDS"))
lipid_pos_fdata <- readRDS(paste0(mydir, "lipid_pos_fdata.RDS"))
lipid_pos_object <- readRDS(paste0(mydir, "lipid_pos_object.RDS"))

# save into the pmartRdata package
usethis::use_data(lipid_pos_edata, overwrite = TRUE)
usethis::use_data(lipid_pos_emeta, overwrite = TRUE)
usethis::use_data(lipid_pos_fdata, overwrite = TRUE)
usethis::use_data(lipid_pos_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## RNAseq 

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Unicorn/RNAseq/Processed_Data/"
rnaseq_edata <- readRDS(paste0(mydir, "rnaseq_edata.RDS"))
rnaseq_emeta <- readRDS(paste0(mydir, "rnaseq_emeta.RDS"))
rnaseq_fdata <- readRDS(paste0(mydir, "rnaseq_fdata.RDS"))
rnaseq_object <- readRDS(paste0(mydir, "rnaseq_object.RDS"))

# save into the pmartRdata package
usethis::use_data(rnaseq_edata, overwrite = TRUE)
usethis::use_data(rnaseq_emeta, overwrite = TRUE)
usethis::use_data(rnaseq_fdata, overwrite = TRUE)
usethis::use_data(rnaseq_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## GC-MS Metab (Myatt) 

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Myatt_UnlabeledProt_Metab/Metabolomics/Processed_Data/"
metab_edata <- readRDS(paste0(mydir, "metab_edata.RDS"))
metab_fdata <- readRDS(paste0(mydir, "metab_fdata.RDS"))
metab_object <- readRDS(paste0(mydir, "metab_object.RDS"))

# save into the pmartRdata package
usethis::use_data(metab_edata, overwrite = TRUE)
usethis::use_data(metab_fdata, overwrite = TRUE)
usethis::use_data(metab_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## Pep (Myatt) 

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Myatt_UnlabeledProt_Metab/Proteomics/Processed_Data/"
pep_edata <- readRDS(paste0(mydir, "pep_edata.RDS"))
pep_emeta <- readRDS(paste0(mydir, "pep_emeta.RDS"))
pep_fdata <- readRDS(paste0(mydir, "pep_fdata.RDS"))
pep_object <- readRDS(paste0(mydir, "pep_object.RDS"))

# save into the pmartRdata package
usethis::use_data(pep_edata, overwrite = TRUE)
usethis::use_data(pep_emeta, overwrite = TRUE)
usethis::use_data(pep_fdata, overwrite = TRUE)
usethis::use_data(pep_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## -------------------------------------------------------------------------- ##
## Pro (Myatt) 

# read in the data from share drive
mydir <- "/Volumes/iPMART/Example_Data/Myatt_UnlabeledProt_Metab/Proteomics/Processed_Data/"
pro_edata <- readRDS(paste0(mydir, "prot_edata.RDS"))
pro_emeta <- readRDS(paste0(mydir, "prot_emeta.RDS"))
pro_fdata <- readRDS(paste0(mydir, "prot_fdata.RDS"))
pro_object <- readRDS(paste0(mydir, "prot_object.RDS"))


# save into the pmartRdata package
usethis::use_data(pro_edata, overwrite = TRUE)
usethis::use_data(pro_emeta, overwrite = TRUE)
usethis::use_data(pro_fdata, overwrite = TRUE)
usethis::use_data(pro_object, overwrite = TRUE)
## -------------------------------------------------------------------------- ##


## October 2022 ------------------------------------------------------------- ##
## Kelly Stratton ----------------------------------------------------------- ##
## Rename previous datasets: 
##          nmrData
##          techrep         
## and their associated components (e_data, f_data, e_meta)
## -------------------------------------------------------------------------- ##

data("nmr_edata_identified")
data("nmr_emeta_identified")
data("nmr_fdata_identified")
data("nmr_object_identified")

nmr_identified_edata <- nmr_edata_identified
nmr_identified_emeta <- nmr_emeta_identified
nmr_identified_fdata <- nmr_fdata_identified
nmr_identified_object <- nmr_object_identified

usethis::use_data(nmr_identified_edata)
usethis::use_data(nmr_identified_emeta)
usethis::use_data(nmr_identified_fdata)
usethis::use_data(nmr_identified_object)



data("techrep_edata")
data("techrep_fdata")
data("techrep_pep_object")

pep_techrep_edata <- techrep_edata
pep_techrep_fdata <- techrep_fdata
pep_techrep_object <- techrep_pep_object

usethis::use_data(pep_techrep_edata)
usethis::use_data(pep_techrep_fdata)
usethis::use_data(pep_techrep_object)
