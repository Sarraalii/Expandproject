library(ggplot2)

# Extract the "cigs_smoked" variable from each dataset
cigs_smoked_base <- data.frame(FollowUp = "Baseline", Response = base$cigs_smoked)
cigs_smoked_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$cigs_smoked_1)
cigs_smoked_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$cigs_smoked_2)

# Combine and remove NA values
combined_data_cigs <- rbind(cigs_smoked_base, cigs_smoked_fup1, cigs_smoked_fup2)
combined_data_cigs <- combined_data_cigs[!is.na(combined_data_cigs$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF", "#FF1493", "#8B4513", "#00BFFF", "#D3D3D3")
category_labels <- c("Never smoked", "1 to 10 cigarettes", "11 to 19 cigarettes", "20 to 25 cigarettes", "26 to 50 cigarettes", "51 to 99 cigarettes", "100 or more", "I don't know")
title <- "Cigarette Smoking History Over Time"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "cigs_smoked" with custom colors and labels
p_cigs_bar <- ggplot(combined_data_cigs, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Frequency") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "cigs_smoked" with custom colors and labels
print(p_cigs_bar)

# Extract the "curr_smoke" variable from each dataset
curr_smoke_base <- data.frame(FollowUp = "Baseline", Response = base$curr_smoke)
curr_smoke_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$curr_smoke_1)
curr_smoke_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$curr_smoke_2)

# Combine and remove NA values
combined_data_curr_smoke <- rbind(curr_smoke_base, curr_smoke_fup1, curr_smoke_fup2)
combined_data_curr_smoke <- combined_data_curr_smoke[!is.na(combined_data_curr_smoke$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Daily or almost daily", "Less than daily but at least weekly", "Less than weekly but at least monthly", "Less than monthly", "Not at all")
title <- "Current Cigarette Smoking Frequency Over Time"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "curr_smoke" with custom colors and labels
p_curr_smoke_bar <- ggplot(combined_data_curr_smoke, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Frequency") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "curr_smoke" with custom colors and labels
print(p_curr_smoke_bar)

# Extract the "last_smoked" variable from each dataset
last_smoked_base <- data.frame(FollowUp = "Baseline", Response = base$last_smoked)
last_smoked_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$last_smoked_1)
last_smoked_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$last_smoked_2)

# Combine and remove NA values
combined_data_last_smoked <- rbind(last_smoked_base, last_smoked_fup1, last_smoked_fup2)
combined_data_last_smoked <- combined_data_last_smoked[!is.na(combined_data_last_smoked$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371")
category_labels <- c("Less than one month ago", "1-6 months ago", "7-12 months ago", "Over 12 months ago")
title <- "Last Time Smoking Cigarettes Over Time"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "last_smoked" with custom colors and labels
p_last_smoked_bar <- ggplot(combined_data_last_smoked, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Timeframe") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "last_smoked" with custom colors and labels
print(p_last_smoked_bar)



# Extract the "wake_smoke" variable from each dataset
wake_smoke_base <- data.frame(FollowUp = "Baseline", Response = base$wake_smoke)
wake_smoke_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$wake_smoke_1)
wake_smoke_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$wake_smoke_2)

# Combine and remove NA values
combined_data_wake_smoke <- rbind(wake_smoke_base, wake_smoke_fup1, wake_smoke_fup2)
combined_data_wake_smoke <- combined_data_wake_smoke[!is.na(combined_data_wake_smoke$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371")
category_labels <- c("Within 5 minutes", "From 6 to 30 minutes", "From 31 to 60 minutes", "More than 60 minutes")
title <- "Time to Smoke First Cigarette After Waking Up Over Time"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "wake_smoke" with custom colors and labels
p_wake_smoke_bar <- ggplot(combined_data_wake_smoke, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Timeframe") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 10.5))  # Adjust the title font size here

# Print the stacked bar chart for "wake_smoke" with custom colors and labels
print(p_wake_smoke_bar)

# Extract the "time_vape" variable from each dataset
time_vape_base <- data.frame(FollowUp = "Baseline", Response = base$time_vape)
time_vape_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$time_vape_1)
time_vape_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$time_vape_2)

# Combine and remove NA values
combined_data_time_vape <- rbind(time_vape_base, time_vape_fup1, time_vape_fup2)
combined_data_time_vape <- combined_data_time_vape[!is.na(combined_data_time_vape$Response), ]

# Define custom colors for the categories
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF", "#FF69B4", "#FFA07A", "#7B68EE")

# Create a stacked bar chart for "time_vape" with custom colors and labels
p_time_vape_bar <- ggplot(combined_data_time_vape, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Timeframe") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "time_vape" with custom colors and labels
print(p_time_vape_bar)


# Extract the "curr_vape" variable from each dataset
curr_vape_base <- data.frame(FollowUp = "Baseline", Response = base$curr_vape)
curr_vape_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$curr_vape_1)
curr_vape_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$curr_vape_2)

# Combine and remove NA values
combined_data_curr_vape <- rbind(curr_vape_base, curr_vape_fup1, curr_vape_fup2)
combined_data_curr_vape <- combined_data_curr_vape[!is.na(combined_data_curr_vape$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Daily or almost daily", "Less than daily, but at least once a week", "Less than weekly, but at least once a month", "Less than monthly", "Not at all")
title <- "Vaping Frequency Over Time"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "curr_vape" with custom colors and labels
p_curr_vape_bar <- ggplot(combined_data_curr_vape, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Frequency") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "curr_vape" with custom colors and labels
print(p_curr_vape_bar)

# Extract the "cutting_down" variable from each dataset
cutting_down_base <- data.frame(FollowUp = "Baseline", Response = base$cutting_down)
cutting_down_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$cutting_down_1)
cutting_down_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$cutting_down_2)

# Combine and remove NA values
combined_data_cutting_down <- rbind(cutting_down_base, cutting_down_fup1, cutting_down_fup2)
combined_data_cutting_down <- combined_data_cutting_down[!is.na(combined_data_cutting_down$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Not at all successful at reducing my tobacco use", "Somewhat unsuccessful at reducing my tobacco use", "Neutral", "Somewhat successful at reducing my tobacco use", "Very successful at reducing my tobacco use")
title <- "Success in Reducing Tobacco Use with E-Cigarettes"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "cutting_down" with custom colors and labels
p_cutting_down_bar <- ggplot(combined_data_cutting_down, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Success") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "cutting_down" with custom colors and labels
print(p_cutting_down_bar)
