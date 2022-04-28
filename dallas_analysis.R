library(ggplot2)
library(tidyverse)

dallas_d <- unique(dallas)

dallas_d

dallas_f = subset(dallas_d, X..of.Decks >= 10)

dallas_l <- dallas_f[-7,]
dallas_l <- dallas_l[-7,]

dallas_l

library(ggplot2)

p<-ggplot(data=dallas_l, aes(x=X..of.Decks, y=Archetype)) +
  geom_bar(stat="identity")
p

z<-ggplot(data=dallas_l, aes(x=X..of.Decks, y=Archetype)) +
  geom_bar(stat="identity")
z + aes(x = fct_reorder(dallas_l$X..of.Decks, dallas_l$Archetype, .desc = TRUE))

z <- ggplot(data=dallas_l, aes(x = X..of.Decks, y = reorder(Archetype, X..of.Decks), fill=Archetype)) + geom_bar(stat = "identity") +
  theme(legend.position="none") + labs(title = "SCGCON Dallas Modern 30k Metagame Breakdown", x = "Deck Representation", y = "Archetypes")

z


f <- ggplot(data=dallas_l, aes(x=Archetype, y=MW..)) + geom_bar(stat="identity")
f <- f + aes(x = fct_reorder(Archetype, MW.., .desc = FALSE), fill=Archetype) + coord_flip() +   theme(legend.position="none") + labs(title = "SCGCON Dallas Modern 30k Win Rates", x = "Archetypes", y = "Win Percentage")
