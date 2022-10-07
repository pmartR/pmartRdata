#' pmartRdata
#'
#' The pmartRdata package contains a number of example datasets compatible with
#' the pmartR package. These include unlabeled and labeled peptide data,
#' proteomics data, GC-MS metabolomics, NMR metabolomics, LC-MS lipidomics (both
#' negative and positive ionization modes).
#' 
#'
#' @section Data types:
#'
#' This package contains accurate mass and time (AMT) tag mass spectrometry (MS)
#' data for an experiment investigating the human Calu-3 cell response to an
#' infectious clone of Middle Eastern Respiratory Syndrome coronavirus. Data at
#' the peptide (LS-MS/MS), metabolite (GC-MS), and lipid (LC-MS/MS) level are
#' available. Peptide-level data has also been quantified to the protein level
#' using Bayesian proteoform modeling (Webb-Robertson, 2014). Each dataset is
#' from the same experiment, where samples were either infected ("Infection"
#' group) or mock infected ("Mock" group). All samples were collected at the
#' same time point after infection (either the true infection or the mock
#' infection).
#'
#'
#' @section Data formats:
#'
#'   Each type of data is provided in two formats. The first format is an S3
#'   object class used by the R pacakge \code{pmartRqc}. Data available as S3
#'   objects 'pepData', 'proData', 'metabData', and 'lipidData' are created by
#'   \code{\link[pmartRqc]{as.pepData}}, \code{\link[pmartRqc]{as.proData}},
#'   \code{\link[pmartRqc]{as.metabData}}, or
#'   \code{\link[pmartRqc]{as.lipidData}}, respectively. The second format
#'   corresponds to the individual components of the S3 object classes,
#'   \code{e_data} - expression data, \code{f_data} - feature data (meta info
#'   about samples), and \code{e_meta} - expression meta data. See
#'   \code{pmartRqc} for more details.
#'
#'
#' @section Support:
#'
#'   Data generation was supported by the National Institutes of Health
#'   (NIH)/National Institute of Allergy and Infectious Diseases (NIAID) through
#'   grant U19 A1-106772 and computational work was supported by the
#'   NIH/National Cancer Institute through grant U01–1CA184783.  Data were
#'   collected and processed in the Environmental Molecular Sciences Laboratory
#'   (EMSL). EMSL is a national scientific user facility supported by the
#'   Department of Energy. All work was performed at PNNL, which is a
#'   multiprogram national laboratory operated by Battelle for the U.S.
#'   Department of Energy under contract DE-AC06-76RL01830.
#'
#' @references Webb-Robertson BJ, Matzke MM, Datta S, Payne SH, Kang J, Bramer
#'   LM, Nicora CD, Shukla AK, Metz TO, Rodland KD, Smith RD, Tardiff MF,
#'   McDermott JE, Pounds JG, Waters KM (2014), \emph{Bayesian proteoform
#'   modeling improves protein quantification of global proteomic measurements}.
#'   Molecular & Cellular Proteomics. doi: 10.1074/mcp.M113.030932.
#' @references Tilton, S. C.; Waters, K. M.; Karin, N. J.; Webb-Robertson, B.
#'   J.; Zangar, R. C.; Lee, K. M.; Bigelow, D. J.; Pounds, J. G.; Corley, R.
#'   A., \emph{Diet-induced obesity reprograms the inflammatory response of the
#'   murine lung to inhaled endotoxin}. Toxicol Appl Pharmacol 2013, 267 (2),
#'   137-48.
#'
#' @docType package
#' @name pmartRdata
#' @rdname pmartRdata
#'
#' @seealso \code{\link[pmartR]{as.proData}}
#' @seealso \code{\link[pmartR]{as.lipidData}}
#' @seealso \code{\link[pmartR]{as.metabData}}
#' @seealso \code{\link[pmartR]{as.pepData}}
NULL
