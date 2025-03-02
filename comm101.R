library(marinecs100b)
library(ggplot2)




# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
a histogram is used to visualize a single contnuous variable

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
a scatter plot


?ggsave()

?woa_sal

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.

ggplot(woa_sal, aes(x = salinity)) +
  geom_histogram()


# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.

ggplot(woa_sal, aes(x = salinity, y = ocean)) +
  geom_boxplot()

# P5 Interpret your figures from P3 and P4. What patterns do you notice?

P3 - when salinity is between 30-40 count is high

P4 - allows us to see the salinity data representation bewteen the different
ocean basins


# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.


# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.

ggplot(woa_sal,aes(x = salinity, y = latitude)) +
  geom_point()

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.

changing the color:


ggplot(woa_sal,aes(x = salinity,
                   y = latitude,
                   color = ocean,
                   shape = ocean)) +
  geom_point()+
  theme_bw()
  scale_color_manual(vaule = ocean)
  scale_shape_manual(values = 15:19)





  ggplot(woa_sal,aes(x = salinity,
                     y = latitude,
                     fill = ocean,
                     shape = ocean)) +
    geom_point()+
    scale_fill_manual(vaule = ocean)
  scale_shape_manual(values = 15:19)

