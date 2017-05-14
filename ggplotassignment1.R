library(ggplot2)

titanic <- read.csv(file = 'titanic_clean.csv', stringsAsFactors = FALSE)
str(titanic)

ggplot(titanic, aes(x = factor(pclass), fill = factor(sex))) + geom_bar(position = 'dodge') + 
  facet_grid(. ~ survived)
