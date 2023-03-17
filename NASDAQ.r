# Assignment is to makes a summary on a category of data in terms of daily trading on the NASDAQ exchange
# and visualize the findings box on a box plot graph

# The Assignment file's (NASDAQ.xlsx) is found in the operating subsystem I run on my PC
# $setwd("/home/nemorian/R/econometrics-2023-main/econometrics-2023")

# Read excel package is needed
library(readxl)

# The working file is assigned to nasdaq
nasdaq <- read_excel("NASDAQ.xlsx")

# Assign the Volume category to "volume" variable and scale the values to millions of $
volume <- nasdaq$IXIC.Volume/1e6  

# Descriptive statistical summary of the traded volumes across the dates in the sample
summary(volume)

# Boxplot visualisation of the summary
boxplot(volume, ylab = "Million $", col ="skyblue")

