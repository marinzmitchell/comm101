library(palmerpenguins)
library(ggplot2)

#Scales customize the exoression of mapping

#manually overide default values
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point()

# use the colorblind palette instead
okobe_ito <- c("#E69F00","#56B4E9","#009E73","#F0E442","#0072B2")
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point() +
  scale_color_manual(values = okobe_ito)

#we can do this with shapes
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okobe_ito) +
  scale_shape_manual(values = 21:25)

#Built in and custom themes

#I like theme_bw() [built-in]
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okobe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw()

# move legend inside the figure panel
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okobe_ito) +
  scale_shape_manual(values = 21:25) +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0))


#fix the labels
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     fill = species,
                     shape = species)) +
  geom_point() +
  scale_fill_manual(values = okobe_ito) +
  scale_shape_manual(values = 21:25) +
  labs(x = "Body mass (g)",
       y = "Flipper length (m)",
       fill = "Species",
       shape = "Species") +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0))


