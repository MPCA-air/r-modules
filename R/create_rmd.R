create_rmd <- function(file, child_folder, theme) {

  recipe <- read.csv(file, stringsAsFactors = FALSE)

  out <- ""
  
  for(md_file in unique(recipe$output_file) {
    
    temp <- subset(recipe, ouput_file == md_file)
  
    for(i in 1:nrow(temp)) {

      out <- paste0(out, temp[i, "before"], "\n")

      new_path <- paste(child_folder, temp[i, "md_folder"], paste0(theme, ".Rmd"), sep = "/")

      if(!is.na(temp[i, "md_folder"])) {
         new_chunk <- add_md(new_path)
         out <- paste0(out, new_chunk)
      }

      out <- paste0(out, temp[i, "after"], "\n")

    }

    writeLines(out, paste0(gsub("[.Rmd]", "", md_file), ".Rmd")))
    
   }

}
