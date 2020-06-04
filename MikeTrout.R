AB <- c(123, 559, 589, 602, 575, 549, 402, 471, 470)
HR <- c(5, 30, 27, 36, 41, 29, 33, 39, 45)
Season <- seq(2011, 2019)

Over_35_homers <- Season[HR > 35]
Over_35_homers

max_Trout_hr_Year <- Season[max(HR) == HR]
max_Trout_hr_Year

HR_Rate <- HR / AB
HR_Rate

stripchart(HR_Rate, pch=19)

plot(Season, HR_Rate)

sum(HR)

sum(HR[Season > 2015])
sum(HR[Season <= 2015])

Cumulative_HR_Rate <- sum(HR) / sum(AB)
Cumulative_HR_Rate

