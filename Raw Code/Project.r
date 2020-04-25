library(tidyverse)
data("ToothGrowth")

str(ToothGrowth)
head(ToothGrowth)

#Graphs for Exploratory Analysis
ToothGrowth %>% ggplot(aes(as.factor(dose),len, fill = supp)) +
        facet_grid(.~ supp) +
        geom_col() +
        labs(x = "Dose", y = "Length")

ToothGrowth %>% ggplot(aes(as.factor(dose),len, fill = supp)) +
        facet_grid(.~ supp) +
        geom_boxplot() +
        labs(x = "Dose", y = "Length") +
        ggtitle("Figure #1: Tooth Length By Dose Per Supplement")
summary(ToothGrowth)

#test if there is a difference due to supplement
t.test(ToothGrowth$len ~ ToothGrowth$supp, paired = FALSE, var.equal = FALSE)

#split the data frame so there are three, one for each dosage
dose0.5 <- subset(ToothGrowth, ToothGrowth$dose==c(0.5))
dose2 <- subset(ToothGrowth, ToothGrowth$dose==c(2))
dose1   <- subset(ToothGrowth, ToothGrowth$dose==c(1))

#t-test for each of the dosages
t.test(dose0.5$len ~ dose0.5$supp, paired = FALSE, var.equal = FALSE)

t.test(dose1$len ~ dose1$supp, paired = FALSE, var.equal = FALSE)

t.test(dose2$len ~ dose2$supp, paired = FALSE, var.equal = FALSE)

