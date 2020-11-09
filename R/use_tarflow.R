##' Setup a tarflow project
##'
##' Creates files and directories according to the tarflow template.
##'
##' @export
##' @title use_tarflow
##' @return Nothing. Modifies your workspace.
##' @param path where to initialize the tarflow project (NOTE: this will be relative to your Rproj home directory)
##' @param data whether or not to include a 'data' directory
use_tarflow <- function(path = ".", data = TRUE) {
  usethis::use_directory(file.path(path, "R"))
  if (data) usethis::use_directory(file.path(path, "data"))
  usethis::use_template("_targets.R", save_as = file.path(path, "_targets.R"), package = "tarflow")
  usethis::use_template("functions.R", save_as = file.path(path,"R", "functions.R"), package = "tarflow")
}
