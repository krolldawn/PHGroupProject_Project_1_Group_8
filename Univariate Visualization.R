# Day 4 Univariate Visualization
table(HINTSData_2020_clean) #Created frequency table for HINTSData table

# Part I. 
# 1) Bar plot for QualityCare
barplot(table(HINTSData_2020_clean$V3), #extracted the V3 (Quality Care) variable from the dataset to create barplot
        main = "Distribution of QualityCare", #Added "Distribution of Quality Care" title to the bar plot
        xlab = "QualityCare", #Assigned Quality Care to x-axis
        ylab = "Frequency", #Assigned Frequency to y-axis
        col = "purple4") #Assigned color to bars
      
# 2) Pie chart for RaceEthn5
pie(table(HINTSData_2020_clean$V12), #Extracted RaceEthn5 variable to create pie chart
        main = "Distribution of RaceEthn5", #Added "Distribution of RaceEthn5" as title of the pie chart
    col = c("steelblue", "purple3", "red3", "seagreen", "orange1", "skyblue")) #Assigned colors to pie chart sections

# Part II.         
# 3) Histogram for Age
hist(as.numeric(HINTSData_2020_clean$V5), #Extracted Age variable (V5) to create histogram
     main = "Distribution of Age", #Added "Distribution of Age" as title of historgram
     xlab = "Age", #Assigned Age to x-axis
     col= "green3") #Assigned color to bars in histogram

# 4) Boxplot for BMI
boxplot(as.numeric(HINTSData_2020_clean$V14), #Extraced BMI (V14) to create boxplot where BMI converted to numeric variable
        main = "Distribution of BMI", #Added "Distribution of BMI" as title of boxplot
        ylab = "BMI", #Assigned BMI to y-axis
        col = "purple4", #Added purple color to the boxplot
        border = "black") #Added black outline to the boxplot

# Part III
library(ggplot2) #Downloaded ggplot2 package
df<-HINTSData_2020_clean #Assigned df name to dataset

# QualityCare (bar)
ggplot(df<-HINTSData_2020_clean, aes(x = V3)) + #Assigned QualityCare (V3) to x-axis of ggplot
  geom_bar() + #Created barchart
  labs(title = "QualityCare Distribution", x = "QualityCare", y = "Count")+ #Added "QualityCare Distribution" title to chart, "QualityCare" to x-axis and "Count" to y-axis
  theme_classic() #Added classic theme to chart

# RaceEthnicity (pie)
ggplot(df<-HINTSData_2020_clean, aes(x = V12)) + #Assigned RaceEthnicity (V12) to x-axis of ggplot
  geom_bar() + #Created barchart
  coord_flip() + #Flipped axis for vertical bars
  labs(title = "RaceEthnicity Distribution", x = "RaceEthn5", y = "Count") + #Added "RaceEthnicity Distribution" title to chart, "RaceEthn5" to x-axis and "Count" to y-axis
  theme_minimal() #Added minimal theme to chart

# Age (histogram)
df <- HINTSData_2020_clean

ggplot(df, aes(x = as.numeric(V5))) + #Created ggplot for Age, where age variable converted to numeric and assigned to x-axis
  geom_histogram(bins = 20, fill = "purple4", color = "black") + #Created a histogram with 20 bins and added purple color to the bars with black outlines
  labs(title = "Age Distribution", x = "Age", y = "Count") + #Added "Age Distribution" title to chart, "Age" to x-axis and "Count" to y-axis
  theme_minimal() #Added minimal theme to chart

# BMI (boxplot)
ggplot(df, aes(y = as.numeric(V14))) + #Created ggplot for BMI, where BMI variable converted to numeric and assigned to y-axis
  geom_boxplot(fill = "purple4", color = "black") + #Created boxplot and added purple color with black outline
  labs(title = "BMI Distribution", y = "BMI") + #Added "BMI Distribution" as title of boxplot and "BMI" to y-axis
  theme_minimal() #Added minimal theme to chart

# Part IV
  # Function for Part I
my_visual_func_I <- function(data) { #Created new variable my_visual_func_I for dataset
  
  # Barplot for QualityCare
barplot(table(HINTSData_2020_clean$V3), #extracted the V3 (Quality Care) variable from the dataset to create barplot
        main = "Distribution of QualityCare", #Added "Distribution of Quality Care" title to the bar plot
        xlab = "QualityCare", #Assigned Quality Care to x-axis
        ylab = "Frequency", #Assigned Frequency to y-axis
        col = "purple4") #Assigned color to bars
  
  # Pie chart for RaceEthnicity
pie(table(HINTSData_2020_clean$V12), #Extracted RaceEthn5 variable to create pie chart
        main = "Distribution of RaceEthn5", #Added "Distribution of RaceEthn5" as title of the pie chart
    col = c("steelblue", "purple3", "red3", "seagreen", "orange1", "skyblue")) #Assigned colors to pie chart sections
}
my_visual_func_I(HINTSData_2020_clean) 


    # Function for Part II
my_visual_func_II <- function(HINTSData_2020_clean) { #Created new variable my_visual_func_II for dataset
  
  # Histogram for Age
  hist(as.numeric(HINTSData_2020_clean$V5), #Created histogram for Age, where age converted to numeric variable
       main = "Distribution of Age", #Added "Distribution of Age" as title of histogram
       xlab = "Age" #Assigned Age to x-axis
       col= "green3") #Assigned color to bars in histogram
  # Boxplot for BMI
boxplot(as.numeric(HINTSData_2020_clean$V14), #Extraced BMI (V14) to create boxplot where BMI converted to numeric variable
        main = "Distribution of BMI", #Added "Distribution of BMI" as title of boxplot
        ylab = "BMI", #Assigned BMI to y-axis
        col = "purple4", #Added purple color to the boxplot
        border = "black") #Added black outline to the boxplot
}
my_visual_func_II(HINTSData_2020_clean) #Produced the Age histogram and BMI boxplot
