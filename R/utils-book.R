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

package_logo <- function(img, format = "html", css_width = 200, tex_width = .25, h_adjust = -15){

  if(format == "html"){
    res <- glue::glue('<div class="packages-logo-box", style="width: {css_width}px;"><img src="{img}"></div>')
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

#----    latex_logo    ----#

latex_logo <- function(format = "html"){
  if(format == "html"){
    res <- glue::glue('<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>')
  } else {
    res <- glue::glue('\\LaTeX ')
  }
  res
}
