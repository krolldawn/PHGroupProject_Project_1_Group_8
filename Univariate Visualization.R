# Day 4 Univariate Visualization
table(HINTSData_2020_clean$QualityCare)

# Part I. 
# 1) Bar plot for QualityCare
barplot(table(HINTSData_2020_clean$QualityCare),
        main = "Distribution of QualityCare",
        xlab = "QualityCare",
        ylab = "Frequency")
      
# 2) Pie chart for RaceEthn5
pie(table(HINTSData_2020_clean$RaceEthn5),
        main = "Distribution of RaceEthn5")
# Part II.         
# 3) Histogram for Age
hist(HINTSData_2020_clean$Age,
     main = "Distribution of Age",
     xlab = "Age")


# 4) Boxplot for BMI
boxplot(HINTSData_2020_clean$BMI,
        main = "Distribution of BMI",
        ylab = "BMI")

# Part III
library(ggplot2)
df<-HINTSData_2020_clean

# QualityCare (bar)
ggplot(df<-HINTSData_2020_clean, aes(x = QualityCare)) +
  geom_bar() +
  labs(title = "QualityCare Distribution", x = "QualityCare", y = "Count") +
  theme_minimal()

# RaceEthn5 (pie)
ggplot(df<-HINTSData_2020_clean, aes(x = RaceEthn5)) +
  geom_bar() +
  coord_flip() +
  labs(title = "RaceEthn5 Distribution", x = "RaceEthn5", y = "Count") +
  theme_minimal()

# Age (histogram)
ggplot(df<-HINTSData_2020_clean, aes(x = Age)) +
  geom_histogram(bins = 20) +
  labs(title = "Age Distribution", x = "Age", y = "Count") +
  theme_minimal()

# BMI (boxplot)
ggplot(df<-HINTSData_2020_clean, aes(y = BMI)) +
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
