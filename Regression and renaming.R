install.packages(tableone)
library(sas7bdat)
library(tableone)
library(naniar)
library(ggplot2)
library(tidyr)
library(caret)
library(randomForest)
library(mice)
library(vip)
library(corrplot)
library(pdp)
library(dplyr)
library(rms)

#shorter name for the dataset
dat<-finaldataset_May5

#create subset for regression purposes
modeldata <- select(datas, curr_smoke,curr_orient,age,stigma)

eg1.dd <- datadist(modeldata)
options(datadist="eg1.dd")

##changing the grouping as:
# 0 = Asexual
# 1 = straight, heterosexual or heteroflexible
# 2 = bisexual
# 3 = gay
# 4 = lesbian
# 5 = pansexual
# 6 = queer
# 7 = questioning
# 8 = Two spirit

datas$curr_orient2 <-
  case_when(
    datas$curr_orient == 1 ~ 0,
    datas$curr_orient  %in% c(4,9) ~ 1,
    datas$curr_orient  == 2 ~ 2,
    datas$curr_orient  == 3 ~ 3,
    datas$curr_orient  == 5 ~ 4,
    datas$curr_orient  == 6 ~ 5,
    datas$curr_orient  == 7 ~ 6,
    datas$curr_orient  == 8 ~ 7,
    datas$curr_orient  == 10 ~ 8)

#creating new variable gender
#0-> cisgender men
#1-> cisgender women
#2-> transgender men
#3-> transgender women
#4 -> gender diverse
dat$gender<- NA
0 -> dat$gender[which(dat$curr_gender==5 & dat$trans==2)]
1 -> dat$gender[which(dat$curr_gender==6 & dat$trans==2)]
2 -> dat$gender[which(dat$curr_gender==5 & dat$trans==1)]
3 -> dat$gender[which(dat$curr_gender==6 & dat$trans==1)]
4 -> dat$gender[which(dat$curr_gender==1 | dat$curr_gender==2 |dat$curr_gender==3 |dat$curr_gender==4 | dat$curr_gender==7)]
NA -> dat$gender[which(dat$curr_gender==8 | dat$curr_gender==9)]
dat$gender <- as.factor(dat$gender)
table(dat$gender)

#logistic 
model1<-lrm(curr_smoke~age+stigma+curr_orient,data=datas)
model1

#analysis of if variable are associated with each other or atleast one is different
summary(model1)
anova(model1)

model2<-lrm(curr_smoke~age+stigma*curr_orient,data=datas)
model2
summary(model2)
anova(model2)

lrtest(model1, model2)

plot(Predict(model1,curr_orient,stigma)) 
plot(Predict(model1,age,stigma,fun=plogis),ylab="Probability")

#vaping

model3<-lrm(curr_vape~age+stigma*curr_orient,data=datas)
model3
summary(model3)
anova(model3)

plot(Predict(model3,curr_orient,stigma)) 
plot(Predict(model3,age,stigma,fun=plogis),ylab="Probability")

#Is there an association between age and current smoking/vaping?

finaldataset_May5 %>%
  filter(curr_smoke == 1 | curr_vape == 1) %>%
  summarize(mean_age = mean(age),
            sd_age = sd(age))

# Is there an association between age at smoking initiation and current smoking?
datas %>%
  filter(curr_smoke == 1 ) %>%
  summarize(mean_age_smoke = mean(age_smoke),
            sd_age_smoke = sd(age_smoke))

#What is the prevalence of current smoking and vaping in the data set?

finaldataset_May5 %>%
  summarize(smoking_prevalence = sum(curr_smoke <=5),
            vaping_prevalence = sum(curr_vape <= 5
                                    ))


#Is current smoking higher among those who have higher stigma “scores”?

contingency_table <- table(data$curr_smoke, df$stigma_scores)

