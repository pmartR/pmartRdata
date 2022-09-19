# Isobaric peptide data --------------------------------------------------------

#' Isobaric Peptide Expression Data (e_data)
#'
#' A dataset containing a subset of de-identified data from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus. Since this is only a subset of data from
#' this study, the number of samples is not identical across plexes, and the
#' plex names are not sequential.
#'
#' @format A data frame with 215,220 rows (peptides) and 51 columns (peptide
#'   identifier and samples):
#' \describe{
#'   \item{Peptide}{Peptide name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#' }
#' @rdname isobaric_edata
#' @name isobaric_edata
NULL

#' Isobaric Peptide Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data frame with 50 rows (samples) and 6 columns (sample identifier,
#'   experiment/plate information, and information about each sample):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in isobaric_edata)}
#'   \item{Plex}{iTRAQ plate/experiment information}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#'   \item{TMT_day_plex_order}{The day, plex, and order on plate for the sample}
#' }
#' @rdname isobaric_fdata
#' @name isobaric_fdata
NULL


#' Isobaric Peptide Feature Data (e_meta)
#'
#' A dataset containing the biomolecule metadata, a mapping of peptides to proteins.
#'
#' @format A data frame with 215,220 rows (peptides) and 2 columns:
#' \describe{
#'   \item{Protein}{Protein identifier}
#'   \item{Peptide}{Peptide identifier}
#' }
#' @rdname isobaric_emeta
#' @name isobaric_emeta
NULL


#' Isobaric Data Object of Class isobaricpepData
#'
#' An S3 object of class isobaricpepData from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A isobaricpepData object (see
#'   \code{\link[pmartR]{as.isobaricpepData}} for details)
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data frame of expression data, where
#'   \eqn{p} is the number of peptides observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each peptide}
#'   \item{f_data}{a data frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{a data frame containing biomolecule metadata}
#' }
#' @rdname isobaric_object
#' @name isobaric_object
NULL

# Lipid data -------------------------------------------------------------------

#' Positive Ion Lipidomics Expression Data (e_data)
#'
#' A dataset containing a subset of de-identified data from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A data.frame with 275 rows (lipids) and 46 columns (lipid identifier
#'   and samples):
#' \describe{
#'   \item{Lipid}{Lipid common name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#' }
#' @rdname lipid_pos_edata
#' @name lipid_pos_edata
NULL


#' Positive Ion Lipidomics Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 11 rows (samples) and 2 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#' }
#' @rdname lipid_pos_fdata
#' @name lipid_pos_fdata
NULL

#' Positive Ion Lipidomics Feature Data (e_meta)
#'
#' A dataset containing biomolecule metadata.
#'
#' @format A data frame with 275 rows (peptides) and 3 columns:
#' \describe{
#'   \item{Lipid}{Lipid identifier}
#'   \item{Row}{Lipid row}
#'   \item{Retention_Time}{Lipid retention time}
#' }
#' @rdname lipid_pos_emeta
#' @name lipid_pos_emeta
NULL

#' Positive Ion Lipidomics Data Object of Class lipidData
#'
#' An S3 object of class lipidData from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A lipidData object (see \code{\link[pmartR]{as.lipidData}} for
#'   details)
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data frame of expression data, where
#'   \eqn{p} is the number of lipids observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each lipid}
#'   \item{f_data}{a data frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{a data frame containing biomolecule information}
#' }
#' @rdname lipid_pos_object
#' @name lipid_pos_object
NULL


#' Negative Ion Lipidomics Expression Data (e_data)
#'
#' A dataset containing a subset of de-identified data from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A data.frame with 275 rows (lipids) and 46 columns (lipid identifier
#'   and samples):
#' \describe{
#'   \item{Lipid}{Lipid common name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#' }
#' @rdname lipid_neg_edata
#' @name lipid_neg_edata
NULL


#' Negative Ion Lipidomics Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 45 rows (samples) and 2 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#' }
#' @rdname lipid_neg_fdata
#' @name lipid_neg_fdata
NULL

#' Negative Ion Lipidomics Feature Data (e_meta)
#'
#' A dataset containing biomolecule metadata.
#'
#' @format A data frame with 275 rows (peptides) and 3 columns:
#' \describe{
#'   \item{Lipid}{Lipid identifier}
#'   \item{Row}{Lipid row}
#'   \item{Retention_Time}{Lipid retention time}
#' }
#' @rdname lipid_neg_emeta
#' @name lipid_neg_emeta
NULL

