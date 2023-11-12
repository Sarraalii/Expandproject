# Load the questionr package
install.packages("questionr")
library(questionr)
library(dplyr)
library(freqtables)

# Filter the data for respondents who answered expand_3 as 1 or 2
exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]






# Remove responses 5 and 6 from "exquits_3" in both groups
exp1 <- exp1[!(exp1$exquits_3 %in% c(5, 6)), ]


# Recode "exquits_3" for both groups
exp1$exquits_3 <- ifelse(exp1$exquits_3 %in% c(1, 4,7), "Not at all/I don't know",
                         ifelse(exp1$exquits_3 %in% c(2,3),  "To an extent", exp1$exquits_3))

exp1 <- exp1[!(exp1$exquitv_3 %in% c(5, 6)), ]
exp1$exquitv_3 <- ifelse(exp1$exquitv_3 %in% c(1, 4,7), "Not at all/I don't know",
                         ifelse(exp1$exquitv_3 %in% c(2,3),  "To an extent", exp1$exquitv_3))


exp1 %>%
  freq_table(exquitv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$exbehs_3 %in% c( 6)), ]

exp1 %>%
  freq_table(exbehs_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$exbehv_3 %in% c( 5)), ]

exp1 %>%
  freq_table(exbehv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

library(dplyr)
library(freqtables)

# Create a frequency table with confidence intervals for expand__3=1
table_expand_1 <- fup3 %>%
  filter(expand_3 == 1) %>%
  freq_table(click_3, percent_ci = 95)

# Create a frequency table with confidence intervals for expand__3=2
table_expand_2 <- fup3 %>%
  filter(expand_3 == 2) %>%
  freq_table(click_3, percent_ci = 95)

# Print the frequency tables with confidence intervals for each group
cat("Frequency table with confidence intervals for expand__3=1:\n")
print(table_expand_1)

cat("Frequency table with confidence intervals for expand__3=2:\n")
print(table_expand_2)

# Load the questionr package
library(questionr)

# Assuming your dataset is named 'fup3' and you want to analyze 'share_3', 'expand__3', and 'percent_ci' is set to 95

# Create a frequency table with confidence intervals for share_3 when expand__3=1
table_share_expand_1 <- fup3 %>%
  filter(expand_3 == 1) %>%
  freq_table(share_3, percent_ci = 95)

# Create a frequency table with confidence intervals for share_3 when expand__3=2
table_share_expand_2 <- fup3 %>%
  filter(expand_3 == 2) %>%
  freq_table(share_3, percent_ci = 95)

# Print the frequency tables with confidence intervals for each group
cat("Frequency table with confidence intervals for share_3 when expand__3=1:\n")
print(table_share_expand_1)

cat("Frequency table with confidence intervals for share_3 when expand__3=2:\n")
print(table_share_expand_2)


# Load the questionr package
library(questionr)

# Assuming your dataset is named 'fup3' and you want to analyze 'follow_3', 'expand_3', and 'percent_ci' is set to 95

# Create a frequency table with confidence intervals for follow_3 when expand_3=1
table_follow_expand_1 <- fup3 %>%
  filter(expand_3 == 1) %>%
  freq_table(follow_3, percent_ci = 95, addNA = TRUE)

# Create a frequency table with confidence intervals for follow_3 when expand_3=2
table_follow_expand_2 <- fup3 %>%
  filter(expand_3 == 2) %>%
  freq_table(follow_3, percent_ci = 95, addNA = TRUE)

# Print the frequency tables with confidence intervals for each group
cat("Frequency table with confidence intervals for follow_3 when expand_3=1:\n")
print(table_follow_expand_1)

cat("Frequency table with confidence intervals for follow_3 when expand_3=2:\n")
print(table_follow_expand_2)


# Load the questionr package
library(questionr)

# Assuming your dataset is named 'fup3' and you want to analyze 'follow_3', 'expand_3', and 'percent_ci' is set to 95

# Create a frequency table with confidence intervals for follow_3 when expand_3=1
table_follow_expand_1 <- fup3 %>%
  filter(expand_3 == 1) %>%
  freq_table(follow_3, percent_ci = 95)

# Create a frequency table with confidence intervals for follow_3 when expand_3=2
table_follow_expand_2 <- fup3 %>%
  filter(expand_3 == 2) %>%
  freq_table(follow_3, percent_ci = 95)

# Print the frequency tables with confidence intervals for each group
cat("Frequency table with confidence intervals for follow_3 when expand_3=1:\n")
print(table_follow_expand_1)

cat("Frequency table with confidence intervals for follow_3 when expand_3=2:\n")
print(table_follow_expand_2)


# Load the questionr package
library(questionr)

# Assuming your dataset is named 'fup3' and you want to analyze 'awaresmoke_3', 'expand_3', and 'percent_ci' is set to 95

# Create a frequency table with confidence intervals for awaresmoke_3 when expand_3=1
table_awaresmoke_expand_1 <- fup3 %>%
  filter(expand_3 == 1) %>%
  freq_table(awaresmoke_3, percent_ci = 95)

# Create a frequency table with confidence intervals for awaresmoke_3 when expand_3=2
table_awaresmoke_expand_2 <- fup3 %>%
  filter(expand_3 == 2) %>%
  freq_table(awaresmoke_3, percent_ci = 95)

# Print the frequency tables with confidence intervals for each group
cat("Frequency table with confidence intervals for awaresmoke_3 when expand_3=1:\n")
print(table_awaresmoke_expand_1)

cat("Frequency table with confidence intervals for awaresmoke_3 when expand_3=2:\n")
print(table_awaresmoke_expand_2)

# Load the dplyr package
library(dplyr)

# Recode the 'awaresmoke_3' variable to collapse categories
# Create a new variable "awaresmoke_3_collapsed" by collapsing values
fup3$awaresmoke_3_collapsed <- ifelse(fup3$awaresmoke_3 %in% c(1, 2), "Little to not at all",
                                      ifelse(fup3$awaresmoke_3 == 3, "Neutral",
                                             ifelse(fup3$awaresmoke_3 %in% c(4, 5), "An extent", as.character(fup3$awaresmoke_3)))
                                      
                                      
                                      # Create a frequency table with confidence intervals for awaresmoke_3 when expand_3=1
                                      table_awaresmoke_expand_1 <- fup3 %>%
                                        filter(expand_3 == 1) %>%
                                        freq_table(awaresmoke_3_collapsed, percent_ci = 95)
                                      print(table_awaresmoke_expand_1)
                                      
                                      # Create a new variable "quitsupport2" by collapsing values
                                      fup3$quitsupport2 <- ifelse(fup3$quit_support_3 %in% c(1, 2), "Not Confident",
                                                                  ifelse(fup3$quit_support_3 == 3, "Neutral",
                                                                         ifelse(fup3$quit_support_3 %in% c(4, 5), "Confident", as.character(fup3$quit_support_3)))
                                                                  
                                                                  # Create a new variable "awarerel_3_collapsed" by collapsing values
                                                                  fup3$awarerel_3_collapsed <- ifelse(fup3$awarerel_3 %in% c(1, 2), "Little to not at all",
                                                                                                      ifelse(fup3$awarerel_3 == 3, "Neutral",
                                                                                                             ifelse(fup3$awarerel_3 %in% c(4, 5), "An extent", as.character(fup3$awarerel_3)))
                                                                                                      
                                                                                                      # Load the questionr package
                                                                                                      library(questionr)
                                                                                                      
                                                                                                      # Create a frequency table with confidence intervals for awarerel_3_collapsed when expand_3=1
                                                                                                      table_awarerel_expand_1 <- fup3 %>%
                                                                                                        filter(expand_3 == 1) %>%
                                                                                                        freq_table(awarerel_3_collapsed, percent_ci = 95)
                                                                                                      
                                                                                                      # Print the frequency table
                                                                                                      cat("Frequency table with confidence intervals for awarerel_3_collapsed when expand_3=1:\n")
                                                                                                      print(table_awarerel_expand_1)
                                                                                                      
                                                                                                      
                                                                                                      # Create a new variable "awarebenefits_3_collapsed" by collapsing values
                                                                                                      fup3$awarebenefits_3_collapsed <- ifelse(fup3$awarebenefits_3 %in% c(1, 2), "Little to not at all",
                                                                                                                                               ifelse(fup3$awarebenefits_3 == 3, "Neutral",
                                                                                                                                                      ifelse(fup3$awarebenefits_3 %in% c(4, 5), "An extent", as.character(fup3$awarebenefits_3)))
                                                                                                                                               
                                                                                                                                               # Load the questionr package
                                                                                                                                               library(questionr)
                                                                                                                                               
                                                                                                                                               # Create a frequency table with confidence intervals for awarebenefits_3_collapsed when expand_3=1
                                                                                                                                               table_awarebenefits_expand_1 <- fup3 %>%
                                                                                                                                                 filter(expand_3 == 1) %>%
                                                                                                                                                 freq_table(awarebenefits_3_collapsed, percent_ci = 95)
                                                                                                                                               
                                                                                                                                               # Print the frequency table
                                                                                                                                               cat("Frequency table with confidence intervals for awarebenefits_3_collapsed when expand_3=1:\n")
                                                                                                                                               print(table_awarebenefits_expand_1)
                                                                                                                                               
                                                                                                                                               
                                                                                                                                               # Create a new variable "awarerisksm_3_collapsed" by collapsing values
                                                                                                                                               fup3$awarerisksm_3_collapsed <- ifelse(fup3$awarerisksm_3 %in% c(1, 2), "Little to not at all",
                                                                                                                                                                                      ifelse(fup3$awarerisksm_3 == 3, "Neutral",
                                                                                                                                                                                             ifelse(fup3$awarerisksm_3 %in% c(4, 5), "An extent", as.character(fup3$awarerisksm_3)))
                                                                                                                                                                                      
                                                                                                                                                                                      # Load the questionr package
                                                                                                                                                                                      library(questionr)
                                                                                                                                                                                      
                                                                                                                                                                                      # Create a frequency table with confidence intervals for awarerisksm_3_collapsed when expand_3=1
                                                                                                                                                                                      table_awarerisksm_expand_1 <- fup3 %>%
                                                                                                                                                                                        filter(expand_3 == 1) %>%
                                                                                                                                                                                        freq_table(awarerisksm_3_collapsed, percent_ci = 95)
                                                                                                                                                                                      
                                                                                                                                                                                      # Print the frequency table
                                                                                                                                                                                      cat("Frequency table with confidence intervals for awarerisksm_3_collapsed when expand_3=1:\n")
                                                                                                                                                                                      print(table_awarerisksm_expand_1)
                                                                                                                                                                                      
                                                                                                                                                                                      # Create a new variable "awareriskvp_3_collapsed" by collapsing values
                                                                                                                                                                                      fup3$awareriskvp_3_collapsed <- ifelse(fup3$awareriskvp_3 %in% c(1, 2), "Little to not at all",
                                                                                                                                                                                                                             ifelse(fup3$awareriskvp_3 == 3, "Neutral",
                                                                                                                                                                                                                                    ifelse(fup3$awareriskvp_3 %in% c(4, 5), "An extent", as.character(fup3$awareriskvp_3)))
                                                                                                                                                                                                                             
                                                                                                                                                                                                                             # Load the questionr package
                                                                                                                                                                                                                             library(questionr)
                                                                                                                                                                                                                             
                                                                                                                                                                                                                             # Create a frequency table with confidence intervals for awareriskvp_3_collapsed when expand_3=1
                                                                                                                                                                                                                             table_awareriskvp_expand_1 <- fup3 %>%
                                                                                                                                                                                                                               filter(expand_3 == 1) %>%
                                                                                                                                                                                                                               freq_table(awareriskvp_3_collapsed, percent_ci = 95)
                                                                                                                                                                                                                             
                                                                                                                                                                                                                             # Print the frequency table
                                                                                                                                                                                                                             cat("Frequency table with confidence intervals for awareriskvp_3_collapsed when expand_3=1:\n")
                                                                                                                                                                                                                             print(table_awareriskvp_expand_1)
                                                                                                                                                                                                                             
                                                                                                                                                                                                                             