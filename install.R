install.packages("remotes")
remotes::install_github("sydney-informatics-hub/dataharvester",
  ref = "feature/binder"
)
reticulate::install_miniconda()
reticulate::conda_install(envname = "r-reticulate", packages = "python==3.9")
