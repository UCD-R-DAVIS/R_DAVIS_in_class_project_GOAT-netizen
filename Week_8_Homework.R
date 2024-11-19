## Data Import
mloa <- read_csv("https://raw.githubusercontent.com/gge-ucd/R-DAVIS/master/data/mauna_loa_met_2001_minute.csv")
str(mloa)
summary(mloa)
library(tidyverse)
library(lubridate)

mloa2 = mloa %>%
  # Remove NA's
  filter(rel_humid != -99) %>%
  filter(temp_C_2m != -999.9) %>%
  filter(windSpeed_m_s != -999.9) %>%
  mutate(datatime = ymd_hm(paste0(year, "-",
                                  month, "-",
                                  day< ",",
                                  hour24, ":",
                                  min),
                           tz = "UTC")) %>%  
mutate(datetimeLocal = with_tz(datatime, tz = "Pacific/Honolulu"))

## Plot

mloa %>%
  mutate(localMon = month(datetimeLocal, label = TRUE),
         localHour = hour(datetimeLocal)) %>%
  group_by(localMon, localHour) %>%
  summarize(meantemp = mean(temp_C_2m)) %>%
  ggplot(aes(x = localMon,
             y = meantemp)) +
  geom_point(aes(col = localHour)) +
  scale_color_viridis_c() +
  xlab("Month") +
  ylab("Mean temperature (degrees C)") +
  theme_classic()
  