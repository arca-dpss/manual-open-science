#############################
####    Analysis Plan    ####
#############################

#----    settings    ----

library(targets)

# Load packages
library("tidyverse")
library("lme4")

# List all scripts in R/
script_list <- list.files("R", full.names = TRUE)
# Source scripts
invisible(sapply(script_list, source))


# Options
options(tidyverse.quiet = TRUE)

#----    Workflow    ----

list(
  # Get data
  tar_target(raw_data_file, "data/raw-data.csv", format = "file"),
  tar_target(my_data, get_my_data(raw_data_file)),

  # Descriptive statistics
  tar_target(plot_obs, get_plot_obs(data = my_data)),

  # Inferential statistics
  tar_target(lm_fit, get_lm_fit(data = my_data)),

  # Report
  tarchetypes::tar_render(report, "documents/report.Rmd")
)

#----
