#=====================#
#====    Utils    ====#
#=====================#

#----    make_package_bib    ----

make_package_bib <- function(){

  packages <- c(
    'bookdown',
    'knitr',
    'rmarkdown'
  )


  knitr::write_bib(c(
    .packages(), packages
  ), 'assets/bib/packages.bib')

}

#----    make_my_book    ----

#' Make My Bookdown
#'
#' Render Bookdown html and pdf. It allows setting the correct working directory
#' to build the documents.
#'
#' @param subdir string indicating the path to the bookdown main file. It is
#'   used as working directory.
#'
#' @return builded bookdown is returned in "docs/" folder
#'

make_my_book <- function(subdir = ".", output_dir = "docs") {

  origwd <- setwd(file.path(subdir))
  on.exit(setwd(origwd))
  bookdown::render_book(input='_bookdown.yml', config_file='_bookdown.yml',
                        output_format = "bookdown::gitbook",
                        output_dir = output_dir,
                        params = list(format = "html"))
  bookdown::render_book(input='_bookdown.yml', config_file='_bookdown.yml',
                        output_format = "bookdown::pdf_book",
                        output_dir = output_dir,
                        params = list(format = "latex"))
}

#----    updater_readme    ----

update_readme <- function(){
  rmarkdown::render("README.Rmd", output_format = "github_document")
}

#----

