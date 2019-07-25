create_rmd <- function(file, parent_rmd, child_folder, theme, path) {

  out <- readLines(parent_rmd)

  recipe <- read.csv(file, stringsAsFactors = FALSE)

  for(i in 1:nrow(recipe)) {

    new_path <- paste(child_folder, recipe[i, "md_folder"], paste0(theme, ".Rmd"), sep = "/")

    new_chunk <- add_md(new_path)

    out <- paste0(out, new_chunk)

  }

  writeLines(out, path)

}
