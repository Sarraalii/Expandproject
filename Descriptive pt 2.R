# Install and load the freqtables package (if not already installed)
# install.packages("freqtables")
library(freqtables)
library(dplyr)

exp %>% freq_table(quit_support_3)


# Create a new variable "quitsupport2" by collapsing values
fup3$quitsupport2 <- ifelse(fup3$quit_support_3 %in% c(1, 2), "Not Confident",
                            ifelse(fup3$quit_support_3 == 3, "Neutral",
                                   ifelse(fup3$quit_support_3 %in% c(4, 5), "Confident", as.character(fup3$quit_support_3)))
                            
                            
                            
                            # Filter the data for exposed and unexposed respondents
                            exp <- fup3[fup3$expand_3 == 1, ]
                            unexp <- fup3[fup3$expand_3 == 2, ]
                            
                            
                            
                            
                            fup3 %>% freq_table(quitsupport2, percent_ci=95)
                            exp %>% freq_table(quitsupport2, percent_ci=95)
                            unexp %>% freq_table(quitsupport2, percent_ci=95)
                            
                            