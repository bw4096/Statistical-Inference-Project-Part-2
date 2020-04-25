library(tidyverse)
data("ToothGrowth")

str(ToothGrowth)
head(ToothGrowth)

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
