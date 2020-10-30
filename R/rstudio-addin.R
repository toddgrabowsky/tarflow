window_around_cursor <- function(context) {
  cursor_pos <- context$selection[[1]]$range$start
  cursor_line <- cursor_pos[1]
  cursor_column <- cursor_pos[2]

  window_size <- getOption("fnmate_window") %||% 20
  start_line <- max(cursor_line - window_size, 1)
  end_line <- min(cursor_line + window_size, length(context$contents))
  text_window <-
    context$contents[seq(start_line, end_line)] %>%
    paste0(collapse = "\n")

  cursor_line <- cursor_line - start_line + 1
  index <- row_col_to_index(text_window, cursor_line, cursor_column)

  list(text = text_window, index = index)
}

#' Generate a function definition from a function call in RStudio and add to R/functions.R
#'
#' @title rs_tar_add_fn
#' @param context from the rstudioapi
#'
#' @return nothing.
#' @export
rs_tar_add_fn <- function(context = rstudioapi::getActiveDocumentContext()) {
  if (identical(context$id, "#console")) {
    message("fnmate does not work on console text.")
    return(invisible(NULL))
  }

  cursor_context <- window_around_cursor(context)

  tar_add_fn.R(cursor_context$text, cursor_context$index)
}
