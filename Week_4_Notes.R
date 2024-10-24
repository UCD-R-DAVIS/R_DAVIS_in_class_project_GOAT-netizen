## Load library and data -----
library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")

### if else() -----
#### from base R -----

surveys$hindfoot_cat <- ifelse(surveys$hindfoot_length <
                                 mean(surveys$hindfoot_length, na.rm = TRUE),
                               yes = "small", no = "big")

head(surveys$hindfoot_cat)
head(surveys$hindfoot_length)
summary(surveys$hindfoot_length)
surveys$record_id
unique(surveys$hindfoot_cat)

surveys %>%
  mutate(hindfoot_cat = case_when (
    hindfoot_length > 29.29 ~ "big", #hindfoot length over mean (29.29) I want to be reclassified as "big"
    TRUE ~ "small" # "else" part
  ))


surveys %>%
  mutate(hindfoot_cat = case_when(
    hindfoot_length > 31.5 ~ "big",
    hindfoot_length > 29 ~ "medium",
    is.na(hindfoot_length) ~ NA_character_,
    TRUE ~ "smalll"
  )) %>%
  select(hindfoot_length, hindfoot_cat) %>%
  head(10)

  library(tidyverse)
tail <-   read_csv('data/tail_length.csv')
surveys <- read_csv('data/portal_data_joined.csv')

dim(tail)
dim(surveys)  
head(tail)  

surveys_inner <- inner_join(x = surveys, y = tail)
dim(surveys_inner)
head(surveys_inner)


all(surveys$record_id %in% tail$record_id)
all(tail$record_id %in% surveys$record_id)


dim(surveys_inner)
surveys_left <- left_join(x = surveys, y = tail)
dim(surveys_left)
table(is.na(surveys_left$tail_length))

surveys_full <- full_join(surveys,tail)
dim(surveys_full)







