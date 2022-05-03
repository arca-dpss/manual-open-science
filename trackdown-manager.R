
#----    README    ----
trackdown::update_file("README.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("README.Rmd", gpath = "trackdown/ARCA")
update_readme()


#----    index    ----
trackdown::update_file("index.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("index.Rmd", gpath = "trackdown/ARCA")

#----    01-intro    ----
trackdown::update_file("chapters/01-intro.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/01-intro.Rmd", gpath = "trackdown/ARCA")

#----    02-osf    ----
trackdown::update_file("chapters/02-osf.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/02-osf.Rmd", gpath = "trackdown/ARCA")

#----    03-projects    ----
trackdown::update_file("chapters/03-projects.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/03-projects.Rmd", gpath = "trackdown/ARCA")

#----    04-data    ----
trackdown::update_file("chapters/04-data.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/04-data.Rmd", gpath = "trackdown/ARCA")

#----    05-data    ----
trackdown::update_file("chapters/05-coding.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/05-coding.Rmd", gpath = "trackdown/ARCA")

#----    06-terminal    ----
trackdown::update_file("chapters/06-terminal.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/06-terminal.Rmd", gpath = "trackdown/ARCA")

#----    07-git    ----
trackdown::update_file("chapters/07-git.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/06-terminal.Rmd", gpath = "trackdown/ARCA")

#----    08-github    ----
trackdown::update_file("chapters/08-github.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/08-github.Rmd", gpath = "trackdown/ARCA")

#----    09-github    ----
trackdown::update_file("chapters/09-workflow.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/09-workflow.Rmd", gpath = "trackdown/ARCA")

#----    10-dynamic-documents    ----
trackdown::update_file("chapters/10-dynamic-documents.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/10-dynamic-documents.Rmd", gpath = "trackdown/ARCA")


#----    11-requirements    ----
trackdown::update_file("chapters/11-requirements.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/11-requirements.Rmd", gpath = "trackdown/ARCA")

#----    12-docker    ----
trackdown::update_file("chapters/12-docker.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/12-docker.Rmd", gpath = "trackdown/ARCA")

#----    13-docker    ----
trackdown::update_file("chapters/13-rocker.Rmd", gpath = "trackdown/ARCA")
trackdown::download_file("chapters/13-rocker.Rmd", gpath = "trackdown/ARCA")

#----    make_book    ----
make_my_book()

bookdown::preview_chapter("chapters/06-terminal.Rmd", 'bookdown::pdf_book')
