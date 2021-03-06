#' Read BLAST tabular output
#'
#' Reads the BLAST tabular format generated by -outfmt 6 into an R tibble with
#' named columns.
#'
#' Column names correspond to:
#' qseqid: query (e.g., gene) sequence id
#' sseqid: subject (e.g., reference genome) sequence id
#' pident: percentage of identical matches
#' length: alignment length
#' mismatch: number of mismatches
#' gapopen: number of gap openings
#' qstart: start of alignment in query
#' qend: end of alignment in query
#' sstart: start of alignment in subject
#' send: end of alignment in subject
#' evalue: expect value
#' bitscore: bit score
#'
#' @param path string. Path to BLAST tab file.
#'
#' @return tibble.
#' @export
#' @importFrom readr read_tsv
#' @examples
read_blast_tab <- function(path){
  blast <- read_tsv(path,
                    col_names = c("qseqid", "sseqid", "pident", "length",
                                  "mismatch", "gapopen", "qstart", "qend", "sstart", "send",
                                  "evalue", "bitscore"))
}
