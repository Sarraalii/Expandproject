# Create an empty data frame to store the results
result_df <- data.frame()




# Define the renamed binary variables
binary_vars <- c(
  "learn_3___1" = "Instagram",
  "learn_3___2" = "TikTok",
  "learn_3___3" = "Facebook",
  "learn_3___4" = "Project website",
  "learn_3___5" = "Posters in community",
  "learn_3___6" = "In a newspaper",
  "learn_3___7" = "In a magazine",
  "learn_3___8" = "On a billboard",
  "learn_3___9" = "On the radio",
  "learn_3___10" = "On TV",
  "learn_3___11" = "At an event",
  "learn_3___12" = "On public transit",
  "learn_3___13" = "From a friend",
  "learn_3___14" = "From a healthcare professional",
  "learn_3___15" = "From a community organization",
  "learn_3___16" = "I don't know"
)

# Create an empty data frame to store the results
result_df <- data.frame(Response = character(), Count = numeric(), Percentage = numeric())

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup3[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_df <- rbind(result_df, c(Response = binary_vars[var_name], Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table)))
}

# Export the data frame to an Excel file
write_xlsx(result_df, path = "binary_variable_results11122.xlsx")





binary_vars1 <- c(
  "learn_2___1" = "Instagram",
  "learn_2___2" = "TikTok",
  "learn_2___3" = "Facebook",
  "learn_2___4" = "Project website",
  "learn_2___5" = "Posters in community",
  "learn_2___6" = "In a newspaper",
  "learn_2___7" = "In a magazine",
  "learn_2___8" = "On a billboard",
  "learn_2___9" = "On the radio",
  "learn_2___10" = "On TV",
  "learn_2___11" = "At an event",
  "learn_2___12" = "On public transit",
  "learn_2___13" = "From a friend",
  "learn_2___14" = "From a healthcare professional",
  "learn_2___15" = "From a community organization",
  "learn_2___16" = "I don't know"
)

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars1)) {
  frequency_table <- table(fup2[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = names(frequency_table), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_var_df$Variable <- binary_vars1[var_name]
  result_df1 <- rbind(result_df, result_var_df)
}

# Export the data frame to an Excel file
write_xlsx(result_df1, path = "binary_variable_results_fup2.xlsx")



__
# Install and load the writexl package (if not already installed)
install.packages("writexl")
library(writexl)

# Create an empty data frame to store the results
result_df <- data.frame()

# Define the binary variables and their corresponding labels
binary_vars <- c(
  "learn_1___1" = "Instagram",
  "learn_1___2" = "TikTok",
  "learn_1___3" = "Facebook",
  "learn_1___4" = "Project website",
  "learn_1___5" = "Posters in community",
  "learn_1___6" = "In a newspaper",
  "learn_1___7" = "In a magazine",
  "learn_1___8" = "On a billboard",
  "learn_1___9" = "On the radio",
  "learn_1___10" = "On TV",
  "learn_1___11" = "At an event",
  "learn_1___12" = "On public transit",
  "learn_1___13" = "From a friend",
  "learn_1___14" = "From a healthcare professional",
  "learn_1___15" = "From a community organization",
  "learn_1___16" = "I don't know"
)

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup1[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = names(frequency_table), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_var_df$Variable <- binary_vars[var_name]
  result_df <- rbind(result_df, result_var_df)
}

# Export the data frame to an Excel file
write_xlsx(result_df, path = "binary_variable_results_fup111.xlsx")

# Install and load the writexl package (if not already installed)
install.packages("writexl")
library(writexl)

# Create an empty data frame to store the results
result_df <- data.frame()

# Define the binary variables and their corresponding labels
binary_vars <- c(
  "learn_2___1" = "Instagram",
  "learn_2___2" = "TikTok",
  "learn_2___3" = "Facebook",
  "learn_2___4" = "Project website",
  "learn_2___5" = "Posters in community",
  "learn_2___6" = "In a newspaper",
  "learn_2___7" = "In a magazine",
  "learn_2___8" = "On a billboard",
  "learn_2___9" = "On the radio",
  "learn_2___10" = "On TV",
  "learn_2___11" = "At an event",
  "learn_2___12" = "On public transit",
  "learn_2___13" = "From a friend",
  "learn_2___14" = "From a healthcare professional",
  "learn_2___15" = "From a community organization",
  "learn_2___16" = "I don't know"
)

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup2[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = names(frequency_table), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_var_df$Variable <- binary_vars[var_name]
  result_df <- rbind(result_df, result_var_df)
}

# Export the data frame to an Excel file
write_xlsx(result_df, path = "binary_variable_results_fup2.xlsx")


# Load the questionr package
library(questionr)

# Load the questionr package
library(questionr)

# Select the binary variables from the dataset
binary_vars <- c(
  "learn_3___1", "learn_3___2", "learn_3___3", "learn_3___4",
  "learn_3___5", "learn_3___6", "learn_3___7", "learn_3___8",
  "learn_3___9", "learn_3___10", "learn_3___11", "learn_3___12",
  "learn_3___13", "learn_3___14", "learn_3___15", "learn_3___16"
)

# Create an empty list to store the frequency tables
binary_freq_tables <- list()

# Loop through the binary variables and create frequency tables
for (var in binary_vars) {
  freq_table <- fup3 %>%
    freq_table(!!sym(var), percent = TRUE)
  binary_freq_tables[[var]] <- freq_table
}

# Print the frequency tables for all binary variables
for (var in binary_vars) {
  cat(paste("Frequency table for", var, ":\n"))
  print(binary_freq_tables[[var]])
}

# Create a new variable "learn" based on the binary variables where the value is 1
fup3$learn <- ifelse(
  fup3$learn_3__1 == 1 |
    fup3$learn_3__2 == 1 |
    fup3$learn_3__3 == 1 |
    fup3$learn_3__4 == 1 |
    fup3$learn_3__5 == 1 |
    fup3$learn_3__6 == 1 |
    fup3$learn_3__7 == 1 |
    fup3$learn_3__8 == 1 |
    fup3$learn_3__9 == 1 |
    fup3$learn_3__10 == 1 |
    fup3$learn_3__11 == 1 |
    fup3$learn_3__12 == 1 |
    fup3$learn_3__13 == 1 |
    fup3$learn_3__14 == 1 |
    fup3$learn_3__15 == 1 |
    fup3$learn_3__16 == 1, 1, 0)

# Remove the original binary variables
fup3 <- fup3 %>%
  select(-starts_with("learn_3__"))

# Create an empty data frame to store the results
result_df <- data.frame()

# Define the binary variables and their corresponding labels
binary_vars <- c(
  "learn_3___1" = "Instagram",
  "learn_3___2" = "TikTok",
  "learn_3___3" = "Facebook",
  "learn_3___4" = "Project website",
  "learn_3___5" = "Posters in community",
  "learn_3___6" = "In a newspaper",
  "learn_3___7" = "In a magazine",
  "learn_3___8" = "On a billboard",
  "learn_3___9" = "On the radio",
  "learn_3___10" = "On TV",
  "learn_3___11" = "At an event",
  "learn_3___12" = "On public transit",
  "learn_3___13" = "From a friend",
  "learn_3___14" = "From a healthcare professional",
  "learn_3___15" = "From a community organization",
  "learn_3___16" = "I don't know"
)

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup3[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = binary_vars[var_name], Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_df <- rbind(result_df, result_var_df)
}

# Print the results data frame
print(result_df)

# Load the required library
library(questionr)

# Define the binary variables and their corresponding labels
binary_vars <- c(
  "why_stop_3___1" = "Reduce diseaserisk / improvehealth",
  "why_stop_3___2" = "Illness / disability",
  "why_stop_3___3" = "As quittingstrategy / tryingto quit",
  "why_stop_3___4" = "Too expensive /cost",
  "why_stop_3___5" = "Smokingrestrictions",
  "why_stop_3___6" = "Reduce others'exposure to second-handsmoke",
  "why_stop_3___7" = "Pregnancy /breastfeeding",
  "why_stop_3___8" = "Reduced need /craving",
  "why_stop_3___9" = "Family pressure",
  "why_stop_3___10" = "Peer pressure",
  "why_stop_3___11" = "Other (specify)"
)

# Create an empty data frame to store the results
result_df <- data.frame()

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup3[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = binary_vars[var_name], Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_df <- rbind(result_df, result_var_df)
}

# Print the results data frame
print(result_df)
# Define the binary variables and their corresponding labels for fup1
binary_vars <- c(
  "why_stop_1___1" = "Reduce diseaserisk / improvehealth",
  "why_stop_1___2" = "Illness / disability",
  "why_stop_1___3" = "As quittingstrategy / tryingto quit",
  "why_stop_1___4" = "Too expensive /cost",
  "why_stop_1___5" = "Smokingrestrictions",
  "why_stop_1___6" = "Reduce others'exposure to second-handsmoke",
  "why_stop_1___7" = "Pregnancy /breastfeeding",
  "why_stop_1___8" = "Reduced need /craving",
  "why_stop_1___9" = "Family pressure",
  "why_stop_1___10" = "Peer pressure",
  "why_stop_1___11" = "Other (specify)"
)

# Create an empty data frame to store the results
result_df <- data.frame()

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup1[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = as.numeric(names(frequency_table)), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_var_df$Variable <- binary_vars[var_name]
  result_df <- rbind(result_df, result_var_df)
}

# Print the results data frame
print(result_df)

# Save the results to an Excel file
write_xlsx(result_df, path = "why_stop_fup1.xlsx")


# Define the binary variables and their corresponding labels for fup2
binary_vars <- c(
  "why_stop_2___1" = "Reduce diseaserisk / improvehealth",
  "why_stop_2___2" = "Illness / disability",
  "why_stop_2___3" = "As quittingstrategy / tryingto quit",
  "why_stop_2___4" = "Too expensive /cost",
  "why_stop_2___5" = "Smokingrestrictions",
  "why_stop_2___6" = "Reduce others'exposure to second-handsmoke",
  "why_stop_2___7" = "Pregnancy /breastfeeding",
  "why_stop_2___8" = "Reduced need /craving",
  "why_stop_2___9" = "Family pressure",
  "why_stop_2___10" = "Peer pressure",
  "why_stop_2___11" = "Other (specify)"
)

# Create an empty data frame to store the results
result_df <- data.frame()

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  frequency_table <- table(fup2[, var_name])
  percentage_table <- prop.table(frequency_table) * 100
  result_var_df <- data.frame(Response = as.numeric(names(frequency_table)), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
  result_var_df$Variable <- binary_vars[var_name]
  result_df <- rbind(result_df, result_var_df)
}

# Print the results data frame
print(result_df)

# Save the results to an Excel file
write_xlsx(result_df, path = "why_stop_fup2.xlsx")

# Print the column names in fup3 to check for matching variable names
print(colnames(fup3))

# Define the binary variables and their corresponding labels for fup3
binary_vars <- c(
  "why_stop_3___1" = "Reduce diseaserisk / improvehealth",
  "why_stop_3___2" = "Illness / disability",
  "why_stop_3___3" = "As quittingstrategy / tryingto quit",
  "why_stop_3___4" = "Too expensive /cost",
  "why_stop_3___5" = "Smokingrestrictions",
  "why_stop_3___6" = "Reduce others'exposure to second-handsmoke",
  "why_stop_3___7" = "Pregnancy /breastfeeding",
  "why_stop_3___8" = "Reduced need /craving",
  "why_stop_3___9" = "Family pressure",
  "why_stop_3___10" = "Peer pressure",
  "why_stop_3___11" = "Other (specify)"
)

# Create an empty data frame to store the results
result_df <- data.frame()

# Calculate frequencies and percentages for each binary variable and store in the data frame
for (var_name in names(binary_vars)) {
  if (var_name %in% colnames(fup3)) {
    frequency_table <- table(fup3[, var_name])
    percentage_table <- prop.table(frequency_table) * 100
    result_var_df <- data.frame(Response = as.numeric(names(frequency_table)), Count = as.numeric(frequency_table), Percentage = as.numeric(percentage_table))
    result_var_df$Variable <- binary_vars[var_name]
    result_df <- rbind(result_df, result_var_df)
  } else {
    cat("Variable", var_name, "not found in the dataset.\n")
  }
}

# Print the results data frame
print(result_df)

# Save the results to an Excel file
write_xlsx(result_df, path = "why_stop_fup3.xlsx")
