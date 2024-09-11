# Global Terrorism Database Collaborative Analysis
# Hello
# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("/Users/vishalbhashyaam/Documents/GitHub/DS-public-interests/INFO_536_CollaborativeExercise/globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)


# Basic data exploration
glimpse(gtd_data)


# Work: Group 3 - Vishal Bhashyaam
# Role 2 - Count the attacks
attack_type_count <- gtd_data %>% 
  count(attacktype1_txt)

print (attack_type_count)
