#' Lipidomics Expression Data (e_data)
#'
#' A dataset containing the quantified mass spectra for 146 lipids collected on a Thermo LTQ-Orbitrap Velos Mass Spectrometer (Thermo Fisher Corporation, San Jose, CA, USA).
#'
#' @format A data.frame with 146 rows (lipids) and 12 columns (lipid identifier and samples):
#' \describe{
#'   \item{LipidCommonName}{Lipid common name}
#'   \item{Mock*}{Three columns of mock infected samples}
#'   \item{Infection*}{Eight columns of infected samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079154.
#' @rdname lipid_edata
#' @name lipid_edata
NULL


#' Lipidomics Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 11 rows (samples) and 2 columns (sample identifier and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in lipid_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079154.
#' @rdname lipid_fdata
#' @name lipid_fdata
NULL


#' Lipidomics Data Object of Class lipidData
#'
#' An S3 object of class lipidData
#'
#' @format A lipidData object (see \code{\link[pmartRqc]{as.lipidData}} for details)
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where \eqn{p} is the number of lipids observed and \eqn{n} is the number of samples. Each row corresponds to data for each lipid}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a sample with one column giving the unique sample identifiers found in e_data column names and other columns providing qualitative and/or quantitative traits of each sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079154.
#' @rdname lipid_object
#' @name lipid_object
NULL


#-------------------------------------------------------------------------------------#

#' Metabolomics Expression Data (e_data)
#'
#' A dataset containing the quantified mass spectra for 80 metabolites collected on an Agilent GC 7890A coupled with MSD 5975C Mass Spectrometer (Agilent Technologies, Santa Clara, CA, USA).
#'
#' @format A data.frame with 80 rows (metabolites) and 13 columns (metabolite identifier and samples):
#' \describe{
#'   \item{Metabolite}{Metabolite name}
#'   \item{Mock*}{Three columns of mock infected samples}
#'   \item{Infection*}{Nine columns of infected samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079153.
#' @rdname metab_edata
#' @name metab_edata
NULL


#' Metabolomics Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in lipid_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079153.
#' @rdname metab_fdata
#' @name metab_fdata
NULL


#' Metabolomics Data Object of Class metabData
#'
#' An S3 object of class metabData (see \code{\link[pmartRqc]{as.metabData}} for details)
#'
#' @format A metabData object:
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where \eqn{p} is the number of metabolites observed and \eqn{n} is the number of samples. Each row corresponds to data for each metabolite}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a sample with one column giving the unique sample identifiers found in e_data column names and other columns providing qualitative and/or quantitative traits of each sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079153.
#' @rdname metab_object
#' @name metab_object
NULL

#----------------------------------------------------------------------------------------------#

#' Peptide-level Expression Data (e_data)
#'
#' A dataset containing the quantified mass spectra for 17,407 peptides collected on a Thermo LTQ-Orbitrap Velos Mass Spectrometer (Thermo Fisher Corporation, San Jose, CA, USA).
#'
#' @format A data.frame with 17,407 rows (peptides) and 13 columns (peptide identifier and samples):
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier}
#'   \item{Mock*}{Three columns of mock samples}
#'   \item{Infection*}{Eight columns of infection samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079152.
#' @rdname pep_edata
#' @name pep_edata
NULL


#' Peptide-level Meta Data (e_meta)
#'
#' A dataset containing the peptide metadata (e.g. mapping from peptide to proteins).
#'
#' @format A data.frame with 17,407 rows (peptides) and 4 columns (peptide identifiers and meta data):
#' \describe{
#'   \item{Mass_Tag_ID}{Peptide mass tag identifier (matches Mass_Tag_ID in pep_edata)}
#'   \item{Protein}{Protein identifier}
#'   \item{Ref_ID}{Protein reference identifier number}
#'   \item{Peptide_Sequence}{Peptide sequence}
#' }
#' @source  See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079152.
#' @rdname pep_emeta
#' @name pep_emeta
NULL


#' Peptide-level Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier and condition):
#' \describe{
#'   \item{SampleID}{Sample identifier (matches column headers in pep_edata)}
#'   \item{Condition}{Character string indicating either "Infection" or "Mock"}
#' }
#' @source  See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079152.
#' @rdname pep_fdata
#' @name pep_fdata
NULL


#' Peptide-level Data Object of Class pepData
#'
#' An S3 object of class pepData (see \code{\link[pmartRqc]{as.pepData}} for details)
#'
#' @format A pepData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where \eqn{p} is the number of peptides observed and \eqn{n} is the number of samples. Each row corresponds to data for each peptide}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a sample with one column giving the unique sample identifiers found in e_data column names and other columns providing qualitative and/or quantitative traits of each sample.}
#'   \item{e_meta}{an optional data.frame with \eqn{p} rows. Each row corresponds to a peptide with one column giving peptide names (must be named the same as the column in \code{e_data}) and other columns giving meta information (e.g. mappings of peptides to proteins).}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers. Data is also available on MassIVE (massive.ucsd.edu) with dataset id MSV000079152.
#' @rdname pep_object
#' @name pep_object
NULL


#----------------------------------------------------------------------------------------------#

#' Protein-level Expression Data (e_data)
#'
#' A dataset containing the log2 median-normalized quantified mass spectra for 2,731 proteins (quantified from \code{\link{pep_edata}}) using Bayesian proteoform modeling (Webb-Robertson, 2014).
#'
#' @format A data.frame with 2,731 rows (proteins) and 12 columns (protein identifier and samples):
#' \describe{
#'   \item{Reference}{Reference protein name}
#'   \item{Mock*}{Three columns of mock samples}
#'   \item{Infection*}{Eight columns of infection samples}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD, Tardiff MF, McDermott JE, Pounds JG, Waters KM (2014), \emph{Bayesian proteoform modeling improves protein quantification of global proteomic measurements}. Molecular & Cellular Proteomics. doi: 10.1074/mcp.M113.030932.
#' @rdname pro_edata
#' @name pro_edata
NULL


#' Protein-level Sample Feature Data (f_data)
#'
#' A dataset containing the sample metadata.
#'
#' @format A data.frame with 12 rows (samples) and 2 columns (sample identifier and condition):
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
#' An S3 object of class proData (see \code{\link[pmartRqc]{as.proData}} for details)
#'
#' @format A proData object
#' \describe{
#'   \item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where \eqn{p} is the number of proteins observed and \eqn{n} is the number of samples. Each row corresponds to log2 median-normalized data for each protein.}
#'   \item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a sample with one column giving the unique sample identifiers found in e_data column names and other columns providing qualitative and/or quantitative traits of each sample.}
#'   \item{e_meta}{NULL}
#' }
#' @source See details of \code{\link{pmartRdata}} for relevant grant numbers.
#' @rdname pro_object
#' @name pro_object
NULL


