library(ggplot2)
library(dplyr)
library(tidyr)
dataset = read.csv('./MinimumWageData1.csv')
# Step 1: Filter dataset
data_1968 <- dataset %>%
  filter(Year == 1968)

# Step 2: Sort and select top 10
top_10_states_1968 <- data_1968 %>%
  arrange(desc(State.Minimum.Wage)) %>%
  head(10)

# Step 3: Create bar chart
bar_chart <- ggplot(top_10_states_1968, aes(x = reorder(State, -State.Minimum.Wage), y = State.Minimum.Wage)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Top 10 States with Highest Minimum Wage in 1968", x = "State", y = "Minimum Wage") +
  theme(axis.text.x = element_text(angle = 0, hjust = 0.1))

print(bar_chart)

