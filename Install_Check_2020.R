# Luc Bussiere
# Script for checking installations
# Aug 30, 2020

# You can execute this script in one of several ways:

# 1) Select the entire script (either with your mouse/trackpad or by using the shortcut CTRL-A (PC) or Cmd-A (Mac))

# 2) "Pass" the script to the console either by clicking on "Run" in the source window of RStudio (the one where this script opens) or by using the shortcut CTRL-ENTER or Cmd-ENTER)

# Start by clearing workspace
rm(list = ls())

# load libraries
library(tidyverse)


# load data
data("Orange")
Orange <- as_tibble(Orange)

# examine the first ten rows of the data
Orange

# reorder Trees in ascending order by number
levels(Orange$Tree) <- c("1", "2", "3", "4", "5")

# visualise growth in trees
Orange %>%
  ggplot(aes(x = age,
             y = circumference,
             group = Tree)) +
  geom_line(aes(colour = Tree)) +
  labs(x = "Age (d)",
       y = "Circumference (mm)",
       title = "INSERT YOUR NAME's first R plot") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
