library(ggplot2)
library(dplyr)
library(tidyr)
dataset = read.csv('./MinimumWageData1.csv')
#New_York_State_Minimum_Wage_1986-2020
# Step 1: Filter dataset
ny_data <- dataset %>%
  filter(State == "New York", Year >= 1968, Year <= 2020)

 # Step 2: Create line chart
line_chart <- ggplot(ny_data, aes(x = Year, y = State.Minimum.Wage)) +
  geom_line(color = "#191919", size = 1) +
  geom_point(color = "#B31312", size = 2) +
  labs(title = "Minimum Wage in New York (1968-2020)", x = "Year", y = "Minimum Wage") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

print(line_chart)

# Step 1: Filter dataset
nj_data <- dataset %>%
  filter(State == "New Jersey", Year >= 1968, Year <= 2020)

# Step 2: Create histogram
histogram_chart <- ggplot(nj_data, aes(x = State.Minimum.Wage)) +
  geom_histogram(binwidth = 1, fill = "#b44658", color = "black") +
  labs(title = "Distribution of Minimum Wage in New Jersey (1968-2020)", x = "Minimum Wage", y = "Count") +
  theme_minimal()

print(histogram_chart)



