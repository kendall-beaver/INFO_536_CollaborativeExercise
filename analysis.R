#########################################################
#
# Global Terrorism Database Collaborative Analysis
#
# Group 3 Objective: Analyze the Most Common Attack Types
#
#########################################################
# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data) #135 columns

#########################################################
# Role 1 : Antonio (Group the data by attack type.)
attack_type_counts <- gtd_data %>% #need the count of the types of attacks
  group_by(attacktype1, attacktype1_txt)  #group by attack type number classification and description
attack_type_counts

# View the grouped and prepped data
print(attack_type_counts)

#########################################################
# Role 2 Vishal Bhashyaam (Count the number of each attack type.)

attack_type_counts <- gtd_data %>% 
  count(attacktype1_txt) # use count inbuilt function to get the count fo attack types

print (attack_type_count) # printing attack types

#########################################################
# Role 3 : Kendall (Visualize the most common attack types using a bar chart.)


