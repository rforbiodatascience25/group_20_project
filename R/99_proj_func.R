# custom theme so our plots look similar

best_theme <- function(){
  theme_minimal(base_size = 14, base_family = "Roboto")
  theme(
  plot.title = element_text(family = "Montserrat", face = "bold", size = 16, hjust = 0.5),
  axis.title = element_text(face = "bold")
      )
}