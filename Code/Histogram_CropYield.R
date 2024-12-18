# Load necessary library
library(ggplot2)
data <- read.csv("climate_change_impact_on_agriculture_2024.csv")
head(data) #look at data prior
# Plot the histogram for crop yields
ggplot(data, aes(x = Crop_Yield_MT_per_HA)) + 
  geom_histogram( #Create histogram
    binwidth = 0.5, 
    fill = "steelblue", 
    color = "black", 
    alpha = 0.7
  ) +
  labs(
    title = "Distribution of Crop Yields",
    subtitle = "A closer look at the spread of crop yields across regions",
    caption = "Source: Climate Change Impact on Agriculture Dataset",
    x = "Crop Yield (Metric Tons per Hectare)",
    y = "Frequency"
  ) +
  theme_minimal()
