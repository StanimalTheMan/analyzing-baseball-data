library(Lahman)
library(tidyverse)
library(dplyr)

Batting %>%
  group_by(playerID) %>%
  summarize(tAB = sum(AB, na.rm = TRUE),
            tHR = sum(HR, na.rm = TRUE),
            tSO = sum(SO, na.rm = TRUE)) -> long_careers

Batting_5000 <- filter(long_careers, tAB >= 5000)

head(Batting_5000)

ggplot(Batting_5000, aes(x = tHR / tAB, y = tSO / tAB)) +
  geom_point() + geom_smooth()
