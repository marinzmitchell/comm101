library(palmerpenguins)
library(ggplot2)

# Edit code to match figures -------------------------------------------------
# At the end of the guided notes for the second video you'll find three figures.
# Edit the following code so the outputs match the figures in the notes.

# Figure 1
ggplot(penguins, aes(bill_depth_mm)) +
  geom_histogram()

# Figure 2
ggplot(penguins, aes(species, flipper_length_mm)) +
  geom_boxplot()

# Figure 3
ggplot(penguins, aes(body_mass_g, flipper_length_mm, color = island)) +
  geom_point()









library(palmerpenguins)
library(ggplot2)

#Scales customize the expression of mapping

#Manually overide default values
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point()

#use a colorblind-friendly palette instead
okabe_ito <- c("#E69f00", "#56B4e9","#009e73", "#F0E442","#0072B2")
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point()+
  scale_color_manual(values =  )