#' Negative Ion Lipidomics Data Object of Class lipidData
#'
#' An S3 object of class lipidData from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A lipidData object (see \code{\link[pmartR]{as.lipidData}} for
#'   details)
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data frame of expression data, where
#'   \eqn{p} is the number of lipids observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each lipid}
#'   \item{f_data}{a data frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{a data frame containing biomolecule information}
#' }
#' @rdname lipid_neg_object
#' @name lipid_neg_object
NULL


# RNAseq data --------------------------------------------------------------

#' RNAseq Expression Data (e_data)
#'
#' A dataset containing a subset of de-identified data from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A data.frame with 49,568 rows (transcripts) and 46 columns (transcript identifier
#'   and samples) containing transcript counts:
#' \describe{
#'   \item{Transcript}{Transcript name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#' }
#' @rdname rnaseq_edata
#' @name rnaseq_edata
NULL


#' RNAseq Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 45 rows (samples) and 4 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#' }
#' @rdname rnaseq_fdata
#' @name rnaseq_fdata
NULL

#' RNAseq Feature Data (e_meta)
#'
#' A dataset containing biomolecule metadata.
#'
#' @format A data frame with 53,908 rows (transcript-by-gene combinations) and 2 columns:
#' \describe{
#'   \item{Transcript}{Transcript name}
#'   \item{Gene}{Gene name}
#' }
#' @rdname rnaseq_emeta
#' @name rnaseq_emeta
NULL

#' RNAseq Data Object of Class seqData
#' An S3 object of class seqData from a multi-omic study
#' (labeled proteomics, lipidomics, and RNAseq data). This data has samples from
#' three different strains of a virus.
#'
#' @format A seqData object (see \code{\link[pmartR]{as.seqData}} for
#'   details)
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data frame of count data, where
#'   \eqn{p} is the number of transcripts observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each transcript}
#'   \item{f_data}{a data frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{a data frame containing biomolecule information}
#' }
#' @rdname rnaseq_object
#' @name rnaseq_object
NULL




# Metabolite data --------------------------------------------------------------

#' Metabolomics Expression Data (e_data)
#'
#' A dataset containing the quantified mass spectra for 80 metabolites collected
#' on an Agilent GC 7890A coupled with MSD 5975C Mass Spectrometer (Agilent
#' Technologies, Santa Clara, CA, USA).
#'
#' @format A data.frame with 80 rows (metabolites) and 13 columns (metabolite
#'   identifier and samples):
#' \describe{
#'   \item{Metabolite}{Metabolite name}
#'   \item{Mock*}{Three columns of mock infected samples}
#'   \item{Infection*}{Nine columns of infected samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079153.
#' @rdname metab_edata
#' @name metab_edata
NULL


#' Metabolomics Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in lipid_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079153.
#' @rdname metab_fdata
#' @name metab_fdata
NULL


#' Metabolomics Data Object of Class metabData
#'
#' An S3 object of class metabData (see \code{\link[pmartR]{as.metabData}} for
#' details)
#'
#' @format A metabData object:
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of metabolites observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each metabolite}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079153.
#' @rdname metab_object
#' @name metab_object
NULL

# Peptide data -----------------------------------------------------------------

#' Peptide-level Expression Data (e_data)
#'
#' A dataset containing the quantified mass spectra for 17,407 peptides
#' collected on a Thermo LTQ-Orbitrap Velos Mass Spectrometer (Thermo Fisher
#' Corporation, San Jose, CA, USA).
#'
#' @format A data.frame with 17,407 rows (peptides) and 13 columns (peptide
#'   identifier and samples):
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier}
#'   \item{Mock*}{Three columns of mock samples}
#'   \item{Infection*}{Eight columns of infection samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079152.
#' @rdname pep_edata
#' @name pep_edata
NULL


