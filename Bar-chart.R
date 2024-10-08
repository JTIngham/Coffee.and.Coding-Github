library(dplyr)
library(ggplot2)

# Let's look at guinea pig tooth growth!

data(ToothGrowth)

?ToothGrowth

ggplot(data = ToothGrowth, aes(x = supp, y = len)) +
  geom_col(aes(fill = dose), position = "dodge2") +
  labs(title = "Guinea Pig Tooth Growth",
       y = "Tooth Length")

# I'd better start giving my guinea pigs some oj...

ggplot(data = ToothGrowth, (aes(x = dose, y = len))) +
  geom_line(aes(colour = supp))
