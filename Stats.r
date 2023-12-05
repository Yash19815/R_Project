library(dplyr)
library(tidyr)
dataset = read.csv('./MinimumWageData1.csv')

# Step 1: Filter dataset
FilterData <- dataset %>%
  filter(Year == 1968)
print(FilterData)
#2. Print Total Rows in a Dataset.
dataset = read.csv('./MinimumWageData1.csv')
nrow(dataset)

#3. Print Total Columns in a Dataset.
dataset = read.csv('./MinimumWageData1.csv')
ncol(dataset)

#4. Print dimensions of a Dataset.
dataset = read.csv('./MinimumWageData1.csv')
dim(dataset)

#5. Print all columns in a Dataset.
dataset = read.csv('./MinimumWageData1.csv')
names(dataset)

#6. Perform Sort operations on the Columns of a dataset. 
dataset = read.csv('./MinimumWageData1.csv')
sort(FilterData$State)
sort(unique(dataset$Year))
sort(FilterData$State.Minimum.Wage)


#7. Statistical Summary of any two columns.
dataset = read.csv('./MinimumWageData1.csv')
summary(FilterData$State.Minimum.Wage)
