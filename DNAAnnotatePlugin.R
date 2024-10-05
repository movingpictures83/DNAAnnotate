library("derfinder")
library("derfinderData")
library("GenomicRanges")
library("knitr")


input <- function(inputfile) {
	fullRegions <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
####################################################################################
# ANNOTATE REGION
## Find overlaps between regions and summarized genomic annotation
annoRegs <- annotateRegions(fullRegions, genomicState$fullGenome)
####################################################################################
write.csv(annoRegs$annotationList, outputfile)
}
