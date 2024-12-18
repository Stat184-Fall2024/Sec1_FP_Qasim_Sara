library(ggplot2)

data_climate_impact <- read.csv("climate_change_impact_on_agriculture_2024.csv") 

#Create the scatter plot
ggplot(data_climate_impact, aes(x = Extreme_Weather_Events, # names
                                y = Economic_Impact_Million_USD, 
                                color = Crop_Yield_MT_per_HA)) +
  geom_point(alpha = 0.7, size = 3) + #specifc graph aesthetics
  scale_color_viridis_c(name = "Crop Yield (MT/HA)") +
  labs(
    title = "Economic Impact vs. Extreme Weather Events by Crop Yield",
    x = "Number of Extreme Weather Events",
    y = "Economic Impact (Million USD)"
  ) +
  theme_minimal()
