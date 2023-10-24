# Load required packages
library(ggplot2)

# Define logo custom colors using the provided hexadecimal color codes
purple_color <- "#4e0560"  # Purple
green_color <- "#abd848"   # Green

# Extract the "Attn" variable from each dataset
attn_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$attn_1)))
attn_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$attn_2)))


# Combine data frames
combined_data <- rbind( attn_fup1, attn_fup2)

# Create a line chart for "Attn" with the previously defined custom colors, a thicker green line, and without grid lines
p <- ggplot(combined_data, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Effectiveness of Campaign in Grabbing Attention Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart for "Attn" with custom colors
print(p)



# Extract the "Inform" variable from each dataset in fup1 and fup2
inform_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$inform_1)))
inform_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$inform_2)))

# Combine data frames
combined_data_inform <- rbind(inform_fup1, inform_fup2)

# Create a line chart for "Inform" with custom colors, a thicker green line, and without grid lines
p_inform <- ggplot(combined_data_inform, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Impact of Campaign's Information Effectiveness Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart for "Inform" with custom colors
print(p_inform)


# Extract the "Meaning" variable from each dataset in fup1 and fup2
meaning_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$meaning_1)))
meaning_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$meaning_2)))

# Combine data frames
combined_data_meaning <- rbind(meaning_fup1, meaning_fup2)






# Create a plot with custom colors, a thicker green line, and without grid lines
p_meaning <- ggplot(combined_data_meaning, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Perception of Campaign Being Meaningful Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart with the specified colors, a thicker green line, and without grid lines for "Meaning"
print(p_meaning)


# Extract the "Compel" variable from each dataset
compel_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$compel_1)))
compel_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$compel_2)))

# Combine data frames for "Compel"
combined_data_compel <- rbind(compel_fup1, compel_fup2)

# Create a line chart for "Compel" with the previously defined custom colors, a thicker green line, and without grid lines
p_compel <- ggplot(combined_data_compel, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Effectiveness of Campaign in Being Compelling Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart for "Compel" with custom colors
print(p_compel)

# Extract the "Seeself" variable from each dataset
seeself_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$seeself_1)))
seeself_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$seeself_2)))

# Combine data frames for "Seeself"
combined_data_seeself <- rbind(seeself_fup1, seeself_fup2)

# Create a line chart for "Seeself" with the previously defined custom colors, a thicker green line, and without grid lines
p_seeself <- ggplot(combined_data_seeself, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Perception of Seeing Oneself in the Expand Project Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart for "Seeself" with custom colors
print(p_seeself)

# Extract the "Glance" variable from each dataset
glance_fup1 <- data.frame(FollowUp = "Follow-Up 1", Frequency = sum(!is.na(fup1$glance_1)))
glance_fup2 <- data.frame(FollowUp = "Follow-Up 2", Frequency = sum(!is.na(fup2$glance_2)))

# Combine data frames for "Glance"
combined_data_glance <- rbind(glance_fup1, glance_fup2)

# Create a line chart for "Glance" with the previously defined custom colors, a thicker green line, and without grid lines
p_glance <- ggplot(combined_data_glance, aes(x = FollowUp, y = Frequency, group = 1)) +
  geom_line(color = green_color, size = 1.5) +   # Thicker green line with custom color
  geom_point() +                                  # Default points
  labs(title = "Perception of Understanding the Expand Project at a Quick Glance Over Time", x = "Follow-Up Time", y = "Frequency") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())  # Custom purple background and remove grid lines

# Print the chart for "Glance" with custom colors
print(p_glance)

__________

#Stacked Bar

# Extract the "Attn" variable from each dataset
attn_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$attn_1)
attn_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$attn_2)

# Remove NA values
combined_data_attn <- rbind(attn_fup1, attn_fup2)
combined_data_attn <- combined_data_attn[!is.na(combined_data_attn$Response), ]

# Create a stacked bar chart for "Attn" with custom colors, category labels, and an adjusted title
p_attn_bar <- ggplot(combined_data_attn, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Effectiveness of Campaign in Grabbing Attention ", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "Attn" with custom colors and labels
print(p_attn_bar)

# Extract the "Inform" variable from each dataset
inform_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$inform_1)
inform_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$inform_2)

# Remove NA values
combined_data_inform <- rbind(inform_fup1, inform_fup2)
combined_data_inform <- combined_data_inform[!is.na(combined_data_inform$Response), ]

# Create a stacked bar chart for "Inform" with custom colors, category labels, and an adjusted title
p_inform_bar <- ggplot(combined_data_inform, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Campaign Information Effectiveness Over Time", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "Inform" with custom colors and labels
print(p_inform_bar)




# Extract the "Meaning" variable from each dataset
meaning_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$meaning_1)
meaning_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$meaning_2)

# Remove NA values
combined_data_meaning <- rbind(meaning_fup1, meaning_fup2)
combined_data_meaning <- combined_data_meaning[!is.na(combined_data_meaning$Response), ]

# Create a stacked bar chart for "Meaning" with custom colors, category labels, and an adjusted title
p_meaning_bar <- ggplot(combined_data_meaning, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Campaign Meaningfulness Over Time", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "Meaning" with custom colors and labels
print(p_meaning_bar)


# Extract the "Compel" variable from each dataset
compel_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$compel_1)
compel_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$compel_2)

# Remove NA values
combined_data_compel <- rbind(compel_fup1, compel_fup2)
combined_data_compel <- combined_data_compel[!is.na(combined_data_compel$Response), ]

# Create a stacked bar chart for "Compel" with custom colors, category labels, and an adjusted title
p_compel_bar <- ggplot(combined_data_compel, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Campaign Compellingness Over Time", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "Compel" with custom colors and labels
print(p_compel_bar)


# Extract the "Seeself" variable from each dataset
seeself_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$seeself_1)
seeself_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$seeself_2)

# Remove NA values
combined_data_seeself <- rbind(seeself_fup1, seeself_fup2)
combined_data_seeself <- combined_data_seeself[!is.na(combined_data_seeself$Response), ]

# Create a stacked bar chart for "Seeself" with custom colors, category labels, and an adjusted title
p_seeself_bar <- ggplot(combined_data_seeself, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Campaign's Self-Identification Over Time", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 14))  # Adjust the title font size here

# Print the stacked bar chart for "Seeself" with custom colors and labels
print(p_seeself_bar)



# Extract the "Glance" variable from each dataset
glance_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$glance_1)
glance_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$glance_2)

# Remove NA values
combined_data_glance <- rbind(glance_fup1, glance_fup2)
combined_data_glance <- combined_data_glance[!is.na(combined_data_glance$Response), ]

# Define custom colors
purple_color <- "#4e0560"  # Purple

custom_colors <- c("#FF5733", "#FFD700", "#abd848" , "#3CB371", "#1E90FF")

# Define custom category labels
category_labels <- c("Strongly Disagree", "2", "3", "4", "Strongly Agree")

# Create a stacked bar chart for "Glance" with custom colors, category labels, and an adjusted title
p_glance_bar <- ggplot(combined_data_glance, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Response") +   # Custom colors and labels
  labs(title = "Understanding Expand Project at a Quick Glance", x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank())

# Print the stacked bar chart for "Glance" with custom colors and labels
print(p_glance_bar)
