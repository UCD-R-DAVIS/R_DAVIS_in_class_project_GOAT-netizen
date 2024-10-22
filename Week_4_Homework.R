# Week 4 Homework ------
library(tidyverse)

## Subset surveys using Tidyverse methods to keep rows with weight between 30 and 60, and print out the first 6 rows.

surveys <- read_csv("data/portal_data_joined.csv")
surveys

surveys %>% 
  filter(weight > 30 & weight < 60)

## Sort the tibble to take a look at the biggest and smallest species + sex combinations. HINT: it’s easier to calculate max if there are no NAs in the dataframe…

biggest_critters <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  summarise(max_weight = max(weight))

## Question 4
biggest_critters %>% arrange(max_weight)

biggest_critters %>% arrange(desc(max_weight))

surveys %>% 
  filter(is.na(weight)) %>% 
  group_by(species) %>% 
  tally() %>% 
  arrange(desc(n))

surveys %>% 
  filter(is.na(weight)) %>% 
  group_by(plot_id) %>% 
  tally() %>% 
  arrange(desc(n))
