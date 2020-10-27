## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  message = FALSE,  warning = FALSE,

  fig.height = 2.5,
  fig.width = 5,
  comment = "#>"
)

## ----eval=FALSE, echo=FALSE---------------------------------------------------
#  p <-
#    show_colors() +
#    theme_void() +
#    labs(subtitle = NULL) +
#    facet_wrap(~facet, nrow = 1) +
#    theme(strip.text = element_blank()) +
#    coord_fixed()
#  
#  p$layers[[1]]$aes_params$colour <- "black"
#  p$layers[[2]] <- NULL
#  
#  p

## ---- eval=FALSE--------------------------------------------------------------
#  sc("brightgreen2", "mutedblue3")
#  #> "#8FFF8F" "#5E82C9"

## -----------------------------------------------------------------------------
library(ggplot2)
library(simplecolors)

p <- 
  ggplot(mpg, aes(y = drv, fill = drv)) +
  geom_bar() 


p + scale_fill_manual(values = c("lightblue", "blue", "navyblue"))

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc("blue2", "blue3", "blue4"))


## ----eval=FALSE---------------------------------------------------------------
#  p + scale_fill_manual(values = c("#9DB9F1", "#4479E4", "#16439C"))

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_blue(light = 2:4))


## ----eval=FALSE---------------------------------------------------------------
#  sc_blue(light = 2:4)
#  #> "#9DB9F1" "#4479E4" "#16439C"

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_violet(light = 3:5, sat = "dull"))


## -----------------------------------------------------------------------------
p + scale_fill_manual(values = c("blue", "purple", "red"))

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_across("BVR"))

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_across(palette = "BVR", sat = "bright"))

## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_across(palette = "BVR", light = 4))


## -----------------------------------------------------------------------------
p + scale_fill_manual(values = sc_across(palette = "BGyR"))

## ----fig.height=4-------------------------------------------------------------
library(dplyr)

ggplot(mpg, aes(cty, hwy, color = hwy)) +
  geom_count(alpha = 0.8) +
  scale_color_gradient(
    low  = sc("brightorange3"), 
    high = sc("brightviolet3")
  )

## ---- fig.align="hold"--------------------------------------------------------
sc_green(return = "plot")
sc_across(palette = "RTVGy", light = 4, sat = "muted", return = "plot")

## -----------------------------------------------------------------------------
sc_pink(return = "table")

## ----eval=FALSE---------------------------------------------------------------
#  show_colors(labels = TRUE)

