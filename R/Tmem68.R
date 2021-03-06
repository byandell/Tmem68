#' Liver protein expression dataset
#'
#' Data for mediation analysis of liver protein expression.
#' Dataset is a list of objects for target, mediator, annotation, covar (covariates),
#' qtl.geno.
#' There are 192 diversity outbred mice and 8050 genes with measured mRNA expression.
#' The 'target' is the level of expression of gene 'Tmem68'.
#' The mRNA transcript expression is measured for 8050 genes in 'mediator'.
#' The 'annotation' has positional information for each of the genes.
#' The 'covar' has Sex and Diet information for the 192 mice.
#' The 'driver' object has the driver as allele probabilities for the 8 founder genotypes for the 192 mice
#' at the location of the Tmem68 gene.
#'
#' @docType data
#'
#' @usage data(Tmem68)
#'
#' @format An object of class \code{"cross"}; see \code{\link[qtl]{read.cross}}.
#'
#' @keywords datasets
#'
#' @references Chick et al. (2016) 
#' (\href{https://dx.org/10.1038/nature18270}{Nature 534: 500-505}) 
#'
#' @source \href{https://github.com/churchill-lab/intermediate}{Churchill GitHub}
#'
#' @examples
#' data(Tmem68)
#' str(Tmem68)
"Tmem68"