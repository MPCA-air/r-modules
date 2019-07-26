add_md <- function(file) {

  out <- paste("```{r, results='asis', echo=F}",
               paste0("cat(readLines(", file, "))"),
               "```\n", sep = "\n\n")
  cat(out)
              
  return(out)
}
