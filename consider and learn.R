library(dplyr)
library(freqtables)

fup3 <- read.csv("Dataset/ExpandFollowup3ENandFRfinaldataset.csv")

# Filter the data for respondents who answered expand_3 as 1 or 2
exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]


# consider


exp1$consider <- ifelse(exp1$consider_3 %in% c(1, 2), "Little to Not at all",
                        ifelse(exp1$consider_3 %in% c(3), "Neutral",
                               ifelse(exp1$consider_3 %in% c(4, 5), "Somewhat great extent", exp1$consider_3)))

exp2$consider <- ifelse(exp2$consider_3 %in% c(1, 2), "Little to Not at all",
                        ifelse(exp2$consider_3 %in% c(3), "Neutral",
                               ifelse(exp2$consider_3 %in% c(4, 5), "Somewhat great extent", exp2$consider_3)))




exp1 %>%
  freq_table(consider, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp2 %>%
  freq_table(consider, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Remove responses 5 and 6 from "exquits_3" in both groups
exp1 <- exp1[!(exp1$exbehs_3 %in% c(6)), ]

exp1 %>%
  freq_table(exbehs_3, percent_ci = 95) %>%
  
  mutate(percent = percent / sum(percent) * 100)

# Remove responses 5 " in both groups
exp1 <- exp1[!(exp1$exbehv_3 %in% c(5)), ]

exp1 %>%
  freq_table(exbehv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- fup3[fup3$expand_3 == 1, ]
______


exp1 <- exp1[!(exp1$exbehs_3 %in% c(6)), ]
exp1 %>%
  freq_table(exbehs_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

##Research 
fup3 <- read.csv("Dataset/ExpandFollowup3ENandFRfinaldataset.csv")

# Filter the data for respondents who answered expand_3 as 1 or 2
exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]


exp1 <- exp1[!(exp1$research_3 %in% c(3)), ]

exp1$research_3 <- factor(exp1$research_3)


exp1 %>%
  freq_table(research_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Assuming you have the dplyr and sjPlot packages installe



# Convert to factor if not already
exp1 <- exp1[!(exp1$friendsv_3 %in% c(3)), ]
exp1$friendsv_3 <- factor(exp1$friendsv_3)

exp1 %>%
  freq_table(friendsv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1 <- exp1[!(exp1$hlthprosv_3 %in% c(3)), ]

exp1$hlthprosv_3 <- factor(exp1$hlthprosv_3)

exp1 %>%
  freq_table(hlthprosv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$helpsv_3 %in% c(3)), ]

exp1$helpsv_3 <- factor(exp1$helpsv_3)

exp1 %>%
  freq_table(helpsv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1 <- exp1[!(exp1$nothing_3 %in% c(3)), ]

exp1$nothing_3 <- factor(exp1$nothing_3)

exp1 %>%
  freq_table(nothing_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$research_3 %in% c(3)), ]

exp1$research_3 <- factor(exp1$research_3)

exp1 %>%
  filter(research_3 != 3) %>%
  freq_table(research_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)



# Assuming you have the dplyr and sjPlot packages installed
# Install them using install.packages("dplyr") and install.packages("sjPlot") if needed

library(dplyr)
library(sjPlot)

# Convert to factor if not already
exp1$friendsv_3 <- factor(exp1$friendsv_3)

exp1 %>%
  freq_table(friendsv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)



exp1 <- exp1[!(exp1$friendsv_3 %in% c(3)), ]

exp1 %>%
  freq_table(friendsv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$hlthprosv_3 %in% c(3)), ]


exp1 %>%
  freq_table(hlthprosv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$helpsv_3 %in% c(3)), ]

exp1 %>%
  freq_table(helpsv_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 <- exp1[!(exp1$nothing_3 %in% c(3)), ]

exp1 %>%
  freq_table(nothing_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)
___

library(dplyr)

exp1 <- exp1 %>%
  mutate(
    accept = case_when(
      sm_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
      sm_accept_self_3 %in% c(3) ~ "Neutral",
      sm_accept_self_3 %in% c(4, 5) ~ "Acceptable",
      TRUE ~ as.character(sm_accept_self_3)
    )
  )

exp1%>%
  freq_table(accept, percent_ci = 95)%>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2 <- exp2 %>%
  mutate(
    accept = case_when(
      sm_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
      sm_accept_self_3 %in% c(3) ~ "Neutral",
      sm_accept_self_3 %in% c(4, 5) ~ "Acceptable",
      TRUE ~ as.character(sm_accept_self_3)
    )
  )

exp2%>%
  freq_table(accept, percent_ci = 95)%>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1$acceptf1 <- case_when(
  exp1$sm_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp1$sm_accept_friends_3 %in% c(3) ~ "Neutral",
  exp1$sm_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp1$sm_accept_friends_3)
)

exp1%>%
  freq_table(acceptf1, percent_ci = 95)%>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2$acceptf2<- case_when(
  exp2$sm_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp2$sm_accept_friends_3 %in% c(3) ~ "Neutral",
  exp2$sm_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp1$sm_accept_friends_3)
)

exp2%>%
  freq_table(acceptf2, percent_ci = 95)%>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


library(dplyr)
library(questionr)  # Assuming you're using the questionr package for freq_table

exp2$acceptf2 <- case_when(
  exp2$sm_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp2$sm_accept_friends_3 %in% c(3) ~ "Neutral",
  exp2$sm_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp2$sm_accept_friends_3)
)

