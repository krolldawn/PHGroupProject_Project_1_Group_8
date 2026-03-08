summary(rel.data) #runs summary of variables in the data set
summary.data <- summary(rel.data) #stores results in a new name
(.packages()) #loads current packages 
rel.data$V5 <- as.numeric(as.character(rel.data$V5)) #converts V5 to numerics 
str(rel.data) #structures our previous data 
unique(rel.data$V5) #see existing values
mean(rel.data$V5, na.rm = TRUE) #calculates mean on V5
sd(rel.data$V5, na.rm = TRUE) #calculates sd of V5
var(rel.data$V5, na.rm = TRUE) #calculates variance of V5
install.packages("dplyr") #downloads the dplyr package
library(dplyr) #loads the dyplr package 
rel.data #prints our team dataset
mutate(V5 = as.numeric(as.character(V5))) %>% #creates variables for V5 numeric conversion
group_by(SmokingStatus) %>% #separates smoking status from dataset
summarise(mean_V5 = mean(V5, na.rm = TRUE),
          sd_V5   = sd(V5, na.rm = TRUE),
          var_V5  = var(V5, na.rm = TRUE),
          n       = sum(!is.na(V5))) #creates summary stats that give the same output as B1
install.packages("skimr") #installs the skimr package
library("skimr") #loads skimr package
skim(rel.data) #outputs a statistical summary of data set 
my_summary_func #outputs grouped summary