# custom theme so our plots look similar

best_theme <- function(){
  theme_minimal(base_size = 12, base_family = "Roboto") +
  theme(
  plot.title = element_text(family = "Montserrat", face = "bold", size = 14, hjust = 0.5),
  axis.title = element_text(face = "bold",color = "grey15"),
  panel.border = element_rect(color = "black", fill = NA, linewidth = 1),
  panel.grid.major = element_line(color = "grey85", linewidth = 0.5),
  panel.grid.minor = element_blank(),
  axis.ticks = element_line(color = "black", linewidth = 0.5),
  axis.text = element_text(color = "grey25", size = 11),
  plot.subtitle = element_text(size = 13, color = "grey20", hjust = 0.5), #ugly since we have centered title
  plot.caption  = element_text(size = 10, color = "grey40", hjust = 1)
      )
}