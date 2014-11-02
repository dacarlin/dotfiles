local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.cnr.berkeley.edu/"
              options(repos=r)})

#' Use the data editor for a CSV file
#' 
#' This function loads a CSV file, lets the user edit it in the native data
#' editor, then re-saves it, prompting the user for a new file name if desired.
#' 
fix.csv <- function(file, new.name=TRUE, sep=",", comment.char="") {
  tmpframe <- read.csv(file, sep=sep,quote="", colClasses="character",
                       stringsAsFactors=FALSE, comment.char="",
                       blank.lines.skip=FALSE, na.strings="")
  tmpframe <- edit(tmpframe)
  if(is.character(new.name)) {
    out.name <- new.name
  } else if(new.name <- TRUE) {
    out.name <- readline(prompt="Enter file name to save (Hit enter to use original):")
  } else {
    out.name <- file
  }
  if(out.name=="") out.name <- file
  write.table(tmpframe, file=out.name, append=FALSE, quote=FALSE, sep=sep,
              row.names=FALSE)
}