#' Peptide-level Meta Data (e_meta)
#'
#' A dataset containing the peptide metadata (e.g. mapping from peptide to
#' proteins).
#'
#' @format A data.frame with 17,407 rows (peptides) and 4 columns (peptide
#'   identifiers and meta data):
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier (matches Mass_Tag_ID in
#'   pep_edata)}
#'   \item{Protein}{Protein identifier}
#'   \item{Ref_ID}{Protein reference identifier number}
#'   \item{Peptide_Sequence}{Peptide sequence}
#' }
#' @source  See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079152.
#' @rdname pep_emeta
#' @name pep_emeta
NULL


#' Peptide-level Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pep_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source  See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079152.
#' @rdname pep_fdata
#' @name pep_fdata
NULL


#' Peptide-level Data Object of Class pepData
#'
#' An S3 object of class pepData (see \code{\link[pmartR]{as.pepData}} for
#' details)
#'
#' @format A pepData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of peptides observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each peptide}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{an optional data.frame with \eqn{p} rows. Each row
#'   corresponds to a peptide with one column giving peptide names (must be
#'   named the same as the column in \code{e_data}) and other columns giving
#'   meta information (e.g. mappings of peptides to proteins).}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#'   Data is also available on MassIVE (massive.ucsd.edu) with dataset id
#'   MSV000079152.
#' @rdname pep_object
#' @name pep_object
NULL

#' Peptide-level Expression Data (e_data) with technical replicates
#'
#' A dataset containing the quantified mass spectra for 21,802 unique peptides
#' collected on a Thermo LTQ-Orbitrap Velos Mass Spectrometer (Thermo Fisher
#' Corporation, San Jose, CA, USA). Columns represent technical replicates
#' within each of 32 biological samples (2 technical replicates per sample).
#'
#' @format A data.frame with 21,802 rows (peptides) and 65 columns (peptide
#'   identifier and LC-MS runs).  Column names have the following tags:
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier}
#'   \item{1:0, 1:7}{Indicators representing dilutions of mouse plasma to
#'   Shewanella oneidensis MR-1}
#'   \item{Rep1, Rep2}{Indicators of technical replicates within a biological
#'   sample}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname techrep_edata
#' @name techrep_edata
NULL

#' Peptide-level Technical Replicate Feature Data (f_data)
#'
#' A dataset containing the technical replicate metadata, including technical
#' replicate sample assignment variable.
#'
#' @format A data.frame with 64 rows (samples) and 4 columns:
#' \describe{
#'   \item{RunID}{LC-MS run identifier (matches column headers in pep_edata)}
#'   \item{FACTOR}{Character string indicating either regular weight (RW), or
#'   obese (OB) groups}
#'   \item{DILUTION}{Character string indicating dilution of mouse plasma to
#'   Shewanella Oneidensis MR-1}
#'   \item{TECH_REP}{Character string indicating which technical replicates
#'   belong to the same biological sample}
#' }
#' @source  See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname techrep_fdata
#' @name techrep_fdata
NULL

#' Peptide-level Data Object of Class pepData with technical replicates
#'
#' An S3 object of class pepData with a technical replicate column specified.
#' See documentation in \code{as.pepData} and \code{combine_techreps}.
#'
#' @format A pepData object with technical replicate column "TECH_REP" found in
#'   f_data.
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of peptides observed and \eqn{n} is the number of
#'   technical replicates. Each row corresponds to data for each peptide}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   technical replicate with one column giving the unique replicate identifiers
#'   found in e_data column names and other columns providing qualitative and/or
#'   quantitative traits of each replicate.\cr
#'   In this data.frame, the column "TECH_REP" specifies which technical
#'   replicates were drawn from the same biological sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname techrep_pep_object
#' @name techrep_pep_object
NULL

#' Peptide-level Expression Data (e_data) from a cancer/obesity study on mice.
#'
#' A dataset containing the quantified mass spectra for 5,244 unique mass tag
#' identifiers and 3646 unique proteins from a study examining the effect of
#' inhalation endotoxin exposure and obesity on lung inflammation in mice.  This
#' is a subset taken from the full data.
#'
#' @references Tilton, S. C.; Waters, K. M.; Karin, N. J.; Webb-Robertson, B.
#'   J.; Zangar, R. C.; Lee, K. M.; Bigelow, D. J.; Pounds, J. G.; Corley, R.
#'   A., \emph{Diet-induced obesity reprograms the inflammatory response of the
#'   murine lung to inhaled endotoxin}. Toxicol Appl Pharmacol 2013, 267 (2),
#'   137-48.
#'
#' @format A data.frame with 12328 rows (mass tags) and 17 columns (mass tag and
#'   sample columns):
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier}
#'   \item{U54_SMOKEmp_1*}{Eight columns of control samples}
#'   \item{U54_SMOKEmp_3*}{Eight columns of smoke exposed samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname smoke_edata
#' @name smoke_edata
NULL

