add_md <- function(file) {

  out <- ""
  
  out <- tryCatch(paste0(out, "cat(readLines(", file, "))"), error = function(e) NA)
  
  if(!is.na(out)) {
    out <- paste("```{r goodmorns, results='asis', echo=F}",
                 paste0("cat(readLines(", file, "))"),
                 "```\n", sep = "\n\n")
    cat(out)
  }               
  return(out)
}
