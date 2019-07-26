knitr::knit_hooks$set(color = function(before, options, envir) {
    if (before) {
        ## code to be run before a chunk
        return(paste0('<div style="margin-left: -18px; padding-left: 26px; border-left: solid 8px ', options$color, ';>'))
    } else {
        ## code to be run after a chunk
        return("</div>")
    }
})
