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

# function for saving and showing plot at once
save_and_show <- function(plot_name, save_location = "../results/figures/", filetype = ".svg"){
  curr_plot = get_last_plot()
  ggsave(str_c(save_location, plot_name, filetype), curr_plot)
  print(curr_plot) #cursed
}

save_and_show_table <- function(input_table, table_name, save_location = "../results/csv_tables/", filetype = ".csv"){
  
  if (!dir.exists(save_location)) { # check that it exists first
    dir.create(save_location, recursive = TRUE)}
  
  readr::write_csv(input_table, str_c(save_location, table_name, filetype))
  print(input_table)
}

# function to calculate KM
km_fit <- function(data, time_col, event_col, group_col) {
  split(data, data[[group_col]]) |> 
    map_dfr(function(df) {
      
      # time order
      df <- df[order(df[[time_col]]), ]
      
      # make table
      tab <- table(df[[time_col]], df[[event_col]])
      
      # get data
      times <- as.numeric(rownames(tab))
      
      # get event
      n_event <- if ("1" %in% colnames(tab)) tab[, "1"] else 0
      
      # get sum
      n_drop <- rowSums(tab)
      
      # cal risk
      n_risk <- rev(cumsum(rev(n_drop)))
      
      # cal surv_prob
      surv_prob <- cumprod(1 - n_event / n_risk)
      
      # return results
      tibble(
        group   = df[[group_col]][1],
        time    = times,
        n_risk  = n_risk,
        n_event = n_event,
        surv    = surv_prob
      )
    })
}