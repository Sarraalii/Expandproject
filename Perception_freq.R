# Load required packages
library(ggplot2)

# Define variable names for each dataset
perception_variables_base <- c("Attn", "Inform", "Meaning", "Compel", "Worth", "Seeself", "Glance")
perception_variables_fup1 <- c("Attn_1", "Inform_1", "Meaning_1", "Compel_1", "Worth_1", "Seeself_1", "Glance_1")
perception_variables_fup2 <- c("Attn_2", "Inform_2", "Meaning_2", "Compel_2", "Worth_2", "Seeself_2", "Glance_2")

# Initialize an empty list to store the data frames for each variable
frequency_tables <- list()

# Loop through perception variables
for (i in 1:length(perception_variables_base)) {
  variable_base <- perception_variables_base[i]
  variable_fup1 <- perception_variables_fup1[i]
  variable_fup2 <- perception_variables_fup2[i]
  
  # Create a data frame with frequencies for each follow-up time point
  freq_data <- data.frame(
    FollowUp = c("Follow-Up 1", "Follow-Up 2"),
    Frequency = c(
      sum(!is.na(data$fup1[, variable_fup1])),
      sum(!is.na(data$fup2[, variable_fup2]))
    )
  )
  
  # Store the data frame in the list
  frequency_tables[[variable_base]] <- freq_data
}

# Create line charts for each perception variable
for (variable in perception_variables_base) {
  freq_data <- frequency_tables[[variable]]
  
  # Create a line chart
  p <- ggplot(freq_data, aes(x = FollowUp, y = Frequency, group = 1)) +
    geom_line() +
    geom_point() +
    labs(title = paste("Perception of", variable), x = "Follow-Up Time", y = "Frequency") +
    theme_minimal()
  
  # Print the chart
  print(p)
}
