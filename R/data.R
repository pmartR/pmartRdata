# Isobaric peptide data --------------------------------------------------------

#' Isobaric Peptide Expression Data (e_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data), and consist of a subset of de-identified data from a
#' multi-omic study . These data consist of samples from three different strains
#' of a virus, plus pooled reference samples. Since this is only a subset of
#' data from this study, the number of samples is not identical across TMT
#' plexes, and the TMT plex names are not sequential.
#'
#' @format A data frame with 215,220 rows (peptides) and 51 columns (peptide
#'   identifier and samples, including one pooled reference sample for each TMT
#'   plex):
#' \describe{
#'   \item{Peptide}{Peptide name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#'   \item{Pool_Plex*}{Columns for pooled reference samples, where the number in
#'   the sample name corresponds to the TMT plex on which the pooled reference
#'   sample was run}
#' }
#' @rdname isobaric_edata
#' @name isobaric_edata
NULL

#' Isobaric Peptide Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data), and consist of a subset of de-identified data from a
#' multi-omic study. This dataset contains the biomolecule metadata, a mapping
#' of peptides to proteins.
#'
#' @format A data frame with 215,220 rows (peptides) and 2 columns:
#' \describe{
#'   \item{Protein}{Protein identifier}
#'   \item{Peptide}{Peptide identifier}
#' }
#' @rdname isobaric_emeta
#' @name isobaric_emeta
NULL

#' Isobaric Peptide Sample Metadata (f_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data), and consist of a subset of de-identified data from a
#' multi-omic study. This dataset contains the sample metadata. Since this is
#' only a subset of data from this study, the number of samples is not identical
#' across TMT plexes, and the TMT plex names are not sequential.
#'
#' @format A data frame with 50 rows (samples) and 6 columns (sample identifier,
#'   experiment/plate information, and information about each sample):
#' \describe{
#'   \item{SampleID}{Sample identifier that matches column headers in
#'   isobaric_edata}
#'   \item{Plex}{iTRAQ plate/experiment information}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#'   \item{TMT_day_plex_order}{The day, TMT plex, and order on plate for the
#'   sample}
#' }
#' @rdname isobaric_fdata
#' @name isobaric_fdata
NULL

#' Isobaric Data Object of Class isobaricpepData
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data), and consist of a subset of de-identified data from a
#' multi-omic study . These data consist of samples from three different strains
#' of a virus, plus pooled reference samples. Since this is only a subset of
#' data from this study, the number of samples is not identical across TMT
#' plexes, and the TMT plex names are not sequential.
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


# Lipid data Negative ----------------------------------------------------------

#' Negative Ion Lipidomics Expression Data (e_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing a subset of de-identified data from a
#' multi-omic study (labeled proteomics, lipidomics, and RNAseq data). This data
#' has samples from three different strains of a virus.
#'
#' @format A data.frame with 337 rows (lipids) and 46 columns (lipid identifier
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

#' Negative Ion Lipidomics Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing biomolecule metadata.
#'
#' @format A data frame with 337 rows (peptides) and 3 columns:
#' \describe{
#'   \item{Lipid}{Lipid identifier}
#'   \item{Row}{Lipid row}
#'   \item{Retention_Time}{Lipid retention time}
#' }
#' @rdname lipid_neg_emeta
#' @name lipid_neg_emeta
NULL

#' Negative Ion Lipidomics Sample Metadata (f_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 45 rows (samples) and 4 columns (sample identifier
#'   and associated information):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Replicate}{Biological replicate number}
#'   \item{Donor}{Donor from which the sample originated}
#' }
#' @rdname lipid_neg_fdata
#' @name lipid_neg_fdata
NULL

#' Negative Ion Lipidomics Data Object of Class lipidData
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). An S3 object of class lipidData from a multi-omic study
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

# Lipid data Positive ----------------------------------------------------------

#' Positive Ion Lipidomics Expression Data (e_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing a subset of de-identified data from a
#' multi-omic study (labeled proteomics, lipidomics, and RNAseq data). This data
#' has samples from three different strains of a virus.
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

#' Positive Ion Lipidomics Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing biomolecule metadata.
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

#' Positive Ion Lipidomics Sample Metadata (f_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 45 rows (samples) and 4 columns (sample identifier
#'   and associated information):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#' }
#' @rdname lipid_pos_fdata
#' @name lipid_pos_fdata
NULL

