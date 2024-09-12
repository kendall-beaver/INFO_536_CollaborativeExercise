# Global Terrorism Database Collaborative Analysis
# Hello
# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)


# Basic data exploration
glimpse(gtd_data)



