library(palmerpenguins)
library(moments)
library(car)
library(ggplot2)

data(penguins)

penguins

str(penguins)

dim(penguins)

summary(penguins)

colSums(is.na(penguins))

body_mass <- penguins$body_mass_g

mean(body_mass, na.rm = TRUE)

median(body_mass, na.rm = TRUE)

min(body_mass, na.rm = TRUE)

max(body_mass, na.rm = TRUE)

var(body_mass, na.rm = TRUE)

sd(body_mass, na.rm = TRUE)

quantile(body_mass, 0.25, na.rm = TRUE)

quantile(body_mass, 0.75, na.rm = TRUE)

IQR(body_mass, na.rm = TRUE)

skewness(body_mass, na.rm = TRUE)

kurtosis(body_mass, na.rm = TRUE)


species_stats <- aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = function(x) {
    c(
      Mean = mean(x, na.rm = TRUE),
      Median = median(x, na.rm = TRUE),
      Minimum = min(x, na.rm = TRUE),
      Maximum = max(x, na.rm = TRUE),
      Variance = var(x, na.rm = TRUE),
      SD = sd(x, na.rm = TRUE),
      Q1 = quantile(x, 0.25, na.rm = TRUE),
      Q3 = quantile(x, 0.75, na.rm = TRUE),
      IQR = IQR(x, na.rm = TRUE),
      Skewness = skewness(x, na.rm = TRUE),
      Kurtosis = kurtosis(x, na.rm = TRUE)
    )
  }
)

species_stats