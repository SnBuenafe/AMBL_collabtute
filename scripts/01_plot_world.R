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
  geom_sf(data = australia, fill = "blue", color = "black") +
  theme_bw()

# Add Australian capital cities
# Create a data frame with capital cities coordinates
aus_capitals <- data.frame(
  city = c("Canberra", "Sydney", "Melbourne", "Brisbane", "Perth", "Adelaide", "Hobart", "Darwin"),
  lon = c(149.1300, 151.2093, 144.9631, 153.0251, 115.8575, 138.6007, 147.3272, 130.8456),
  lat = c(-35.2809, -33.8688, -37.8136, -27.4698, -31.9505, -34.9285, -42.8821, -12.4634)
)

# Plot Australia with capital cities as stars
ggplot() +
  geom_sf(data = australia, fill = "grey64", color = "black") +
  geom_point(data = aus_capitals, aes(x = lon, y = lat),
             shape = 8, size = 3, color = "red") +  # Shape 8 is a star
  geom_text(data = aus_capitals, aes(x = lon, y = lat, label = city),
            nudge_y = -0.5, size = 3) +
  labs(title = "Australian States with Capital Cities") +
  theme_bw()

#angela's chocolate obsession
carmello_koala <- "gooey"

