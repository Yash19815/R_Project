library(ggplot2)
library(dplyr)
library(tidyr)
dataset = read.csv('./MinimumWageData1.csv')
# Step 1: Filter dataset
data_1968 <- dataset %>%
  filter(Year == 1968)

# Step 2: Sort and select top 5
top_5_states_1968 <- data_1968 %>%
  arrange(desc(State.Minimum.Wage)) %>%
  head(5)

# Step 3: Create pie chart
pie_chart <- ggplot(top_5_states_1968, aes(x = "", y = State.Minimum.Wage, fill = State)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(title = "Top 5 States with Highest Minimum Wage in 1968", fill = "State")

print(pie_chart)