## May 1, 2020 - Kelly Stratton - create nmrData objects and corresponding LC or GC objects #


library(pmartR)
library(pmartRdata)
library(devtools)
library(usethis)

#### Standalone NMR dataset - Tomato Data

# read in the individual data.frames #
tomatodir <- "/Volumes/iPMART/Example_Data/Tomato_NMR/"
nmr_edata_identified <- readRDS(paste0(tomatodir, "edata.RDS"))

nmr_fdata_identified <- readRDS(paste0(tomatodir, "fdata.RDS"))
nmr_fdata_identified$SampleID <- as.character(nmr_fdata_identified$SampleID)
nmr_emeta_identified <- readRDS(paste0(tomatodir, "emeta.RDS"))

all(nmr_fdata_identified$SampleID == names(nmr_edata_identified[-1]))

# save the individual data.frames to the package #
use_data(nmr_edata_identified, overwrite = TRUE)
use_data(nmr_fdata_identified, overwrite = TRUE)
use_data(nmr_emeta_identified, overwrite = TRUE)

# create the nmrData object #

nmr_object_identified <- as.nmrData(e_data = nmr_edata_identified, f_data = nmr_fdata_identified, e_meta = nmr_emeta_identified, edata_cname = "Metabolite", fdata_cname = "SampleID", emeta_cname = "Metabolite", check.names = FALSE)
  

usethis::use_data(nmr_object_identified, overwrite = TRUE)
