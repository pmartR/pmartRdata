library (pmartR)
library (pmartRdata)

# Peptides (pepes) -------------------------------------------------------------

data(pep_edata)
data(pep_fdata)
data(pep_emeta)

pep_object <- as.pepData(
  e_data = pep_edata,
  f_data = pep_fdata,
  e_meta = pep_emeta,
  edata_cname = "Mass_Tag_ID",
  fdata_cname = "SampleID",
  emeta_cname = "Protein",
  check.names = FALSE
)

usethis::use_data(pep_object, overwrite = TRUE)

# Techrep pepes ----------------------------------------------------------------

data(techrep_edata)
data(techrep_fdata)

techrep_pep_object = as.pepData(
  e_data = techrep_edata,
  f_data = techrep_fdata,
  edata_cname = "Mass_Tag_ID",
  fdata_cname = "RunID",
  emeta_cname = "Protein",
  techrep_cname = 'TECH_REP',
  check.names = FALSE
)

usethis::use_data(techrep_pep_object, overwrite = TRUE)

# Proteins ---------------------------------------------------------------------

data(pro_edata)
data(pro_fdata)

pro_object <- as.proData(
  e_data = pro_edata,
  f_data = pro_fdata,
  edata_cname = "Reference",
  fdata_cname = "SampleID",
  data_scale = "log2",
  check.names = FALSE
)

# Data was normalized previously. Update the attributes to reflect this.
attr(pro_object, "data_info")$norm_info$is_normalized <- TRUE
attr(pro_object, "data_info")$norm_info$norm_fn <- "median"

usethis::use_data(pro_object, overwrite = TRUE)

# Metabolites ------------------------------------------------------------------

data("metab_edata")
data("metab_fdata")

metab_object <- as.metabData(
  e_data = metab_edata,
  f_data = metab_fdata,
  edata_cname = "Metabolite",
  fdata_cname = "SampleID",
  check.names = FALSE
)

usethis::use_data(metab_object, overwrite = TRUE)

# Lipids -----------------------------------------------------------------------

data("lipid_edata")
data("lipid_fdata")

lipid_object <- as.lipidData(
  e_data = lipid_edata,
  f_data = lipid_fdata,
  edata_cname = "LipidCommonName",
  fdata_cname = "Sample_Name",
  check.names = FALSE
)

usethis::use_data(lipid_object, overwrite = TRUE)

# Smoking mice -----------------------------------------------------------------

data("smoke_edata")
data("smoke_fdata")
data("smoke_emeta")

smoke_pep_object <- as.pepData(
  e_data = smoke_edata,
  f_data = smoke_fdata,
  e_meta = smoke_emeta,
  edata_cname = "Mass_Tag_ID",
  fdata_cname = "SampleID",
  emeta_cname = "Protein",
  data_scale = "abundance",
  check.names = FALSE
)

usethis::use_data(smoke_pep_object, overwrite = TRUE)

# Isobaric pepes ---------------------------------------------------------------

data("isobaric_edata")
data("isobaric_emeta")
data("isobaric_fdata")

isobaric_object <- as.isobaricpepData(
  e_data = isobaric_edata,
  f_data = isobaric_fdata,
  e_meta = isobaric_emeta,
  edata_cname = "Peptide",
  fdata_cname = "Sample",
  emeta_cname = "Protein",
  check.names = FALSE
)

usethis::use_data(isobaric_object, overwrite = TRUE)

# NMR stuffs -------------------------------------------------------------------

data("nmr_edata_identified")
data("nmr_fdata_identified")
data("nmr_emeta_identified")

nmr_object_identified <- as.nmrData(
  e_data = nmr_edata_identified,
  f_data = nmr_fdata_identified,
  e_meta = nmr_emeta_identified,
  edata_cname = "Metabolite",
  fdata_cname = "SampleID",
  emeta_cname = "Metabolite",
  check.names = FALSE
)

usethis::use_data(nmr_object_identified, overwrite = TRUE)
