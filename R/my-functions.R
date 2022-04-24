#============================#
#====    My Functions    ====#
#============================#

#----    get_my_data    ----

get_my_data <- function(file){
  res <- read.csv(file = file)

  return(res)
}


#----    get_plot_obs    ----

get_plot_obs <- function(data){

  ggplot(data, aes(x = x, y = y, fill = x)) +
    ggdist::stat_halfeye(adjust = .5, width = .5, .width = 0, alpha = .8,
                         justification = -.15, point_colour = NA) +
    geom_boxplot( width = .25, position = position_nudge(x = -.15),
                  outlier.shape = NA, alpha = .8) +
    geom_point(size = 1.3, alpha = .7,
               position = position_jitter(seed = 1, width = .1)) +
    theme_bw() +
    theme(legend.position = "top",
          legend.background = element_rect(fill = "transparent"))
}


#----    get_lm_fit    ----

get_lm_fit <- function(data){

  res <- lm(y ~ x, data = data)

  return(res)
}
#-----
