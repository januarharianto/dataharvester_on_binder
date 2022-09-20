install.packages("remotes")
install.packages("startup")
remotes::install_github("sydney-informatics-hub/dataharvester",
  ref = "feature/binder"
)
reticulate::install_miniconda()
reticulate::conda_remove("r-reticulate")
reticulate::conda_create(envname = "r-reticulate", python_version = "3.9")
