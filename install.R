install.packages("remotes")
remotes::install_github("sydney-informatics-hub/dataharvester", ref = "develop")
reticulate::install_miniconda()
dataharvester::initialise_harvester(earthengine = FALSE)
