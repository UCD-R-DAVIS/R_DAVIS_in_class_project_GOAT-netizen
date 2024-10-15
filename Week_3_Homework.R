## Week 3 Homework -----
surveys <- read.csv("data/portal_data_joined.csv") #reading the data in

colnames(surveys) #a list of the column names
surveys_base <- surveys[1:5000, c(6, 9, 13)] #selecting rows 1:5000 and just columns 6, 9, and 13

surveys_base <- surveys_base[complete.cases(surveys_base), ] #selecting only the ROWS that have complete cases (no NAs)

surveys_base$species_id <- factor(surveys_base$species_id) #converting factor data to character 

surveys_base$plot_type <- factor(surveys_base$plot_type) #converting factor data to chracter

### Experimentation of factors ----
levels(surveys_base$species_id)

typeof(surveys_base$species_id)

class(surveys_base$species_id)
