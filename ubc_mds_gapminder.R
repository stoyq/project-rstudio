library(tibble)
library(dplyr)

options(
        digits = 15, 
        scipen = 999, 
        pillar.sigfig = 15
)

print("--- Gapminder Exercise ---")


# read in the CSV file into a data frame
df <- read.csv("./data/gapminder_Canada.csv")

# convert into a tibble
tib <- as_tibble(df)

tib



summary <- tibble(
                  Column_Name = character(),
                  Mean = numeric(),
                  Variance = numeric()
)


for(col in c(2:ncol(tib))) {
  c1 <- names(tib[,col])
  c2 <- round(mean(tib[[col]]), 2)
  c3 <- round(var(tib[[col]]), 2)
  summary <- add_row(summary, Column_Name=c1, Mean=c2, Variance=c3)
}

summary

# UBC MDS solution
lapply(tib[2:5], mean)
lapply(tib[2:5], var)
