##' Setup a tarflow project
##'
##' Creates files and directories according to the tarflow template.
##'
##' @title tarflow_project
##' @return Nothing. Modifies your workspace.
##' @export
tarflow_project <- function(){
  usethis::use_directory("R")
  usethis::use_directory("data")
  usethis::use_template("_targets.R", package = "tarflow")
  usethis::use_template("functions.R", save_as = "/R/functions.R", package = "tarflow")
}
