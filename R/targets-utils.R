#=============================#
#====    Targets Utils    ====#
#=============================#

#----    load_glob_env    ----

load_glob_env <- function(..., store = targets::tar_config_get("store")){
  targets::tar_load(..., envir = globalenv(), store = store)
}

#----    tar_load_all    ----

tar_load_all <- function(store = targets::tar_config_get("store")){
  targets <- c("my_data", "lm_fit", "plot_obs")

  # load
  sapply(targets, load_glob_env, store = store)

  return(cat("Tartgets loaded!\n"))
}
#----