#' Positive Ion Lipidomics Data Object of Class lipidData
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). An S3 object of class lipidData from a multi-omic study
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

# Metabolite data --------------------------------------------------------------

#' Metabolomics Expression Data (e_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the quantified mass spectra
#' for 250 metabolites across 50 samples, collected via GC-MS.
#'
#' @format A data.frame with 250 rows (metabolites) and 51 columns (metabolite
#'   identifier and samples):
#' \describe{
#'   \item{Metabolite}{Metabolite name}
#'   \item{Sample_*_Phenotype1_*}{Columns for samples belonging to the Phenotype
#'   1 group}
#'   \item{Sample_*_Phenotype2_*}{Columns for samples belonging to the Phenotype
#'   2 group}
#'   \item{Sample_*_Phenotype3_*}{Columns for samples belonging to the Phenotype
#'   3 group}
#' }
#' @rdname metab_edata
#' @name metab_edata
NULL

#' Metabolomics Sample Metadata (f_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 50 rows (samples) and 4 columns (sample identifier
#'   and associated information):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in metab_edata)}
#'   \item{Phenotype}{Character string indicating Phenotype 1, 2, or 3}
#'   \item{SecondPhenotype}{Character string indicating A or B}
#'   \item{Characteristic}{Numeric value corresponding to a measured
#'   characteristic for each sample}
#' }
#' @rdname metab_fdata
#' @name metab_fdata
NULL

