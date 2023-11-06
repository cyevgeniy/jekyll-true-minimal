local({
  # fall back on "/" if baseurl is not specified
  baseurl = blogdown:::get_config2("baseurl", default = "/")
  knitr::opts_knit$set(base.url = baseurl)
  knitr::render_jekyll()  # set output hooks
  
  # input/output filenames as two arguments to Rscript
  a = commandArgs(TRUE)
  d = gsub("^_|[.][a-zA-Z]+$", "", a[1])
  knitr::opts_chunk$set(
    fig.path   = sprintf("figure/%s/", d),
    cache.path = sprintf("cache/%s/", d)
  )
  knitr::knit(
    a[1], a[2], quiet = TRUE, encoding = "UTF-8",
    envir = globalenv()
  )
})