create_rmd <- function(file, parent_rmd = NULL, child_folder, theme, path) {

  if(!is.null(parent_rmd)) { out <- readLines(parent_rmd)
  } else { out <- ""}

  recipe <- read.csv(file, stringsAsFactors = FALSE)

  for(i in 1:nrow(recipe)) {

    out <- paste0(out, recipe[i, "before"], "\n")
    
    new_path <- paste(child_folder, recipe[i, "md_folder"], paste0(theme, ".Rmd"), sep = "/")
    
    if(!is.na(recipe[i, "md_folder"])) {
       new_chunk <- add_md(new_path)
       out <- paste0(out, new_chunk)
    }
    
    out <- paste0(out, recipe[i, "after"], "\n")

  }

  writeLines(out, path)

}
