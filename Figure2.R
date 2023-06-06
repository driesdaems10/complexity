## Set wd,  read in data and load packages
library(ggplot2)

setwd("")
df1 <- read.csv("Turchin_et_al_2018_1.csv")
df2 <- read.csv("Turchin_et_al_2018_2.csv")
# library(tidyverse)


# Plot 1

ggplot(data = df2) +
  aes(x = Time, y = V1, color = factor(NGA)) +
  # geom_point() +
  geom_line(data = df2) +
  geom_smooth(color = '#3e38e8', fill = "#9794f2", size = 2) + 
  labs(x = "Time",
       y = 'PC1') +
  theme(legend.position = "none",
        panel.background = element_rect(fill = "white",
                                        colour = "white",
                                        size = 0.5, linetype = "solid"),
        panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                        colour = "grey80"), 
        panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                        colour = "grey80"),
        axis.text.x = element_text(color = "grey10", size = 16, face = "plain"),
        axis.text.y = element_text(color = "grey10", size = 16, face = "plain"),  
        axis.title.x = element_text(color = "grey10", size = 20, face = "italic"),
        axis.title.y = element_text(color = "grey10", size = 20, face = "italic")) +
  scale_colour_manual(values = rep('#77777a', 31))

  

# Plot 2 --> Figure 2

# Filter Konya plain for PC1 plot
konyaPC1 <- subset(df2, df2$NGA == 'Konya Plain')

ggplot(data = konyaPC1) +
  aes(x = Time, y = V1) +
  geom_line(data = konyaPC1, size = 2, colour = "black") +
  geom_point(size = 4) +
  labs(x = "Time",
       y = 'PC1') +
  theme(panel.background = element_rect(fill = "white",
                                        colour = "white",
                                        size = 0.5, linetype = "solid"),
        panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                        colour = "grey80"), 
        panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                        colour = "grey80"),
        axis.text.x = element_text(color = "grey10", size = 16, face = "plain"),
        axis.text.y = element_text(color = "grey10", size = 16, face = "plain"),  
        axis.title.x = element_text(color = "grey10", size = 20, face = "italic"),
        axis.title.y = element_text(color = "grey10", size = 20, face = "italic"))



