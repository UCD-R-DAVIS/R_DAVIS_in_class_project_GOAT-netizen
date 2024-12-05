library(tidyverse)
surveys <- read.csv("data/portal_data_joined.csv")

#Part 1
#using for loop
#print longest species name
#foreachtaxa
#nchar() = #characters

for(i in unique(surveys$taxa)){
  mytaxon <- surveys %>% filter(taxa== i)
  print(i)
  
  myspecies <- unique(mytaxon$species)
  maxlength <- max(nchar(mypsecies))
                   
  
  print(mytaxon %>% filter(nchar(species) == maxlength) %>%
    select(species) %>% unique ())
}

##Part 2


mloa <- read_csv("https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/master/data/mauna_loa_met_2001_minute.csv")

mycols <- mloa %>% select("windDir","windSpeed_m_s",
                          "baro_hPa",
                          "temp_C_2m",
                          "temp_C_10m",
                          "temp_C_towertop",
                          "rel_humid", 
                          "precip_intens_mm_hr")
mycols %>% map(max, na.rm = T)

#Part 3
C_to_F <- function(x){
  x * 1.8 + 32
}

mloa$temp_F_2m <- C_to_F(mloa$temp_C_2m)
mloa$temp_F_10m <- C_to_F(mloa$temp_C_10m)
mloa$temp_F_towertop <- C_to_F(mloa$temp_C_towertop)