#' Peptide-level Sample Feature Data (f_data) from a cancer/obesity study on
#' mice.
#'
#' A dataset containing the sample metadata from a study examining the effect of
#' inhalation endotoxin exposure and obesity on lung inflammation in mice.  This
#' is a subset taken from the full data.
#'
#' @references Tilton, S. C.; Waters, K. M.; Karin, N. J.; Webb-Robertson, B.
#'   J.; Zangar, R. C.; Lee, K. M.; Bigelow, D. J.; Pounds, J. G.; Corley, R.
#'   A., \emph{Diet-induced obesity reprograms the inflammatory response of the
#'   murine lung to inhaled endotoxin}. Toxicol Appl Pharmacol 2013, 267 (2),
#'   137-48.
#'
#' @format A data.frame with 16 rows (samples) and 2 columns (sample names and
#'   group assignment):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pep_edata)}
#'   \item{Status}{Indicator of control or smoke exposed group}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname smoke_fdata
#' @name smoke_fdata
NULL

#' Peptide-level Meta Data (e_meta) from a cancer/obesity study on mice.
#'
#' A dataset containing the peptide metadata (e.g. mapping from peptide to
#' proteins) from a study examining the effect of inhalation endotoxin exposure
#' and obesity on lung inflammation in mice.  This is a subset taken from the
#' full data.
#'
#' @references Tilton, S. C.; Waters, K. M.; Karin, N. J.; Webb-Robertson, B.
#'   J.; Zangar, R. C.; Lee, K. M.; Bigelow, D. J.; Pounds, J. G.; Corley, R.
#'   A., \emph{Diet-induced obesity reprograms the inflammatory response of the
#'   murine lung to inhaled endotoxin}. Toxicol Appl Pharmacol 2013, 267 (2),
#'   137-48.
#'
#' @format A data.frame with 12328 rows (mass tags) and 6 columns:
#' \describe{
#'   \item{PeptideEx}{Raw peptide sequence strings.}
#'   \item{Mass_Tag_ID}{Indicator of control or smoke exposed group}
#'   \item{Peptide}{Unique peptide sequences}
#'   \item{Protein}{Mapped protein identifiers}
#'   \item{Mod_Count/Mod Description}{Number and descriptions of modifications}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname smoke_emeta
#' @name smoke_emeta
NULL

#' Protein-level Data Object of Class pepData from a cancer/obesity study on
#' mice.
#'
#' An S3 object of class pepData (see \code{\link[pmartR]{as.pepData}} for
#' details) from a study examining the effect of inhalation endotoxin exposure
#' and obesity on lung inflammation in mice.  This is a subset taken from the
#' full data.
#'
#' @references Tilton, S. C.; Waters, K. M.; Karin, N. J.; Webb-Robertson, B.
#'   J.; Zangar, R. C.; Lee, K. M.; Bigelow, D. J.; Pounds, J. G.; Corley, R.
#'   A., \emph{Diet-induced obesity reprograms the inflammatory response of the
#'   murine lung to inhaled endotoxin}. Toxicol Appl Pharmacol 2013, 267 (2),
#'   137-48.
#'
#' @format A pepData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of peptides observed and \eqn{n} is the number of
#'   samples. Each row corresponds to data for each peptide}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{an optional data.frame with \eqn{p} rows. Each row
#'   corresponds to a peptide with one column giving peptide names (must be
#'   named the same as the column in \code{e_data}) and other columns giving
#'   meta information (e.g. mappings of peptides to proteins).}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname smoke_pep_object
#' @name smoke_pep_object
NULL

# Protein data -----------------------------------------------------------------

#' Protein-level Expression Data (e_data)
#'
#' A dataset containing the log2 median-normalized quantified mass spectra for
#' 2,731 proteins (quantified from \code{\link{pep_edata}}) using Bayesian
#' proteoform modeling (Webb-Robertson, 2014).
#'
#' @format A data.frame with 2,731 rows (proteins) and 12 columns (protein
#'   identifier and samples):
#' \describe{
#'   \item{Reference}{Reference protein name}
#'   \item{Mock*}{Three columns of mock samples}
#'   \item{Infection*}{Eight columns of infection samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer
#'   LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD, Tardiff MF,
#'   McDermott JE, Pounds JG, Waters KM (2014), \emph{Bayesian proteoform
#'   modeling improves protein quantification of global proteomic measurements}.
#'   Molecular & Cellular Proteomics. doi: 10.1074/mcp.M113.030932.
#' @rdname pro_edata
#' @name pro_edata
NULL


#' Protein-level Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pep_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname pro_fdata
#' @name pro_fdata
NULL


#' Protein-level Data Object of Class proData
#'
#' An S3 object of class proData (see \code{\link[pmartR]{as.proData}} for
#' details)
#'
#' @format A proData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of proteins observed and \eqn{n} is the number of
#'   samples. Each row corresponds to log2 median-normalized data for each
#'   protein.}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname pro_object
#' @name pro_object
NULL
