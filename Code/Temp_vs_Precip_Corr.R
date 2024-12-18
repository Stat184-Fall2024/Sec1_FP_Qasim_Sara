library(ggplot2)

data <- read.csv("climate_change_impact_on_agriculture_2024.csv")  

# calculating the correlations
temp_yield_corr <- cor(data$Average_Temperature_C, data$Crop_Yield_MT_per_HA)
precip_yield_corr <- cor(data$Total_Precipitation_mm, data$Crop_Yield_MT_per_HA)

# Plot 1: Crop Yields vs Temperature
ggplot(data, aes(x = Average_Temperature_C, y = Crop_Yield_MT_per_HA)) + #scatter plot
  geom_point(color = "blue", alpha = 0.6) +  # Add points
  labs(
    title = "Crop Yields vs Temperature",
    subtitle = paste("Correlation:", round(temp_yield_corr, 2)),
    x = "Average Temperature (°C)", #x axis name
    y = "Crop Yield (Metric Tons per Hectare)" #y axis name
  ) +
  theme_minimal() 

# Plot 2:Crop Yields vs Precipitation
ggplot(data, aes(x = Total_Precipitation_mm, y = Crop_Yield_MT_per_HA)) +
  geom_point(color = "green", alpha = 0.6) +  
  labs(
    title = "Crop Yields vs Precipitation", #title of graph
    subtitle = paste("Correlation:", round(precip_yield_corr, 2)),
    x = "Total Precipitation (mm)", #
    y = "Crop Yield (Metric Tons per Hectare)"
  ) +
  theme_minimal()  # theme