#' Metabolomics Data Object of Class metabData
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). An S3 object of class metabData (see
#' \code{\link[pmartR]{as.metabData}} for details)
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
#' @rdname metab_object
#' @name metab_object
NULL

# NMR data -----------------------------------------------------------------

#' NMR (Nuclear Magnetic Resonance) Expression Data (e_data)
#'
#' A dataset containing the NMR abundances for 38 metabolites in 41 samples 
#' taken from tomato plants.
#'
#' @format A data.frame with 38 rows (metabolites) and 42 columns (metabolite
#'   identifier and samples):
#' \describe{
#'   \item{Metabolite}{Metabolite name}
#'   \item{F*}{Sample names}
#' }
#' @references Biais B, Benard C, Beauvoit B, Colombie S, Prodhomme D, Menard G, 
#' Bernillon S, Gehl B, Gautier H, Ballias P, et al. (2014), \emph{Remarkable 
#' reproducibility of enzyme activity profiles in tomato fruits grown under 
#' contrasting environments provides a roadmap for studies of fruit metabolism}.
#' Plant Physiol 164 (3), 1204-1221. doi: 10.1104/pp.113.231241.
#' @rdname nmr_identified_edata
#' @name nmr_identified_edata
NULL

#' NMR (Nuclear Magnetic Resonance) Biomolecule Metadata (e_meta)
#'
#' A dataset containing biomolecule metadata.
#'
#' @format A data frame with 38 rows (metabolites) and 2 columns:
#' \describe{
#'   \item{Metabolite}{Metabolite identifier}
#'   \item{Bin}{Bin}
#' }
#' @references Biais B, Benard C, Beauvoit B, Colombie S, Prodhomme D, Menard G, 
#' Bernillon S, Gehl B, Gautier H, Ballias P, et al. (2014), \emph{Remarkable 
#' reproducibility of enzyme activity profiles in tomato fruits grown under 
#' contrasting environments provides a roadmap for studies of fruit metabolism}.
#' Plant Physiol 164 (3), 1204-1221. doi: 10.1104/pp.113.231241.
#' @rdname nmr_identified_emeta
#' @name nmr_identified_emeta
NULL

#' NMR (Nuclear Magnetic Resonance) Sample Metadata (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 41 rows (samples) and 5 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier that matches column headers in pep_edata}
#'   \item{Condition}{Character string indicating either "Control" or "Shadow"}
#'   \item{Stage}{Character string denoting stage of the experiment, or time}
#'   \item{Time}{Numeric value for time in days at which the sample was
#'   harvested}
#'   \item{Concentration}{Sample concentration}
#' }
#' @references Biais B, Benard C, Beauvoit B, Colombie S, Prodhomme D, Menard G, 
#' Bernillon S, Gehl B, Gautier H, Ballias P, et al. (2014), \emph{Remarkable 
#' reproducibility of enzyme activity profiles in tomato fruits grown under 
#' contrasting environments provides a roadmap for studies of fruit metabolism}.
#' Plant Physiol 164 (3), 1204-1221. doi: 10.1104/pp.113.231241.
#' @rdname nmr_identified_fdata
#' @name nmr_identified_fdata
NULL

#' NMR (Nuclear Magnetic Resonance) Data Object of Class nmrData
#'
#' An S3 object of class nmrData (see \code{\link[pmartR]{as.nmrData}} for
#' details)
#'
#' @format A nmrData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where
#'   \eqn{p} is the number of metabolites observed and \eqn{n} is the number of
#'   samples. Each row corresponds to abundance data for each metabolite.}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   sample with one column giving the unique sample identifiers found in e_data
#'   column names and other columns providing qualitative and/or quantitative
#'   traits of each sample.}
#' \item{e_meta}{a data.frame with \eqn{n} rows. Each row corresponds to a
#'   metabolite, with one column giving the unique metabolite identifier that is
#'   found in e_data, and additional columns providing more information for each
#'   metabolite.} }
#' @references Biais B, Benard C, Beauvoit B, Colombie S, Prodhomme D, Menard G, 
#' Bernillon S, Gehl B, Gautier H, Ballias P, et al. (2014), \emph{Remarkable 
#' reproducibility of enzyme activity profiles in tomato fruits grown under 
#' contrasting environments provides a roadmap for studies of fruit metabolism}.
#' Plant Physiol 164 (3), 1204-1221. doi: 10.1104/pp.113.231241.
#' @rdname nmr_identified_object
#' @name nmr_identified_object
NULL

# Peptide data -----------------------------------------------------------------

#' Peptide-level Expression Data (e_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data).
#'
#' @format A data.frame with 21,329 rows (peptides) and 25 columns (peptide
#'   identifier and samples):
#' \describe{
#'   \item{Peptide}{Unique character string for peptide identifier}
#'   \item{Sample_*_Phenotype1_*}{Columns for samples belonging to the Phenotype
#'   1 group}
#'   \item{Sample_*_Phenotype2_*}{Columns for samples belonging to the Phenotype
#'   2 group}
#'   \item{Sample_*_Phenotype3_*}{Columns for samples belonging to the Phenotype
#'   3 group}
#' }
#' @rdname pep_edata
#' @name pep_edata
NULL

#' Peptide-level Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the peptide metadata (e.g.
#' mapping from peptide to proteins).
#'
#' @format A data.frame with 21,329 rows (peptides) and 3 columns (peptide
#'   identifiers and meta data):
#' \describe{
#'   \item{Peptide}{Peptide identifier that matches Peptide column in
#'   pep_edata}
#'   \item{ProteinList}{Character string containing one or more proteins,
#'   separated by semi-colons}
#'   \item{RazorProtein}{Character string specifying the single protein which is
#'   the best mapping for the peptide; this should be used for protein roll-up}
#' }
#' @rdname pep_emeta
#' @name pep_emeta
NULL

#' Peptide-level Sample Metadata (f_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 24 rows (samples) and 3 columns (sample identifier
#'   and associated information):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pep_edata)}
#'   \item{Phenotype}{Character string indicating Phenotype 1, 2, or 3}
#'   \item{SecondPhenotype}{Character string indicating A or B}
#'   \item{Characteristic}{Numeric value corresponding to a measured
#'   characteristic for each sample}
#' }
#' @rdname pep_fdata
#' @name pep_fdata
NULL

#' Peptide-level Data Object of Class pepData
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). An S3 object of class pepData (see
#' \code{\link[pmartR]{as.pepData}} for details)
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
#' @rdname pep_object
#' @name pep_object
NULL

# Peptide Data with Technical Replicates ---------------------------------------

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
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer
#'   LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD (2014),
#'   \emph{Bayesian proteoform modeling improves protein quantification of
#'   global proteomic measurements}. Molecular & cellular proteomics 13 (12),
#'   3639-46.
#' @rdname pep_techrep_edata
#' @name pep_techrep_edata
NULL

#' Peptide-level Technical Replicate Sample Metadata (f_data)
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
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer
#'   LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD (2014),
#'   \emph{Bayesian proteoform modeling improves protein quantification of
#'   global proteomic measurements}. Molecular & cellular proteomics 13 (12),
#'   3639-46.
#' @rdname pep_techrep_fdata
#' @name pep_techrep_fdata
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
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer
#'   LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD (2014),
#'   \emph{Bayesian proteoform modeling improves protein quantification of
#'   global proteomic measurements}. Molecular & cellular proteomics 13 (12),
#'   3639-46.
#' @rdname pep_techrep_object
#' @name pep_techrep_object
NULL

# Protein data -----------------------------------------------------------------

#' Protein-level Expression Data (e_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the log2 median-normalized
#' quantified mass spectra for 2,982 proteins from 24 samples.
#'
#' @format A data.frame with 2,982 rows (proteins) and 25 columns (protein
#'   identifier and samples):
#' \describe{
#'   \item{RazorProtein}{Protein identifier}
#'   \item{Sample_*_Phenotype1_*}{Columns for samples belonging to the Phenotype
#'   1 group}
#'   \item{Sample_*_Phenotype2_*}{Columns for samples belonging to the Phenotype
#'   2 group}
#'   \item{Sample_*_Phenotype3_*}{Columns for samples belonging to the Phenotype
#'   3 group}
#' }
#' @rdname pro_edata
#' @name pro_edata
NULL

#' Protein-level Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the protein metadata 
#' (resulting from the roll-up of peptides to proteins within pmartR).
#'
#' @format A data.frame with 2,982 rows (proteins) and 3 columns (protein
#'   identifier and meta data):
#' \describe{
#'   \item{RazorProtein}{Protein identifier that matches RazorProtein column in
#'   pep_edata}
#'   \item{peps_per_pro}{Integer count of number of peptides for each protein; 
#'   automatically calculated in protein_quant function in pmartR}
#'   \item{n_peps_used}{Integer count of the number of peptides used when
#'   rolling up to the protein level; automatically calculated in protein_quant
#'   function in pmartR}
#' }
#' @rdname pro_emeta
#' @name pro_emeta
NULL

#' Protein-level Sample Metadata (f_data)
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 24 rows (samples) and 3 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pro_edata)}
#'   \item{Phenotype}{Character string indicating Phenotype 1, 2, or 3}
#'   \item{SecondPhenotype}{Character string indicating A or B}
#'   \item{Characteristic}{Numeric value corresponding to a measured
#'   characteristic for each sample}
#' }
#' @rdname pro_fdata
#' @name pro_fdata
NULL

