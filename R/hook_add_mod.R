
knitr::knit_hooks$set(color = function(before, options, envir) {
    
    mod_url <- "https://raw.githubusercontent.com/MPCA-air/r-modules/master/modules/"
    
    if (before) {
        ## code to be run before a chunk
        out <- ""
        if (!is.null(options$color)) out <- paste0('<div style="padding: 16px; background-color: ', options$color, ';">\n\n')
        out <- paste0(out, paste0(readLines(paste0(mod_url, "_whyr/itep.Rmd")), collapse = "\n"))
        return(out)
    } else {
        ## code to be run after a chunk
        if (!is.null(options$color)) return("</div><br>")
        else return("<br>")
    }
})
