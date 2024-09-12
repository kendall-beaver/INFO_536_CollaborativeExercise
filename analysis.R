# Global Terrorism Database Collaborative Analysis

##### Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)

##Role 1 : Antonio 
#Group the data by attack type
attack_type_counts <- gtd_data %>%#need the count of the types of attacks
  group_by(attacktype1, attacktype1_txt)  #group by attack type number classification and description


# View the grouped and prepped data
print(attack_type_counts)


# Work: Group 3 - Vishal Bhashyaam
# Role 2 - Count the number of each attack type 
attack_type_counts <- gtd_data %>% 
  count(attacktype1_txt) # use count inbuilt function to get the count fo attack types

print (attack_type_count) # printing attack types 