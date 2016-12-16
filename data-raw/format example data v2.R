#------------------------------------------------#
# Format example data to include in MSomicsDATA packages #
# Lisa Bramer #
# September 26, 2016 #
# Updated by Kelly Stratton December 5, 2016 #
#------------------------------------------------#

library(MSomicsQC)
library(pmartRdata)

### Without a time component ###

# peptide #
data(pep_edata)
data(pep_fdata)
data(pep_emeta)
pep_object <- as.pepData(e_data = pep_edata, f_data = pep_fdata, e_meta = pep_emeta, edata_cname = "Mass_Tag_ID", fdata_cname = "SampleID", emeta_cname = "Protein")
attr(pep_object, "data_info")$data_scale <- "abundance"

summary(pep_object)
# Summary of 'pepData' Object
# ---------------------------                           
#   Samples                  12
# Rows (e_data)         17407
# Rows (e_meta)            NA
# Missing Observations  82833
# Fraction Missing      0.366


devtools::use_data(pep_object, overwrite = TRUE)



# prot #
data(pro_edata)
data(pro_fdata)

pro_object <- as.proData(e_data = pro_edata, f_data = pro_fdata, edata_cname = "Reference", fdata_cname = "SampleID")
attr(pro_object, "data_info")$data_norm <- TRUE
attr(pro_object, "data_info")$norm_method <- "median_center"
attr(pro_object, "data_info")$data_scale <- "log2"
pro_edata <- pro_object$e_data
pro_fdata <- pro_object$f_data

summary(pro_object)
# Summary of 'proData' Object
# ---------------------------                          
#   Samples                 11
# Rows (e_data)         2731
# Rows (e_meta)           NA
# Missing Observations  5242
# Fraction Missing      0.16

devtools::use_data(pro_object, overwrite = TRUE)



# metab #
data("metab_edata")
data("metab_fdata")

metab_object <- as.metabData(e_data = metab_edata, f_data = metab_fdata, edata_cname = "Metabolite", fdata_cname = "SampleID")
attr(metab_object, "data_info")$data_scale <- "abundance"

# replace 0s with NAs
metab_object <- edata_replace(metab_object, x = 0, y = NA)
#  "0 instances of 0 have been replaced with NA"

summary(metab_object)
# Summary of 'metabData' Object
# ---------------------------                           
#   Samples                  12
# Rows (e_data)            80
# Rows (e_meta)            NA
# Missing Observations    148
# Fraction Missing      0.142

devtools::use_data(metab_object, overwrite = TRUE)


# lipid - pos #

data("lipid_edata")
data("lipid_fdata")

lipid_object <- as.lipidData(e_data = lipid_edata, f_data = lipid_fdata, edata_cname = "LipidCommonName", fdata_cname = "Sample_Name")
attr(lipid_object, "data_info")$data_scale <- "abundance"

summary(lipid_object)
# Summary of 'lipidData' Object
# ---------------------------                           
#   Samples                  11
# Rows (e_data)           146
# Rows (e_meta)            NA
# Missing Observations    884
# Fraction Missing      0.505

devtools::use_data(lipid_object, overwrite = TRUE)


# # lipid - neg #
# mers_lipid_neg <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithoutTime/MCL003_lipids_neg.csv", header=TRUE)
# dim(mers_lipid_neg) # 144  12
# length(unique(mers_lipid_neg$LipidCommonName)) # 143
# 
# sampleinfo <- read.csv("O:/MSomicsQC_skeleton/example_data/WithoutTime/Sample_Info_Lipids_Neg.csv", header=TRUE)
# dim(sampleinfo) # 11 3
# 
# sampleinfo_lipid <- data.frame(SampleID = sampleinfo$SampleID, Condition = sampleinfo$Condition)
# 
# lipidN_object <- as.lipidData(e_data = mers_lipid_neg, f_data = sampleinfo_lipid, edata_cname = "LipidCommonName", samp_cname = "SampleID", data_scale = "abundance")
# lipid_edata <- lipidN_object$e_data
# lipid_fdata <- lipidN_object$f_data
# 
# # devtools::use_data(lipidN_lipidData, pkg = "MSomicsDATA", overwrite = TRUE)
# # devtools::use_data(lipidN_edata, pkg = "MSomicsDATA", overwrite = TRUE)
# # devtools::use_data(lipidN_fdata, pkg = "MSomicsDATA", overwrite = TRUE)
# 
# #------------------------------------------------#
# 
# ## EXCLUDED FOR NOW ###
# ### With a time component ###
# 
# # metab #
# icl_metab <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/OMICS_ICL102_Metabolomics.csv", header=TRUE)
# dim(icl_metab) # 80 61
# 
# sampleinfo_metab <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/Sample_Info_Metabolomics.csv", header=TRUE)
# dim(sampleinfo_metab) # 60 3
# 
# metab <- as.metabData(e_data = icl_metab, f_data = sampleinfo_metab, edata_cname = "Metabolite", samp_cname = "MetabSampleName")
# 
# # replace 0s with NAs
# metab_time <- edata_replace(mintR_data = metab, x = 0, y = NA)
# # "168 instances of 0 have been replaced with NA"
# saveRDS(metab_time, "/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/metab.RDS")
# devtools::use_data(metab_time, pkg = "MSomicsDATA")
# 
# 
# # lipid - pos #
# icl_lipid_pos <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/OMICS_ICL102_LipidomicPos.csv", header=TRUE)
# dim(icl_lipid_pos) # 245  61
# 
# sampleinfo_lipid_pos <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/Sample_Info_Lipids_Pos.csv", header=TRUE)
# dim(sampleinfo_lipid_pos) # 60 3
# 
# lipid_pos_time <- as.lipidData(e_data = icl_lipid_pos, f_data = sampleinfo_lipid_pos, edata_cname = "LipidCommonName", samp_cname = "LipidPosSampleName")
# 
# saveRDS(lipid_pos_time, "O:/MSomicsQC_skeleton/example_data/WithTime/lipid_pos.RDS")
# devtools::use_data(lipid_pos_time, pkg = "MSomicsDATA")
# 
# 
# # lipid - neg #
# icl_lipid_neg <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/OMICS_ICL102_LipidomicNeg.csv", header=TRUE)
# dim(icl_lipid_neg) # 251  61
# 
# sampleinfo_lipid_neg <- read.csv("/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/Sample_Info_Lipids_Neg.csv", header=TRUE)
# dim(sampleinfo_lipid_neg) # 60 3
# 
# lipid_neg_time <- as.lipidData(e_data = icl_lipid_neg, f_data = sampleinfo_lipid_neg, edata_cname = "LipidCommonName", samp_cname = "LipidNegSampleName")
# 
# saveRDS(lipid_neg_time, "/Volumes/STAT_MinT/MSomicsQC_skeleton/example_data/WithTime/lipid_neg.RDS")
# #devtools::use_data(lipid_neg_time, pkg = "MSomicsDATA")
