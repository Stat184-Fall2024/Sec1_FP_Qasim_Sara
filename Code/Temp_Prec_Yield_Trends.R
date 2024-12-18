library(ggplot2)
library(dplyr)

data <- read.csv("climate_change_impact_on_agriculture_2024.csv")
head(data) #check data
# Aggregate the data to calculate annual means
annual_means <- data %>%
  group_by(Year) %>%
  summarize(
    Average_Temperature_C = mean(Average_Temperature_C, na.rm = TRUE),
    Total_Precipitation_mm = mean(Total_Precipitation_mm, na.rm = TRUE),
    Crop_Yield_MT_per_HA = mean(Crop_Yield_MT_per_HA, na.rm = TRUE)
  )

# Create temperature trend plot
ggplot(annual_means, aes(x = Year, y = Average_Temperature_C)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "blue", size = 2) +
  labs(title = "Global Annual Trends: Temperature", y = "Average Temperature (°C)", x = "Year") +
  theme_minimal()

# Create precipitation trend plot
ggplot(annual_means, aes(x = Year, y = Total_Precipitation_mm)) +
  geom_line(color = "green", size = 1) +
  geom_point(color = "green", size = 2) +
  labs(title = "Global Annual Trends: Precipitation", y = "Average Precipitation (mm)", x = "Year") +
  theme_minimal()

# Create crop yield trend plot
ggplot(annual_means, aes(x = Year, y = Crop_Yield_MT_per_HA)) +
  geom_line(color = "orange", size = 1) +
  geom_point(color = "orange", size = 2) +
  labs(title = "Global Annual Trends: Crop Yields", y = "Average Crop Yield (Metric Tons per Hectare)", x = "Year") +
  theme_minimal()
