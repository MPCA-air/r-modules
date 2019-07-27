knitr::knit_hooks$set(color = function(before, options, envir) {
    
        if (before) {
            ## code to be run before a chunk
            if (!is.null(add_mod)) return(paste0('<div style="padding: 18px; background-color: ', options$color, ';">'))
        } else {
            ## code to be run after a chunk
            if (!is.null(add_mod)) return("</div>")
        }
})
