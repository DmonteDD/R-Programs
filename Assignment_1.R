library(tidyverse)
library(dplyr)
#setwd("F:/MCS/Data Analytics/Assignments/Assignment 1")
#getwd()

#1 Read data from csv files "Demographic data.csv" and "Credit Bureau data.csv" in a dataframe/Tibble, replace empty strings with NA
CBD_data <- read.csv("Credit Bureau data.csv")
DD_data <- read.csv("Demographic data.csv")
CBD_data[DD_data == ''] <- NA
DD_data[DD_data == ''] <- NA

#dplyr::mutate_all(CBD_data, funs(replace(., . == "", NA)))
#write.csv(CBD_data,"F:/MCS/Data Analytics/Assignments/Assignment 1/op1.csv")
#dplyr::mutate_all(DD_data, funs(replace(., . == "", NA)))
#write.csv(DD_data,"F:/MCS/Data Analytics/Assignments/Assignment 1/op2.csv")

#2 Remove duplicates from both the files.
CBD_data %>% distinct()
DD_data %>% distinct()

#4 Merge both dataframes/Tibble on Application.ID. Choose a suitable join method 
df<-merge(x=CBD_data,y=DD_data,by="Application.ID")

#7 Plot a suitable frequency plot to display Gender and Education
ggplot(DD_data,aes(Education)) +
geom_bar()
ggplot(DD_data,aes(Gender)) +
geom_bar()
