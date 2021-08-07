

# Unir base de datos. R

# Gina Vargas

# 05/08/2021

library(tidyr)
library(dplyr)

crop_data <- tibble(read.csv("Datos/Maize_Cordoba_Crop.csv"))

soil_data <- tibble(read.csv("Datos/Maize_Cordoba_Soil.csv"))

crop_data ; soil_data

alldata <- crop_data %>% left_join(soil_data, by = "Soil_ID")
alldata

summary(alldata) 

# para filtrar solo que tengan materia organica

soil_data %>% filter(Organic_Matter_Content=="BAJA")

soil_data_low_OM <- soil_data %>% filter(Organic_Matter_Content=="BAJA")

soil_data_low_OM

left_crop <- crop_data %>% left_join(soil_data_low_OM, by=c("Soil_ID"="Soil_ID")) 
left_crop

inner_crop <- crop_data %>% inner_join(soil_data_low_OM,by="Soil_ID")

right_crop <- crop_data %>% right_join(soil_data_low_OM,by="Soil_ID")

crop_data %>% semi_join(soil_data_low_OM, by= "Soil_ID")

band_members

band_instruments

band_members %>% full_join(band_instruments2, by = c("name"="artist"))

