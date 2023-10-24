# Create an empty list to store the frequency tables for each variable
frequency_tables_base <- list()

# List of variables
variables <- c("cigs_smoked", "curr_smoke", "last_smoked", "cigs_day", "wake_smoke", "time_vape", "curr_vape", "cutting_down")

# Loop through the variables and create pie charts
library(ggplot2)

# Create a directory to save the pie chart images (adjust the path as needed)
dir.create("pie_charts_base", showWarnings = FALSE)

# Loop through the variables and create pie charts
for (variable in variables) {
  freq_table <- as.data.frame(table(base[[variable]))
  pie_chart <- ggplot(data = freq_table, aes(x = "", y = Freq, fill = Var1)) +
    geom_bar(stat = "identity") +
    coord_polar("y") +
    labs(title = variable) +
    theme_void()
  
  # Save the pie chart as an image
  ggsave(paste0("pie_charts_base/", variable, "_pie_chart.png"), plot = pie_chart, width = 4, height = 4)
}

