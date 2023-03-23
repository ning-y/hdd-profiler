#! /usr/bin/env Rscript

# https://stackoverflow.com/a/30306616/6910451
script_dir <- getSrcDirectory(function(x) {x})
template_fp <- fs::path_join(c(script_dir, "template.Rmd"))

path_block <- commandArgs(trailingOnly=TRUE)[1]
path_out <- commandArgs(trailingOnly=TRUE)[2]

rmarkdown::render(
  template_fp, params=list(path_block=path_block), output_file=path_out)
