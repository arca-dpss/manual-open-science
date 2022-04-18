
#----    README    ----
trackdown::upload_file("README.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("README.Rmd", gpath = "trackdown/ARCA")
update_readme()


#----    Index    ----
trackdown::upload_file("index.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("index.Rmd", gpath = "trackdown/ARCA")

#----    01-Intro    ----
trackdown::update_file("chapters/01-intro.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/01-intro.Rmd", gpath = "trackdown/ARCA")
