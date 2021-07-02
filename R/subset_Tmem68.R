#' Extract subset chromosomes from Tmem68
#' 
#' @param object list object with mediator, annotation, and other elements
#' @param chr chromosome(s) to select (all if \code{NULL})
#' 
#' @export
subset_Tmem68 <- function(object, chr = NULL) {
  if(is.null(chr))
    return(object)
  

  id <- which(object$annotation$chr %in% chr)
  if(length(id)) {
    # Subset on id's corresponding to selected chr.
    object$mediator <- object$mediator[,id]
    object$annotation <- object$annotation[id,]
  }
  object
}

#' Transform Tmem68 for use in mediation.
#' 
#' This routine was done once on original data.
#' 
#' @param Tmem68 list object with mediator, annotation, and other elements
#' 
#' @example
#' \dontrun{
#' # Download file from Churchill Lab and load
#' tmpfile <- tempfile()
#' file <- paste0("https://raw.githubusercontent.com/churchill-lab/intermediate/master/data/Tmem68.rda")
#' download.file(file, tmpfile)
#' load(tmpfile)
#' unlink(tmpfile)
#' 
#' # Transform file.
#' Tmem68 <- Tmem68:::Tmem68_transform(Tmem68)
#' # Save file.
#' save(Tmem68, "Tmem68.rda")
#' # Resave file in more compressed format.
#' tools::resaveRdaFiles("Tmem68.rda")
#' }
#' 
#' @export
Tmem68_transform <- function(Tmem68) {
  
  # Fix column names of covariates.
  colnames(Tmem68$covar)[1:2] <- c("Intercept", "SexM")
  
  # Reconstruct 8-allele genotype probabilities.
  m <- match("qtl.geno", names(Tmem68))
  if(!is.na(m)) {
    names(Tmem68)[m] <- "driver"
  }
  if(ncol(Tmem68$driver) == 7) {
    Tmem68$driver <- cbind(A = 1 - apply(Tmem68$driver, 1, sum), Tmem68$driver)
  }
  
  Tmem68
}