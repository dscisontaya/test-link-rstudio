library(tidyverse)

df <- read_csv("data/hw1_data.csv")

## Column name
colnames(df)

## the first 2 rows
head(df,2)

## number of observations
nrow(df)

## the last 2 rows
tail(df,2)

## Ozone in the 47th row
df$Ozone[[47]]

## missing values in Ozone
sum(is.na(df$Ozone))

## mean of Ozone
good <- complete.cases(df$Ozone)
mean(df$Ozone[good])

# Extract the subset of rows of the data frame where Ozone values
# are above 31 and Temp values are above 90.
# What is the mean of Solar.R in this subset?
df1 <- df %>% filter(Ozone>31 & Temp>90)
mean(df1$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6?
df2 <- df %>% filter(Month==6)
mean(df2$Temp)

# What was the maximum ozone value in the month of May
# (i.e. Month is equal to 5)?
df3 <- df %>% filter(Month==5)
max(df3$Ozone[complete.cases(df3$Ozone)])
