## August 2022 -------------------------------------------------------------- ##
## Kelly Stratton ----------------------------------------------------------- ##
## Add new datasets to replace previous: 
##          pepData
##          isobaricpepData
##          proData
##          lipidData
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

