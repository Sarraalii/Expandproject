install.packages("hmisc")
install.packages("rms")
install.packages("dplyr") # first time install you odnt need to redo but you need to load it everytime 
library(dplyr)
library(rms) 
library(lattice)
install.packages("crosstable")
library(crosstable)
install.packages("mice")
library(mice)
assign1
summary(data)
filter(data, curr_smoke)

#logistic regression

data.dd<-datadist(data)
options(datadist="data.dd")
lrm(Currsmoke~Currvape,data=data)
summary(eg1.sex)
anova(eg1.sex)
eth<-data$ethnicity_other
glimpse(data$ethnicity_other)
plot(age~)
t.test()

datafinal
 data(datafinal)
datfinal_labels = read.table(header=TRUE, text="
  name  label
  language 'English 1 French 2'

  ")
da
table(data$curr_smoke)
data<-finaldataset_May5
smokeyes<-data %>% filter(curr_smoke<=5)
smokeno<-data %>% filter(curr_smoke==5)
full_join(smokeno,smokeyes)
mergesmoke<-merge(smokeyes,smokeno)
smokestatus<-smokeyes+ smokeno
ols(data$curr_smoke+rcs(data$age,4)+data$curr_orient,data=data)

fitdata<- ols(data$curr_smoke~data$age_smoke,data=data)
fitdata

anova(fitdata)

ff <- predict(fitdata) #fit regression mode, do it seperate to fit a model with the necessary information
ggplot(ff) + geom_point(aes(x=age_smoke,y=curr_smoke), data = finaldataset_May5) + geom_line(aes(x=,y=yTrue), data = finaldataset_May5, colour = "red") + coord_cartesian(xlim = xLim, ylim = yLim)


#diagnostic plots

residvfit<- data.frame(assign1,e=resid(fit0),yhat=fitted(fit0))
qqnorm(residvfit$e)
qqline(residvfit$e) #residuals are non linear

xyplot(e~age, data=residvfit, type= c('p','smooth'))

table2<table()
finaldataset_May5
ols(curr+rcs(degesage,4)+mage,data=tipp1)
my_mode <- function(x) {                                     # Create mode function 
  unique_x <- unique(x)
  mode <- unique_x[which.max(tabulate(match(x, unique_x)))]
  mode
}

dataf<-datafinal[is.na(datafinal)] <- my_mode(datafinal[!is.na(datafinal)])                 # Mode imputation
data.res 
summary(datafinal)
finaldataset<-read.csv("datafinal.csv")
datafinal <- read_csv("~/Desktop/Expandproject/datafinal.csv")
head(datafinal)
crosstab
crosstable(datafinal$language, datafinal$curr_smoke)
x<-crosstable(datafinal, c(language, curr_smoke, by=cigs_smoked) %>%
  as_flextable(keep_id=TRUE)
  
  
  crosstable(mtcars2, c(mpg, cyl), by=am) %>%
    as_flextable(keep_id=TRUE)
  starts_with(cyon2)
select(datafinal$cyon2)
cyon1<-datafinal %>% filter(cyon2== 1)
cyon2<-select(datafinal, cyon2)
count(cyon2=15)
summary(cyon2)
summary(datafinal$age)
29-15
15+7
15-22 22-29
datafinal

datafinal_labelss = read.table(header=TRUE, text="
  name  label
  cyon2 'Ontario'
  cyqc2 'Quebec'
  age_smoke 'Age'
  language 'Language'")

lan<-table(datafinal$language )
datalabel <- datafinal %>% 
  mutate(model=rownames(datafinal), 
         language=ifelse(language==2, "English", "French"),
         age_smoke=ifelse(age_smoke==0, "1", "2"), 
         across(c("cyon2", "cyqc2"), factor),
         .before=1) %>% 
  import_labels(datafinal_labelss, name_from="name", label_from="label")

crosstable(datalabel, c(cyon2, cyqc2), by=age_smoke,  funs=mean, effect=TRUE) %>%
  as_flextable(keep_id=FALSE)
crosstable(datalabel, c(cyon2, cynqc), by=language) %>%
  as_flextable(keep_id=TRUE)
crosstable(datalabel, c(am, mpg), by=vs, total="both") %>% 
  as_flextable(keep_id=TRUE)
crosstable(datafinal$cyon2, datafinal$age_smoke)
cc<-crosstable(datalabel, where(is.numeric), cor_method="pearson", by=age_smoke) %>% 
  as_flextable(keep_id=TRUE)
crosstable(mtcars2, where(is.numeric), cor_method="pearson", by=mpg) %>% 
  as_flextable(keep_id=TRUE)
province<-datafinal %>% select(ends_with("1"))
equalsto1<-datafinal %>% select(cyon2=15)
rename<-datafinal %>% select(cyon2=on)

load(starwars)                              
starwars<-starwars
summary(starwars)
dim(starwars)
n<-datafinal[datafinal$language == "1" & datafinal$age_smoke, ]
ss<-starwars[starwars$skin_color == "light" & starwars$eye_color == "brown", ]
filter()
fs<-
  starwars %>% filter(skin_color == "light", eye_color == "brown")
br<-starwars %>% arrange(desc(height))
