## Github and R - 
library(rmarkdown)
library(tidyverse)

# Read data
data <- read.csv("C:/Users/miche/Desktop/CSP 2020 Courses/CSP2020_github_and_R/CSP2020_github_workflow_project/zooAnimal_medianLifeExpectancy_Jul2018.csv", header=T)
str(data)
head(data)

# Create summaries
Taxon_Summaries <- data %>% 
                      group_by(TaxonClass) %>% 
                        summarise(avgMLE = mean(Overall.MLE, na.rm=T),
                                           minMLE = min(Overall.MLE, na.rm=T),
                                           maxMLE = max(Overall.MLE, na.rm=T))


Taxon_Summaries %>% filter(TaxonClass!="Arachnida")
