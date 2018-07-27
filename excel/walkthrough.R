install.packages("readxl")
library(readxl)

drug_deaths <- read_excel("data/DrugDeaths.xlsx")

drug_deaths1 <-read_excel("data/StatisticsSummary.xls", skip=2)

drug_deaths1$`Other Cases`

colnames(drug_deaths1) <- make.names(colnames(drug_deaths1))

library(dplyr)

drug_deaths1 <- rename(drug_deaths1, percent_cremated=X..incl.crem)
drug_deaths1 <- rename(drug_deaths1, Year=Fiscal.Year......7.1.6.30)

drug_deaths1 <- subset(drug_deaths, !is.na(Year))

drug_deaths1 <- filter(drug_deaths1, !is.na(Year))
