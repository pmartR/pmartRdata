# This script creates positive and negative mode ionization objects for lipid
# data. The original lipid data is the positive ion and the names of the
# original lipid objects will be renamed to reflect this. The lipid data being
# added with this script is negative ion data.

library (pmartR)

# Positive ions (the good, happy kind) -----------------------------------------

# Load old data objects and rename them.
data("lipid_edata")
lipid_edata_pos <- lipid_edata
usethis::use_data(lipid_edata_pos, overwrite = TRUE)

data("lipid_fdata")
lipid_fdata_pos <- lipid_fdata
usethis::use_data(lipid_fdata_pos, overwrite = TRUE)

# Create the positive lipidData object and specify the data type.
lipid_object_pos <- as.lipidData(
  e_data = lipid_edata_pos,
  f_data = lipid_fdata_pos,
  edata_cname = "LipidCommonName",
  fdata_cname = "Sample_Name",
  check.names = FALSE,
  data_types = "positive ion"
)
usethis::use_data(lipid_object_pos, overwrite = TRUE)

# Negative ions (the cross, grumpy kind) ---------------------------------------

# Read in the negative ion lipid data (this will become the e_data object).
# lipid_edata_neg <- read.csv(
#   file = "~/MCL003_lipids_neg.csv"
# )

# There are two rows with the same LipidCommonName.
# lipid_edata_neg %>%
#   group_by(LipidCommonName) %>%
#   tally() %>%
#   arrange(-n)
#   A tibble: 143 × 2
#    LipidCommonName     n
#    <chr>           <int>
#  1 PG(16:0/16:1)       2
#  2 Cer(d18:0/16:0)     1
#  3 Cer(d18:0/22:0)     1
#  4 Cer(d18:0/24:0)     1
#  5 Cer(d18:0/24:1)     1
#  6 Cer(d18:1/16:0)     1
#  7 Cer(d18:1/18:0)     1
#  8 Cer(d18:1/22:0)     1
#  9 Cer(d18:1/24:0)     1
# 10 Cer(d18:1/24:1)     1

# An omicsdata object cannot be created unless all biomolecule IDs are unique.
# We will remove one of the rows with a duplicate ID.
lipid_edata_neg <- lipid_edata_neg[-61, ]
usethis::use_data(lipid_edata_neg, overwrite = TRUE)

# Create the negative f_data object. This the same for both the positive and
# negative data.
lipid_fdata_neg <- lipid_fdata_pos
usethis::use_data(lipid_fdata_neg, overwrite = TRUE)

# Create the negative lipidData object and specify the data type.
lipid_object_neg <- as.lipidData(
  e_data = lipid_edata_neg,
  f_data = lipid_fdata_neg,
  edata_cname = "LipidCommonName",
  fdata_cname = "Sample_Name",
  check.names = FALSE,
  data_types = "negative ion"
)
usethis::use_data(lipid_object_neg, overwrite = TRUE)
