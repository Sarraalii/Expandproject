library(dplyr)
library(freqtables)
exp1 <- fup3[fup3$expand_3 == 1, ] #YES
exp2 <- fup3[fup3$expand_3 == 2, ] #NO

table(fup1$expand_1)
table(fup2$expand_2)
table(fup3$expand_3)

fup1 %>%
  freq_table(expand_1, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)
fup2 %>%
  freq_table(expand_2, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)
fup3 %>%
  freq_table(expand_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)
#freeNRT
exp1 %>%
  freq_table(freenrt_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1 %>%
  freq_table(nrtaware_3, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2 %>%
  freq_table(cess_methods_3___1, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)



exp1%>%
  freq_table(click_3, percent_ci = 95)

exp1%>%
  freq_table(share_3, percent_ci = 95)

exp1%>%
  freq_table(follow_3, percent_ci = 95)


exp1%>%
  freq_table(cess_methods_3___1, percent_ci = 95)

exp2%>%
  freq_table(cess_methods_3___1, percent_ci = 95)

exp1 %>%
  freq_table(cess_methods_3___1, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2 %>%
  freq_table(cess_methods_3___1, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1%>%
  freq_table(follow_3, percent_ci = 95)

exp1$cess_barriers_3___1
exp2$cess_methods_3___1
exp1$consider <- ifelse(exp1$consider_3 %in% c(1, 2), "Little to Not at all",
                        ifelse(exp1$consider_3 %in% c(3), "Neutral",
                               ifelse(exp1$consider_3 %in% c(4, 5), "Somewhat great extent", as.character(exp1$consider_3)))
                        
                        exp1 %>% freq_table(consider, percent_ci = 95)
                        
                        
                        exp1$why
                        exp1%>%
                          freq_table(why_stop_3, percent_ci = 95)
                        
                        
                        # Load the required library
                        library(questionr)
                        
                        # Define the variables to check
                        variables_to_check <- c(
                          "why_stop_3___1",
                          "why_stop_3___2",
                          "why_stop_3___3",
                          "why_stop_3___4",
                          "why_stop_3___5",
                          "why_stop_3___6",
                          "why_stop_3___7",
                          "why_stop_3___8",
                          "why_stop_3___9",
                          "why_stop_3___10",
                          "why_stop_3___11"
                        )
                        
                        # Function to generate frequency table for the variable where value is 1
                        generate_frequency_table <- function(var_name) {
                          filtered_data <- fup3 %>% filter({{var_name}} == 1)
                          freq_table_data <- filtered_data %>% freq_table(var_name, percent_ci = 95)
                          return(freq_table_data)
                        }
                        
                        # Use lapply to create frequency tables for all variables
                        frequency_tables <- lapply(variables_to_check, generate_frequency_table)
                        
                        # Load the required library
                        library(questionr)
                        
                        # Define the variables to check
                        variables_to_check <- c(
                          "why_stop_3___1",
                          "why_stop_3___2",
                          "why_stop_3___3",
                          "why_stop_3___4",
                          "why_stop_3___5",
                          "why_stop_3___6",
                          "why_stop_3___7",
                          "why_stop_3___8",
                          "why_stop_3___9",
                          "why_stop_3___10",
                          "why_stop_3___11"
                        )
                        
                        # Function to generate frequency table for the variable where value is 1
                        generate_frequency_table <- function(var_name) {
                          filtered_data <- fup3 %>% filter({{var_name}} == 1)
                          freq_table_data <- filtered_data %>% freq_table(var_name, percent_ci = 95)
                          return(freq_table_data)
                        }
                        
                        # Use lapply to create frequency tables for all variables
                        frequency_tables <- lapply(variables_to_check, generate_frequency_table)
                        
                        # Print the frequency tables
                        for (i in seq_along(variables_to_check)) {
                          cat("Frequency table for", variables_to_check[i], "when", variables_to_check[i], "== 1:\n")
                          print(frequency_tables[[i]])
                        }
                        # Print the frequency tables
                        for (i in seq_along(variables_to_check)) {
                          cat("Frequency table for", variables_to_check[i], "when", variables_to_check[i], "== 1:\n")
                          print(frequency_tables[[i]])
                          
                          #     Social acceptability                  }
                          
                          # Filter the data for respondents who answered expand_3 as 1 or 2
                          exp1 <- fup3[fup3$expand_3 == 1, ]
                          exp2 <- fup3[fup3$expand_3 == 2, ]
                          
                          
                          
                          fup3%>%
                            freq_table(accept, percent_ci = 95) %>%
                            mutate(percent = percent / sum(percent) * 100)
                          
                          # Assuming you have the necessary packages loaded, such as dplyr and jtools
                          # If not, you can install and load them with install.packages("dplyr") and install.packages("jtools")
                          
                          # Assuming you have the necessary packages loaded, such as dplyr and jtools
                          # If not, you can install and load them with install.packages("dplyr") and install.packages("jtools")
                          
                          # Recode the 'accept' variable
                          exp1$accept <- case_when(
                            exp1$sm_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
                            exp1$sm_accept_self_3 %in% c(3) ~ "Neutral",
                            exp1$sm_accept_self_3 %in% c(4, 5) ~ "Acceptable",
                            TRUE ~ as.character(exp1$sm_accept_self_3)
                          )
                          
                          # Create a frequency table with confidence intervals
                          result_table <- exp1 %>%
                            freq_table(accept, percent_ci = 95) %>%
                            na.omit() %>%
                            mutate(percent = percent / sum(percent) * 100)
                          
                          # Print the result
                          print(result_table)
                          
                          
                          # Social acceptability
                          library(dplyr)
                          
                          exp1$accept <- case_when(
                            exp1$sm_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
                            exp1$sm_accept_self_3 %in% c(3) ~ "Neutral",
                            exp1$sm_accept_self_3 %in% c(4, 5) ~ "Acceptable",
                            TRUE ~ as.character(exp1$sm_accept_self_3)
                          )
                          
                          exp2$accept2 <- case_when(
                            exp2$sm_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
                            exp2$sm_accept_self_3 %in% c(3) ~ "Neutral",
                            exp2$sm_accept_self_3 %in% c(4, 5) ~ "Acceptable",
                            TRUE ~ as.character(exp2$sm_accept_self_3)
                          )
                          370+416
                          844-786
                          
                          
)
exp1%>%
  freq_table(accept, percent_ci = 95)
na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1%>%
  freq_table(accept, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(accept2, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp1$acceptf1 <- case_when(
  exp1$sm_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp1$sm_accept_friends_3 %in% c(3) ~ "Neutral",
  exp1$sm_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp1$sm_accept_friends_3)
)
table(fup3$expand_3==1) #370
table(fup3$expand_3==2)#416
table(fup3$expand_3==3) #58

table(fup3$expand_3)

result_table <- table(fup3$expand_3, useNA = "always")


print(result_table)

370+416+58
867-844

exp2$acceptf2 <- case_when(
  exp2$sm_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp2$sm_accept_friends_3 %in% c(3) ~ "Neutral",
  exp2$sm_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp2$sm_accept_friends_3)
)

exp1%>%
  freq_table(acceptf1, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(acceptf2, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


exp1%>%
  freq_table(accept, percent_ci = 95)
print(table_exquits)

exp2%>%
  freq_table(accept2, percent_ci = 95)
print(table_exquits)

exp1%>%
  freq_table(acceptf1, percent_ci = 95)
print(table_exquits)

exp2%>%
  freq_table(acceptf2, percent_ci = 95)
print(table_exquits)

#Vaping

library(dplyr)

exp1$accept_vape <- case_when(
  exp1$vape_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
  exp1$vape_accept_self_3 %in% c(3) ~ "Neutral",
  exp1$vape_accept_self_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp1$vape_accept_self_3)
)

exp2$accept2_vape <- case_when(
  exp2$vape_accept_self_3 %in% c(1, 2) ~ "Unacceptable",
  exp2$vape_accept_self_3 %in% c(3) ~ "Neutral",
  exp2$vape_accept_self_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp2$vape_accept_self_3)
)

exp1%>%
  freq_table(accept_vape, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(accept2_vape, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)


# Now you can generate frequency tables and print them (if necessary):
table_exp1 <- exp1 %>%
  freq_table(accept_vape, percent_ci = 95)

table_exp2 <- exp2 %>%
  freq_table(accept2_vape, percent_ci = 95)

print(table_exp1)
print(table_exp2)

library(dplyr)

exp1$accept_friends_vape <- case_when(
  exp1$vape_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp1$vape_accept_friends_3 %in% c(3) ~ "Neutral",
  exp1$vape_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp1$vape_accept_friends_3)
)

exp2$accept2_friends_vape <- case_when(
  exp2$vape_accept_friends_3 %in% c(1, 2) ~ "Unacceptable",
  exp2$vape_accept_friends_3 %in% c(3) ~ "Neutral",
  exp2$vape_accept_friends_3 %in% c(4, 5) ~ "Acceptable",
  TRUE ~ as.character(exp2$vape_accept_friends_3)
)

exp1%>%
  freq_table(accept_friends_vape, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

exp2%>%
  freq_table(accept2_friends_vape, percent_ci = 95) %>%
  na.omit() %>%
  mutate(percent = percent / sum(percent) * 100)

# Now you can generate frequency tables and print them (if necessary):
table_exp1 <- exp1 %>%
  freq_table(accept_friends_vape, percent_ci = 95)

table_exp2 <- exp2 %>%
  freq_table(accept2_friends_vape, percent_ci = 95)

print(table_exp1)
print(table_exp2)