exp2 %>%
  freq_table(acceptf2, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

____
fup3 <- read.csv("Dataset/ExpandFollowup3ENandFRfinaldataset.csv")

exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]


table(fup3$convoyou_3)

exp1$convo <- ifelse(exp1$convoyou_3 %in% c(1, 2), "Little to Not at all",
                     ifelse(exp1$convoyou_3 %in% c(3), "Neutral",
                            ifelse(exp1$convoyou_3 %in% c(4, 5), "Somewhat to great extent", exp1$consider_3)))
exp1 %>%
  freq_table(convo, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


85
exp1$convoq <- ifelse(exp1$convoqtya_3 %in% c(1, 2), "Little to Not at all",
                      ifelse(exp1$convoqtya_3 %in% c(3), "Neutral",
                             ifelse(exp1$convoqtya_3 %in% c(4, 5), "Somewhat to great extent",exp1$consider_3)))
exp1 %>%
  freq_table(convoq, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)
#convo_3 61 60
exp1$convo3 <- ifelse(exp1$convo_3 %in% c(1, 2), "Disagree",
                      ifelse(exp1$convo_3 %in% c(3), "Neutral",
                             ifelse(exp1$convo_3 %in% c(4, 5), "Somewhat to great extent", NA)))

exp1 %>%
  freq_table(convo3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Create the new column image3
exp1$image3 <- ifelse(exp1$image_3 %in% c(1, 2), "Disagree",
                      ifelse(exp1$image_3 %in% c(3), "Neutral",
                             ifelse(exp1$image_3 %in% c(4, 5), "Somewhat to great extent", NA)))

# Generate a frequency table
exp1 %>%
  freq_table(image3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

#CESS

exp1%>%
  freq_table(cess_barriers_3___8, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(cess_barriers_3___8, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1%>%
  freq_table(cess_barriers_3___9, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(cess_barriers_3___9, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

table(exp1$time_quit_3)
mean()


# Calculate the mean of time_quit_3
mean_time_quit_3 <- mean(exp1$time_quit_3, na.rm = TRUE)

# Print the result
cat("Mean of time_quit_3:", mean_time_quit_3, "\n")

mean_time_quit_3 <- mean(exp2$time_quit_3, na.rm = TRUE)

# Print the result
cat("Mean of time_quit_3:", mean_time_quit_3, "\n")


fup3 <- read.csv("Dataset/ExpandFollowup3ENandFRfinaldataset.csv")

exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]
exp1 <- exp1[!(exp1$plan_quit_3 %in% c(1)), ]
exp2 <- exp2[!(exp2$plan_quit_3 %in% c(1)), ]


# Assuming you have the dplyr and sjPlot packages installed
# Install them using install.packages("dplyr") and install.packages("sjPlot") if needed

library(dplyr)
library(sjPlot)

# Convert to factor if not already
exp1$plan_quit_3 <- factor(exp1$plan_quit_3)

exp1 %>%
  filter(plan_quit_3 != 1) %>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2 %>%
  filter(plan_quit_3 != 1) %>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1 %>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2 %>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Assuming you have the dplyr and sjPlot packages installed
# Install them using install.packages("dplyr") and install.packages("sjPlot") if needed

library(dplyr)
library(sjPlot)

exp1 <- fup3[fup3$expand_3 == 1, ]

exp1 %>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Filter the data for respondents who answered expand_3 as 1 or 2
exp1 <- fup3[fup3$expand_3 == 1, ]
exp2 <- fup3[fup3$expand_3 == 2, ]

exp1 <- exp1[!(exp1$plan_quit_3 %in% c(1)), ]
exp2 <- exp2[!(exp2$plan_quit_3 %in% c(1)), ]
exp1%>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(plan_quit_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


table(fup3$plan_quit_3) 

# Table of plan_quit_3 including NA
table_plan_quit_3 <- table(fup3$plan_quit_3, useNA = "always")

# Calculate the mean of plan_quit_3 excluding NA
mean_plan_quit_3 <- mean(fup3$plan_quit_3, na.rm = TRUE)

# Print the table and mean
print(table_plan_quit_3)
cat("Mean of plan_quit_3 (excluding NA):", mean_plan_quit_3, "\n")

