library (ggplot)
#1

# Extract the "sm_accept_self" variable from each dataset
sm_accept_self_base <- data.frame(FollowUp = "Baseline", Response = base$sm_accept_self)
sm_accept_self_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$sm_accept_self_1)
sm_accept_self_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$sm_accept_self_2)

# Combine and remove NA values
combined_data_sm_accept_self <- rbind(sm_accept_self_base, sm_accept_self_fup1, sm_accept_self_fup2)
combined_data_sm_accept_self <- combined_data_sm_accept_self[!is.na(combined_data_sm_accept_self$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Very unacceptable", "Somewhat unacceptable", "Neutral", "Somewhat acceptable", "Very acceptable")
title <- "How acceptable is smoking among LGBTQI2S+ young adults?"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "sm_accept_self" with custom colors and labels
p_sm_accept_self_bar <- ggplot(combined_data_sm_accept_self, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Acceptance Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "sm_accept_self" with custom colors and labels
print(p_sm_accept_self_bar)
_______

#2 sm_accept_friends

# Extract the "sm_accept_friends" variable from each dataset
sm_accept_friends_base <- data.frame(FollowUp = "Baseline", Response = base$sm_accept_friends)
sm_accept_friends_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$sm_accept_friends_1)
sm_accept_friends_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$sm_accept_friends_2)

# Combine and remove NA values
combined_data_sm_accept_friends <- rbind(sm_accept_friends_base, sm_accept_friends_fup1, sm_accept_friends_fup2)
combined_data_sm_accept_friends <- combined_data_sm_accept_friends[!is.na(combined_data_sm_accept_friends$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Very unacceptable", "Somewhat unacceptable", "Neutral", "Somewhat acceptable", "Very acceptable")
title <- "How acceptable is smoking among LGBTQI2S+ young adults according to friends?"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "sm_accept_friends" with custom colors and labels
p_sm_accept_friends_bar <- ggplot(combined_data_sm_accept_friends, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Acceptance Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 9.5))  # Adjust the title font size here

# Print the stacked bar chart for "sm_accept_friends" with custom colors and labels
print(p_sm_accept_friends_bar)

____

#3 vape_accept_self


# Extract the "vape_accept_self" variable from each dataset
vape_accept_self_base <- data.frame(FollowUp = "Baseline", Response = base$vape_accept_self)
vape_accept_self_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$vape_accept_self_1)
vape_accept_self_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$vape_accept_self_2)

# Combine and remove NA values
combined_data_vape_accept_self <- rbind(vape_accept_self_base, vape_accept_self_fup1, vape_accept_self_fup2)
combined_data_vape_accept_self <- combined_data_vape_accept_self[!is.na(combined_data_vape_accept_self$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Very unacceptable", "Somewhat unacceptable", "Neutral", "Somewhat acceptable", "Very acceptable")
title1 <- "How acceptable is vaping among LGBTQI2S+ young adults?"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "vape_accept_self" with custom colors and labels
p_vape_accept_self_bar <- ggplot(combined_data_vape_accept_self, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Acceptance Level") +
  labs(title1 = title1, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "vape_accept_self" with custom colors and labels
print(p_vape_accept_self_bar)

___

#4 vape_accept_friends 

# Extract the "vape_accept_friends" variable from each dataset
vape_accept_friends_base <- data.frame(FollowUp = "Baseline", Response = base$vape_accept_friends)
vape_accept_friends_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$vape_accept_friends_1)
vape_accept_friends_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$vape_accept_friends_2)

# Combine and remove NA values
combined_data_vape_accept_friends <- rbind(vape_accept_friends_base, vape_accept_friends_fup1, vape_accept_friends_fup2)
combined_data_vape_accept_friends <- combined_data_vape_accept_friends[!is.na(combined_data_vape_accept_friends$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("Very unacceptable", "Somewhat unacceptable", "Neutral", "Somewhat acceptable", "Very acceptable")
title <- "How acceptable do friends think vaping is among LGBTQI2S+ young adults?"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "vape_accept_friends" with custom colors and labels
p_vape_accept_friends_bar <- ggplot(combined_data_vape_accept_friends, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Acceptance Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 10))  # Adjust the title font size here

# Print the stacked bar chart for "vape_accept_friends" with custom colors and labels
print(p_vape_accept_friends_bar)


___

#5 risk 1

# Extract the "risk1" variable from each dataset
risk1_base <- data.frame(FollowUp = "Baseline", Response = base$risk1)
risk1_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$risk1_1)
risk1_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$risk1_2)

# Combine and remove NA values
combined_data_risk1 <- rbind(risk1_base, risk1_fup1, risk1_fup2)
combined_data_risk1 <- combined_data_risk1[!is.na(combined_data_risk1$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("No risk", "Low risk", "Moderate risk", "High risk", "Very high risk")
title <- "Risk of Harming Health from Smoking Cigarettes Daily"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "risk1" with custom colors and labels
p_risk1_bar <- ggplot(combined_data_risk1, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Risk Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "risk1" with custom colors and labels
print(p_risk1_bar)


___

#6 risk2 

# Extract the "risk2" variable from each dataset
risk2_base <- data.frame(FollowUp = "Baseline", Response = base$risk2)
risk2_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$risk2_1)
risk2_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$risk2_2)

# Combine and remove NA values
combined_data_risk2 <- rbind(risk2_base, risk2_fup1, risk2_fup2)
combined_data_risk2 <- combined_data_risk2[!is.na(combined_data_risk2$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("No risk", "Low risk", "Moderate risk", "High risk", "Very high risk")
title <- "Risk of Harming Health from Occasional Smoking"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "risk2" with custom colors and labels
p_risk2_bar <- ggplot(combined_data_risk2, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Risk Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "risk2" with custom colors and labels
print(p_risk2_bar)



___ 

#6 Risk3

# Extract the "risk3" variable from each dataset
risk3_base <- data.frame(FollowUp = "Baseline", Response = base$risk3)
risk3_fup1 <- data.frame(FollowUp = "Follow-Up 1", Response = fup1$risk3_1)
risk3_fup2 <- data.frame(FollowUp = "Follow-Up 2", Response = fup2$risk3_2)

# Combine and remove NA values
combined_data_risk3 <- rbind(risk3_base, risk3_fup1, risk3_fup2)
combined_data_risk3 <- combined_data_risk3[!is.na(combined_data_risk3$Response), ]

# Define custom colors, category labels, and a shorter title
custom_colors <- c("#FF5733", "#FFD700", "#abd848", "#3CB371", "#1E90FF")
category_labels <- c("No risk", "Low risk", "Moderate risk", "High risk", "Very high risk")
title <- "Risk of Harming Health from Daily E-Cigarette Use"

# Set the purple background color
purple_color <- "#4e0560"

# Create a stacked bar chart for "risk3" with custom colors and labels
p_risk3_bar <- ggplot(combined_data_risk3, aes(x = FollowUp, fill = factor(Response))) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = custom_colors, labels = category_labels, name = "Risk Level") +
  labs(title = title, x = "Follow-Up Time", y = "Proportion") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = purple_color), panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(plot.title = element_text(size = 12))  # Adjust the title font size here

# Print the stacked bar chart for "risk3" with custom colors and labels
print(p_risk3_bar)

