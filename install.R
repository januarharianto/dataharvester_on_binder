install.packages("remotes")
install.packages("startup")
remotes::install_github("sydney-informatics-hub/dataharvester", ref = "develop")
reticulate::install_miniconda()
reticulate::conda_remove("r-reticulate")
reticulate::conda_create(envname = "r-reticulate", python_version = "3.9")
reticulate::conda_install(
  envname = "r-reticulate",
  packages = c(
    "ipykernel",
    "earthengine-api",
    "google-cloud-sdk",
    "geopandas",
    "netcdf4",
    "numba",
    "owslib",
    "rioxarray"
  )
)
reticulate::conda_install(
  envname = "dataharvester",
  packages = c(
    "eemont",
    "geemap",
    "geedim",
    "wxee",
    "alive-progress",
    "termcolor"
  ),
  forge = FALSE,
  pip = TRUE
)