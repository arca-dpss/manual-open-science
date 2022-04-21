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

#----    package_logo    ----#

package_logo <- function(img, format = "html", tex_width = .25, h_adjust = -15){

  if(format == "html"){
    res <- glue::glue('<div class="packages-logo-box"><img src="{img}"></div>')
  } else {
    res <- glue::glue('
\\begin{wrapfigure}{r}{^tex_width^\\textwidth}
  \\vspace*{^h_adjust^pt}
  \\begin{center}
    \\includegraphics[width=^tex_width-.02^\\textwidth]{^img^}
  \\end{center}
  \\vspace{^h_adjust^pt}
\\end{wrapfigure}',.open = "^", .close = "^")

  }
  res
}

