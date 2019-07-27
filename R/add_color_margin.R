knitr::knit_hooks$set(color = function(before, options, envir) {
    if (!is.null(add_mod) {
        if (before) {
            ## code to be run before a chunk
            return(paste0('<div style="padding: 18px; background-color: ', options$color, ';">'))
        } else {
            ## code to be run after a chunk
            return("</div>")
        }
    }
})
