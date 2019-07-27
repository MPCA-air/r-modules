
knitr::knit_hooks$set(color = function(before, options, envir) {
    if (before) {
        ## code to be run before a chunk
        out <- ""
        if (!is.null(options$color)) out <- paste0('<div style="padding: 12px; background-color: ', options$color, ';">\n')
        mod_url <- "https://raw.githubusercontent.com/MPCA-air/r-modules/master/modules/"
        out <- paste0(out, readLines(paste0(mod_url, "_whyr/itep.Rmd")))
        return(paste(out, collapse = "\n"))
    } else {
        ## code to be run after a chunk
        if (!is.null(options$color)) return("</div>")
    }
})
