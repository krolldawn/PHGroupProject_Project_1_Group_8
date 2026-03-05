# Day 4 Univariate Visualization
table(HINTSData_2020_clean)

# Part I. 
# 1) Bar plot for QualityCare
barplot(table(HINTSData_2020_clean$V3),
        main = "Distribution of QualityCare",
        xlab = "QualityCare",
        ylab = "Frequency",
        col = "purple4")
      
# 2) Pie chart for RaceEthn5
pie(table(HINTSData_2020_clean$V12),
        main = "Distribution of RaceEthn5",
    col = c("steelblue", "purple3", "red3", "seagreen", "orange1", "skyblue"))

# Part II.         
# 3) Histogram for Age
hist(HINTSData_2020_clean$V5,
     main = "Distribution of Age",
     xlab = "Age")

# 4) Boxplot for BMI
boxplot(HINTSData_2020_clean$V14,
        main = "Distribution of BMI",
        ylab = "BMI")

# Part III
library(ggplot2)
df<-HINTSData_2020_clean

# QualityCare (bar)
ggplot(df<-HINTSData_2020_clean, aes(x = V3)) +
  geom_bar() +
  labs(title = "QualityCare Distribution", x = "QualityCare", y = "Count") +
  theme_minimal()

# RaceEthn5 (pie)
ggplot(df<-HINTSData_2020_clean, aes(x = V12)) +
  geom_bar() +
  coord_flip() +
  labs(title = "RaceEthn5 Distribution", x = "RaceEthn5", y = "Count") +
  theme_minimal()

# Age (histogram)
df <- HINTSData_2020_clean

ggplot(df, aes(x = as.numeric(V5))) +
  geom_histogram(bins = 20) +
  labs(title = "Age Distribution", x = "Age", y = "Count") +
  theme_minimal()

# BMI (boxplot)
ggplot(df, aes(y = as.numeric(V14))) +
  geom_boxplot() +
  labs(title = "BMI Distribution", y = "BMI") +
  theme_minimal()

# Part IV
  # Function for Part I
my_visual_func_I <- function(data) {
  
  # Barplot for QualityCare
  barplot(table(data$QualityCare),
          main = "Distribution of QualityCare",
          xlab = "QualityCare",
          ylab = "Frequency")
  
  # Pie chart for RaceEthn5
  pie(table(data$RaceEthn5),
      main = "Distribution of RaceEthn5")
}
my_visual_func_I(HINTSData_2020_clean)

    # Function for Part II
my_visual_func_II <- function(data) {
  
  # Histogram for Age
  hist(data$Age,
       main = "Distribution of Age",
       xlab = "Age")
  
  # Boxplot for BMI
  boxplot(data$BMI,
          main = "Distribution of BMI",
          ylab = "BMI")
  
}
my_visual_func_II(HINTSData_2020_clean)