#' Protein-level Data Object of Class proData
#'
#' These data are part of Experiment 2 (metabolomics, unlabeled peptide and
#' associated protein data). An S3 object of class proData (see
#' \code{\link[pmartR]{as.proData}} for details)
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
#' @rdname pro_object
#' @name pro_object
NULL

# RNAseq data --------------------------------------------------------------

#' RNAseq Count Data (e_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). These data include samples from three different strains of
#' a virus.
#'
#' @format A data.frame with 49,568 rows (transcripts) and 46 columns
#'   (transcript identifier and samples) containing transcript counts:
#' \describe{
#'   \item{Transcript}{Transcript name}
#'   \item{StrainA*}{Columns for Strain A samples}
#'   \item{StrainB*}{Columns for Strain B samples}
#'   \item{StrainC*}{Columns for Strain C samples}
#' }
#' @rdname rnaseq_edata
#' @name rnaseq_edata
NULL

#' RNAseq Biomolecule Metadata (e_meta)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing biomolecule metadata.
#'
#' @format A data frame with 53,908 rows (transcript-by-gene combinations) and 2
#'   columns:
#' \describe{
#'   \item{Transcript}{Transcript name}
#'   \item{Gene}{Gene name}
#' }
#' @rdname rnaseq_emeta
#' @name rnaseq_emeta
NULL

#' RNAseq Sample Metadata (f_data)
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). A dataset containing the sample metadata.
#'
#' @format A data.frame with 45 rows (samples) and 4 columns (sample identifier
#'   and condition):
#' \describe{
#'   \item{SampleName}{Sample identifier (matches column headers in e_data)}
#'   \item{Virus}{Strain of virus for each sample}
#'   \item{Donor}{Which donor the sample originated from}
#'   \item{Replicate}{Biological replicate number}
#' }
#' @rdname rnaseq_fdata
#' @name rnaseq_fdata
NULL

#' RNAseq Data Object of Class seqData
#'
#' These data are part of Experiment 1 (isobaric labeled proteomics, lipidomics,
#' and RNAseq data). An S3 object of class seqData from a multi-omic study
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
