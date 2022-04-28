library(ggplot2)
library(tidyverse)

d_10k <- unique(dallas_10k)

d_10k
d_10k_f = subset(d_10k, X..of.Decks >= 4)

d_10k_l <- d_10k_f[-2,]

z10k <-ggplot(data=d_10k_l, aes(x=X..of.Decks, y=Archetype)) +
  geom_bar(stat="identity")
z10k + aes(x = fct_reorder(d_10k_l$X..of.Decks, dallas_l$Archetype, .desc = TRUE))

z10k <- ggplot(data=d_10k_l, aes(x = X..of.Decks, y = reorder(Archetype, X..of.Decks), fill=Archetype)) + geom_bar(stat = "identity") +
  theme(legend.position="none") + labs(title = "SCGCON Dallas Modern 10k Metagame Breakdown", x = "Deck Representation", y = "Archetypes")

f10k <- ggplot(data=d_10k_l, aes(x=Archetype, y=MW..)) + geom_bar(stat="identity")
f10k <- f10k + aes(x = fct_reorder(Archetype, MW.., .desc = FALSE), fill=Archetype) + coord_flip() +   theme(legend.position="none") + labs(title = "SCGCON Dallas Modern 10k Win Rates", x = "Archetypes", y = "Win Percentage")

