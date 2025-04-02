# Let's plot some cool stuff

# Install packages: uncomment if needed
# install.packages(c("rnaturalearth", "tidyverse", "sf"))

# Load packages
library(tidyverse)
library(sf)
library(rnaturalearth)

# Define objects
world <- ne_countries(type = "countries",
                      scale = "large")
world
australia <- ne_states(country = "Australia")
australia

# Plot the world
ggplot() +
  geom_sf(data = world, fill = "grey64", color = "black") +
  theme_bw()

# Plot the country
ggplot() +
  geom_sf(data = australia, fill = "grey64", color = "black") +
  theme_bw()

carmello_koala <- "gooey"
