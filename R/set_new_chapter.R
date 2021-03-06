#' Insert dashes from courser position up to 80 characters
#'
#' @return Hyphens inside RStudio
#' @examples ## NOT RUN
set_new_chapter <- function(){
  nchars <- 81

  # grab current document informations
  context <- rstudioapi::getActiveDocumentContext()
  # extract courser position in document
  context_col <- context$selection[[1]]$range$end["column"]

  # if line has less than 81 characters, insert hyphens at the current line
  # up to 80 characters
  if (nchars > context_col) {
    rstudioapi::insertText(strrep("-", nchars - context_col))
  }
}
