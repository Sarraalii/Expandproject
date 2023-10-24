install.packages("haven")
install.packages("readxl")
library(readxl)
library(haven)


# Read the SAS file inside the "Dataset" folder
data <- read_sas("Dataset/baselinefup1.sas7bdat")
base <- read_excel("Dataset/Baseline.xlsx")
fup1 <- read.csv("Dataset/Follow up 1.csv")
fup2 <- read.csv("Dataset/Follow up 2.csv")

# Get the frequencies for all variables in the 'base' dataset
frequency_cigs_smoked <- table(base$cigs_smoked)
frequency_curr_smoke <- table(base$curr_smoke)
frequency_last_smoked <- table(base$last_smoked)
frequency_cigs_day <- table(base$cigs_day)
frequency_wake_smoke <- table(base$wake_smoke)
frequency_time_vape <- table(base$time_vape)
frequency_curr_vape <- table(base$curr_vape)
frequency_cutting_down <- table(base$cutting_down)

# Find the unique values across all variables
all_levels <- unique(c(names(frequency_cigs_smoked), names(frequency_curr_smoke), names(frequency_last_smoked), names(frequency_cigs_day), names(frequency_wake_smoke), names(frequency_time_vape), names(frequency_curr_vape), names(frequency_cutting_down)))

# Create a data frame with zeros for missing values
frequency_table_base <- data.frame(
  cigs_smoked = frequency_cigs_smoked[all_levels],
  curr_smoke = frequency_curr_smoke[all_levels],
  last_smoked = frequency_last_smoked[all_levels],
  cigs_day = frequency_cigs_day[all_levels],
  wake_smoke = frequency_wake_smoke[all_levels],
  time_vape = frequency_time_vape[all_levels],
  curr_vape = frequency_curr_vape[all_levels],
  cutting_down = frequency_cutting_down[all_levels]
)

# Save the frequency table to a CSV file
write.csv(frequency_table_base, file = "frequency_table_base.csv", row.names = FALSE)

# Get the frequencies for all variables in the 'fup1' dataset
frequency_cigs_smoked <- table(fup1$cigs_smoked)
frequency_curr_smoke <- table(fup1$curr_smoke)
frequency_last_smoked <- table(fup1$last_smoked)
frequency_cigs_day <- table(fup1$cigs_day)
frequency_wake_smoke <- table(fup1$wake_smoke)
frequency_time_vape <- table(fup1$time_vape)
frequency_curr_vape <- table(fup1$curr_vape)
frequency_cutting_down <- table(fup1$cutting_down)

