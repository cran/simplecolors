## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE,
  comment = "#>"
)

## ---- echo = FALSE------------------------------------------------------------
library(dplyr)
library(ggplot2)
library(simplecolors)

## -----------------------------------------------------------------------------
sc("red", "violet", "pink")

## -----------------------------------------------------------------------------
sc("brightblue4", "mutedorange5", "grey3")

## ----echo=F, eval=F-----------------------------------------------------------
#  p1 <-
#    sc_within(hue = "teal", light = 1:5, sat = "bright", return = "plot") +
#    labs(title = 'sc_within(hue = "teal", light = 3:5, sat = "bright")')
#  
#  p2 <-
#    sc_across(palette = "RTVGy", light = 4, sat = "muted", return = "plot") +
#    labs(title = 'sc_across(palette = "RTVGy", light = 4, sat = "muted")')
#  
#  p3 <-
#    sc_red(1:4, "bright", return = "plot") +
#    labs(title = 'sc_red(1:4, "bright")')
#  
#  gridExtra::grid.arrange(p1, p2, p3, nrow = 1)

## -----------------------------------------------------------------------------
sc_within(hue = "teal", light = 3:5, sat = "bright")

## -----------------------------------------------------------------------------
sc_across(palette = "OTVGy", light = 4, sat = "muted")

## -----------------------------------------------------------------------------
sc_within(hue = "blue", light = 2:5, sat = "") #defaults

## -----------------------------------------------------------------------------
sc_within(hue = "blue", return = "table")

## -----------------------------------------------------------------------------
sc_within(hue = "blue", return = "plot")

## -----------------------------------------------------------------------------
sc_across(palette = "ROY", light = 3)

## -----------------------------------------------------------------------------
sc_across(palette = "ROY", light = 3, return = "table")

## -----------------------------------------------------------------------------
sc_across(palette = "ROY", light = 3, sat = "bright", return = "plot")


## -----------------------------------------------------------------------------
color_table %>% 
  distinct(color, letter)

## -----------------------------------------------------------------------------
sc_red(1:4, "bright")

## -----------------------------------------------------------------------------
sc_blue(5:2, return = "table")

## -----------------------------------------------------------------------------
sc_pink(c(1,3,5), sat = "dull", return = "plot")

## -----------------------------------------------------------------------------
blue_and_red <-  c(
  sc_blue(4:2, "bright"), 
  sc_red(2:4, "bright")
)

iris %>% 
  mutate(cut = ntile(Sepal.Length, 6)) %>% 
  ggplot(aes(Sepal.Width, Sepal.Length, color = factor(cut))) +
  geom_count(size = 5) +
  #setting your custom gradients
  scale_color_manual(values = blue_and_red) +
  theme_minimal()

