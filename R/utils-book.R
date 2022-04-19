#==========================#
#====    Utils Book    ====#
#==========================#

#----    inline_image    ----

inline_image <- function(img, width = "2em", format = "html"){

  if(format == "html"){
    res <- glue::glue('<img style="width:{width}" src="{img}" class="inline-img">')
  } else {
    res <- glue::glue('$\\begin{array}{l}\\includegraphics[width=^width^]{^img^}\\end{array}$',
                      .open = "^", .close = "^")

  }
  res
}

#----    break_line    ----

break_line <- function(format = "html"){

  if(format == "html"){
    res <- "<br>"
  } else {
    res <- "\\newline"
  }
  res
}

