# Global Terrorism Database Collaborative Analysis

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)

#How many attacks 
attacks_per_year <- gtd_data %>%
  count(iyear)

# Plot the results
ggplot(attacks_per_year, aes(x = iyear, y = n)) +
  geom_bar(stat = "identity") +
  labs(title = "Number of Terrorist Attacks Per Year",
       x = "Year", y = "Number of Attacks") +
  theme_minimal()
#test with data above 

##Role 1 : Antonio 
#Group the data by attack type
attack_type_counts <- gtd_data %>%#need the count of the types of attacks
  group_by(attacktype1, attacktype1_txt)  #group by attack type number classification and description


# View the grouped and prepped data
print(attack_type_counts)


