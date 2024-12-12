# Create a dataset to represent hypothetical crop yields with different strategies
mitigation_data <- data.frame(
  Strategy = c("No Adaptation", "Crop Rotation", "Irrigation", "Improved Seeds"), # The strategies being compared
  Avg_Yield = c(1.5, 2.0, 2.5, 3.0) # Hypothetical yield improvements in metric tons per hectare
)

library(ggplot2)

#  bar chart
ggplot(mitigation_data, aes(x = Strategy, y = Avg_Yield, fill = Strategy)) +
  geom_bar(stat = "identity", show.legend = FALSE) + # Use bars to represent yield for each strategy
  labs(
    title = "How Adaptation Strategies Could Improve Crop Yield", # a title 
    x = "Adaptation Strategy", # Label the x-axis to show the strategies
    y = "Average Crop Yield (MT/HA)" # y-axis
  ) +
  theme_minimal() 