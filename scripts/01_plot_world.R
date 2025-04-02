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
  geom_sf(data = world, aes(fill = income_grp), color = "black") +
  coord_sf(xlim = st_bbox(australia)$xlim, ylim = st_bbox(australia)$ylim) +
  scale_fill_brewer(palette = "YlOrRd") +
  theme_bw()

# Plot the country
ggplot() +
  geom_sf(data = australia, aes(fill = name), color = "black") +
  scale_fill_brewer(palette = "Paired") +
  coord_sf(xlim = c(110, 155), ylim = c(-10, -45)) +
  theme_bw()

carmello_koala <- "gooey"
