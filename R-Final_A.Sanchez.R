# Final Assignment ----
## Question 1 ----

# load readr
library(readr)

#define URL of the csv. file
url <- "https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv"
#read CSV file from the URL
tyler_data <- read_csv(url)

## Question 2 ----
# Filter out any non-running activities 
running_data <- tyler_data[tyler_data$sport == "Running", ]

## Question 3 ----
# Normal Running: filter fast and short laps
filtered_running_data <- running_data[
  running_data$minutes_per_mile >= 5 & 
    running_data$minutes_per_mile <= 10 & 
    running_data$total_elapsed_time_s > 60, 
]

## Question 4 ----
#New date column (day,month, year)
filtered_running_data$date <- as.Date(paste(filtered_running_data$year, 
                                            filtered_running_data$month, 
                                            filtered_running_data$day, 
                                            sep = "-"))
# Grouped time observations
filtered_running_data$period <- cut(filtered_running_data$date, 
                                    breaks = as.Date(c("2000-01-01", "2024-01-01", "2024-07-01", "2024-12-31")),
                                    labels = c("Pre-2024", "Jan-Jun 2024", "Jul-Dec 2024"),
                                    include.lowest = TRUE)

## Question 5 ----
# Scatter plot
library(ggplot2)
names(filtered_running_data)
ggplot(filtered_running_data, aes(x = minutes_per_mile, y = steps_per_minute)) +
  geom_point() +
  labs(title = "SPM vs. Speed",
       x = "Speed (minutes per mile)", 
       y = "SPM (strides per minute)")


print(ggplot(filtered_running_data, aes(x = minutes_per_mile, y = steps_per_minute)) +
        geom_point() +
        labs(title = "SPM vs. Speed",
             x = "Speed (minutes per mile)", 
             y = "SPM (strides per minute)") 
)

## Question 6 ----
#Aesthetic changes
print(ggplot(filtered_running_data, aes(x = minutes_per_mile, y = steps_per_minute)) +
        geom_point(alpha = 0.7, color = "blue", size = 2) +
        labs(title = "SPM vs. Speed",
             x = "Speed (minutes per mile)", 
             y = "SPM (strides per minute)") +
        theme_minimal()
)