# Find the unique values across all variables
all_levels <- unique(c(names(frequency_cigs_smoked), names(frequency_curr_smoke), names(frequency_last_smoked), names(frequency_cigs_day), names(frequency_wake_smoke), names(frequency_time_vape), names(frequency_curr_vape), names(frequency_cutting_down))
                     
# Create a data frame with zeros for missing values
frequency_table_fup1 <- data.frame(
cigs_smoked = frequency_cigs_smoked[all_levels],
curr_smoke = frequency_curr_smoke[all_levels],
last_smoked = frequency_last_smoked[all_levels],
cigs_day = frequency_cigs_day[all_levels],
wake_smoke = frequency_wake_smoke[all_levels],
time_vape = frequency_time_vape[all_levels],
curr_vape = frequency_curr_vape[all_levels],
cutting_down = frequency_cutting_down[all_levels]
                     )
# Save the frequency table to a CSV file
write.csv(frequency_table_fup1, file = "frequency_table_fup1.csv", row.names = FALSE)
                     
 # Get the frequencies for all variables in the 'fup2' dataset
frequency_cigs_smoked <- table(fup2$cigs_smoked)
frequency_curr_smoke <- table(fup2$curr_smoke)
frequency_last_smoked <- table(fup2$last_smoked)
frequency_cigs_day <- table(fup2$cigs_day)
frequency_wake_smoke <- table(fup2$wake_smoke)
frequency_time_vape <- table(fup2$time_vape)
frequency_curr_vape <- table(fup2$curr_vape)
frequency_cutting_down <- table(fup2$cutting_down)

# Find the unique values across all variables
all_levels <- unique(c(names(frequency_cigs_smoked), names(frequency_curr_smoke), names(frequency_last_smoked), names(frequency_cigs_day), names(frequency_wake_smoke), names(frequency_time_vape), names(frequency_curr_vape), names(frequency_cutting_down)))

# Create a data frame with zeros for missing values
frequency_table_fup2 <- data.frame(
  cigs_smoked = frequency_cigs_smoked[all_levels],
  curr_smoke = frequency_curr_smoke[all_levels],
  last_smoked = frequency_last_smoked[all_levels],
  cigs_day = frequency_cigs_day[all_levels],
  wake_smoke = frequency_wake_smoke[all_levels],
  time_vape = frequency_time_vape[all_levels],
  curr_vape = frequency_curr_vape[all_levels],
  cutting_down = frequency_cutting_down[all_levels]
)

# Save the frequency table to a CSV file
write.csv(frequency_table_fup2, file = "frequency_table_fup2.csv", row.names = FALSE)

# Get the unique levels across all variables in the 'fup2' dataset
all_levels <- unique(unlist(lapply(fup2, levels)))

# Create frequency tables for each variable, aligning levels
frequency_cigs_smoked <- table(factor(fup2$cigs_smoked, levels = all_levels))
frequency_curr_smoke <- table(factor(fup2$curr_smoke, levels = all_levels))
frequency_last_smoked <- table(factor(fup2$last_smoked, levels = all_levels))
frequency_cigs_day <- table(factor(fup2$cigs_day, levels = all_levels))
frequency_wake_smoke <- table(factor(fup2$wake_smoke, levels = all_levels))
frequency_time_vape <- table(factor(fup2$time_vape, levels = all_levels))
frequency_curr_vape <- table(factor(fup2$curr_vape, levels = all_levels))
frequency_cutting_down <- table(factor(fup2$cutting_down, levels = all_levels))

# Create a data frame with zeros for missing values
frequency_table_fup2 <- data.frame(
  cigs_smoked = frequency_cigs_smoked,
  curr_smoke = frequency_curr_smoke,
  last_smoked = frequency_last_smoked,
  cigs_day = frequency_cigs_day,
  wake_smoke = frequency_wake_smoke,
  time_vape = frequency_time_vape,
  curr_vape = frequency_curr_vape,
  cutting_down = frequency_cutting_down
)


# Calculate the frequencies for baseline data
baseline_freq <- table(
  base$sm_accept_self,
  base$sm_accept_friends,
  base$vape_accept_self,
  base$vape_accept_friends,
  base$risk1,
  base$risk2,
  base$risk3,
  base$risk4
)

# Calculate the frequencies for follow-up 1 data
fup1_freq <- table(
  fup1$sm_accept_self,
  fup1$sm_accept_friends,
  fup1$vape_accept_self,
  fup1$vape_accept_friends,
  fup1$risk1,
  fup1$risk2,
  fup1$risk3,
  fup1$risk4
)

# Calculate the frequencies for follow-up 2 data
fup2_freq <- table(
  fup2$sm_accept_self,
  fup2$sm_accept_friends,
  fup2$vape_accept_self,
  fup2$vape_accept_friends,
  fup2$risk1,
  fup2$risk2,
  fup2$risk3,
  fup2$risk4
)


# Combine the frequency tables into a single table
combined_freq_table <- cbind(
  Baseline = baseline_freq,
  Follow_Up_1 = fup1_freq,
  Follow_Up_2 = fup2_freq
)

# Convert the combined frequency table to a data frame
combined_freq_df <- data.frame(combined_freq_table)

# View the data frame in RStudio
View(combined_freq_df)

library(ggplot2)

library(ggplot2)

# Create a data frame for the 'sm_accept_self' variable and its frequencies at each round
trend_data <- data.frame(
  Round = c("Baseline", "Follow-Up 1", "Follow-Up 2"),
  Frequency = c(sum(base$sm_accept_self), sum(fup1$sm_accept_self), sum(fup2$sm_accept_self))
)

# Create a line plot
ggplot(trend_data, aes(x = Round, y = Frequency, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Trend in 'sm_accept_self' Frequency Over Time", x = "Survey Round", y = "Frequency")


library(ggplot2)

# List of variables
variables <- c("sm_accept_self", "sm_accept_friends", "vape_accept_self", "vape_accept_friends", "risk1", "risk2", "risk3", "risk4")

# Create an empty data frame to store the data
freq_data <- data.frame()

# Iterate through the variables and create a data frame for each
for (variable in variables) {
  # Create frequency tables for each survey round
  freq_baseline <- table(base[[variable]])
  freq_fup1 <- table(fup1[[variable]])
  freq_fup2 <- table(fup2[[variable]])
  
  # Make sure all frequency tables have the same number of rows
  max_length <- max(length(freq_baseline), length(freq_fup1), length(freq_fup2))
  
  # Pad the shorter tables with zeros to have the same length
  freq_baseline <- c(freq_baseline, rep(0, max_length - length(freq_baseline)))
  freq_fup1 <- c(freq_fup1, rep(0, max_length - length(freq_fup1)))
  freq_fup2 <- c(freq_fup2, rep(0, max_length - length(freq_fup2)))
  
  freq_table <- data.frame(
    Round = c("Baseline", "Follow-Up 1", "Follow-Up 2"),
    Frequency = c(freq_baseline, freq_fup1, freq_fup2)
  )
  freq_table$Variable <- variable  # Add the variable name
  freq_data <- rbind(freq_data, freq_table)
}

# Create a grouped bar chart with facets
ggplot(freq_data, aes(x = Round, y = Frequency, fill = Round)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9), width = 0.7) +
  facet_wrap(~Variable, scales = "free", ncol = 2) +
  labs(title = "Frequency of Responses Over Time",
       x = "Survey Round",
       y = "Frequency") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Impute missing values with the mean for each round
base$variable_name[is.na(base$variable_name)] <- mean(base$variable_name, na.rm = TRUE)
fup1$variable_name[is.na(fup1$variable_name)] <- mean(fup1$variable_name, na.rm = TRUE)
fup2$variable_name[is.na(fup2$variable_name)] <- mean(fup2$variable_name, na.rm = TRUE)

#Try with NAs coded

all_categories <- unique(c(levels(base[[variable_name]]), levels(fup1[[variable_name]]), levels(fup2[[variable_name]]))
                         
all_categories <- unique(c(levels(base[[variable_name]]), levels(fup1[[variable_name]]), levels(fup2[[variable_name]]))

                         
                         library(ggplot2)
                         
                         # Create a data frame for a single variable (e.g., sm_accept_self)
                         variable_name <- "sm_accept_self"
                         
# Find unique categories across all rounds
 all_categories <- unique(c(levels(base[[variable_name]]), levels(fup1[[variable_name]]), levels(fup2[[variable_name])))
                         
                         # Create frequency tables for each survey round
                         freq_baseline <- table(factor(base[[variable_name]], levels = all_categories))
                         freq_fup1 <- table(factor(fup1[[variable_name]], levels = all_categories))
                         freq_fup2 <- table(factor(fup2[[variable_name]], levels = all_categories))
                         
                         # Create a data frame
                         freq_data <- data.frame(
                           Round = rep(c("Baseline", "Follow-Up 1", "Follow-Up 2"), each = length(all_categories)),
                           Frequency = c(freq_baseline, freq_fup1, freq_fup2),
                           Category = rep(all_categories, times = 3)
                         )
                         
                         # Create a stacked bar chart
                         ggplot(freq_data, aes(x = Round, y = Frequency, fill = Category)) +
                           geom_bar(stat = "identity", position = "stack") +
                           labs(title = "Distribution of Participants Over Time",
                                x = "Survey Round",
                                y = "Frequency")
                         
                                                  