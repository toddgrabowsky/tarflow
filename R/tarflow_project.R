##' Setup a tarflow project
##'
##' Creates files and directories according to the tarflow template.
##'
##' @title tarflow_project
##' @param path the path for the new project.
##' @param add_data flag for whether to add a data folder.
##' @return Nothing. Modifies your workspace.
##' @export
tarflow_project <- function(path, add_data){

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # create directory structure
  dir.create(file.path(path, "R"))
  if (add_data) dir.create(file.path(path, "data"))

  # add template files
  file.copy(from = system.file("templates/_targets.R", package = "tarflow"), to = path)
  file.copy(from = system.file("templates/functions.R", package = "tarflow"), to = file.path(path, "R"))
}
