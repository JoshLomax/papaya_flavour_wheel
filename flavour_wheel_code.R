library(tidyverse)
library(geomtextpath)


sensory <- tribble(
  ~ attribute,
  ~ descriptors,
  ~ definition,
  ~ reference,
  ~ category,
  
  
  # Aroma
  "Aroma intensity",
  "Aroma none-High",
  "The overall aroma intensity from none to high",
  "n/a",
  "Aroma",
  
  "Sweet fruit",
  "Honeydew melon",
  "Aroma of fresh sweet fruit such as honeydew melon or mango",
  "~1x2 cm³ cut honeydew melon piece without skin, 1ml orange juice (Golden Circle, no added sugar, Orange Juice, long life)",
  "Aroma",
  
  "Sweet fruit",
  "Mango",
  "Aroma of fresh sweet fruit such as honeydew melon or mango",
  "~1x2 cm³ cut honeydew melon piece without skin, 1ml orange juice (Golden Circle, no added sugar, Orange Juice, long life)",
  "Aroma",
  
  "Musty-off note",
  "Over-ripe rock melon",
  "Aroma of ripe rock melon, over-ripe fruit, sulphurous, fermented",
  "~1x2 cm³ cut rock melon piece with skin",
  "Aroma",
  
  "Musty-off note",
  "Sulphurous",
  "Aroma of ripe rock melon, over-ripe fruit, sulphurous, fermented",
  "~1x2 cm³ cut rock melon piece with skin",
  "Aroma",
  
  "Musty-off note",
  "Fermented",
  "Aroma of ripe rock melon, over-ripe fruit, sulphurous, fermented",
  "~1x2 cm³ cut rock melon piece with skin",
  "Aroma",
  
  "Fishy",
  "Tuna",
  "Aroma of tuna, fishy or seaweed",
  "~0.5 cm² piece canned tuna (Aldi Ocean Rise Yellowfin tuna in Springwater)",
  "Aroma",
  
  "Fishy",
  "Fishiness",
  "Aroma of tuna, fishy or seaweed",
  "~0.5 cm² piece canned tuna (Aldi Ocean Rise Yellowfin tuna in Springwater)",
  "Aroma",
  
  "Fishy",
  "Seaweed",
  "Aroma of tuna, fishy or seaweed",
  "~0.5 cm² piece canned tuna (Aldi Ocean Rise Yellowfin tuna in Springwater)",
  "Aroma",
  
  "Citrus",
  "Orange",
  "Aroma of citrus peel or juice",
  "1 mm each string of rind from an orange, mandarin and lemon",
  "Aroma",
  
  "Citrus",
  "Mandarin",
  "Aroma of citrus peel or juice",
  "1 mm each string of rind from an orange, mandarin and lemon",
  "Aroma",
  
  "Citrus",
  "Lemon",
  "Aroma of citrus peel or juice",
  "1 mm each string of rind from an orange, mandarin and lemon",
  "Aroma",
  
  "Floral note",
  "Jasmine",
  "Floral notes (Jasmine flower)",
  "¼ drop of Jasmine flower essence (Aromaster Wine Kit bottle #24)",
  "Aroma",
  
  "Floral note",
  "Rose",
  "Floral notes (Jasmine flower)",
  "¼ drop of Jasmine flower essence (Aromaster Wine Kit bottle #24)",
  "Aroma",
  
  # Texture
  "Resistance",
  "Firmness",
  "Degree to which sample resists initial bite firmness, could be crisp when high",
  "n/a",
  "Texture",
  
  "Resistance",
  "Crispness",
  "Degree to which sample resists initial bite firmness, could be crisp when high",
  "n/a",
  "Texture",
  
  "Velvety",
  "Smoothness",
  "Smoothness of sample during initial 2–3 bites (lack of particles/grit), silky smooth is high",
  "n/a",
  "Texture",
  
  "Velvety",
  "Silkiness",
  "Smoothness of sample during initial 2–3 bites (lack of particles/grit), silky smooth is high",
  "n/a",
  "Texture",
  
  "Juiciness",
  "Moisture",
  "Degree to which sample releases juice during chewing",
  "n/a",
  "Texture",
  
  "Juiciness",
  "Hydration",
  "Degree to which sample releases juice during chewing",
  "n/a",
  "Texture",
  
  "Dissolving",
  "Disintegration",
  "Degree to which sample disintegrates in the mouth",
  "n/a",
  "Texture",
  
  "Dissolving",
  "Melting",
  "Degree to which sample disintegrates in the mouth",
  "n/a",
  "Texture",
  
  "Fibrous",
  "Stringiness",
  "Presence of fibres or stringy texture",
  "n/a",
  "Texture",
  
  "Fibrous",
  "Graininess",
  "Presence of fibres or stringy texture",
  "n/a",
  "Texture",
  
  # Flavour
  "Flavour intensity",
  "Flavour none-High",
  "The overall flavour intensity from none to high",
  "n/a",
  "Flavour",
  
  "Sweetness",
  "Cooked sweet potato",
  "Sweet flavour associated with cooked sweet potato/carrot, sweet melon with caramel notes, confectionary",
  "25 g/L sucrose solution",
  "Flavour",
  
  "Sweetness",
  "Cooked carrot",
  "Sweet flavour associated with cooked sweet potato/carrot, sweet melon with caramel notes, confectionary",
  "25 g/L sucrose solution",
  "Flavour",
  
  "Sweetness",
  "sweet melon",
  "Sweet flavour associated with cooked sweet potato/carrot, sweet melon with caramel notes, confectionary",
  "25 g/L sucrose solution",
  "Flavour",
  
  "Bitterness",
  "Caffeine",
  "Bitter flavour",
  "0.3 g/L caffeine solution",
  "Flavour",
  
  "Musty",
  "Over-ripe rockmelon",
  "Flavour of over-ripe rockmelon with skin, stale",
  "~1x2 cm³ cut rock melon piece with skin",
  "Flavour",
  
  "Musty",
  "stale",
  "Flavour of over-ripe rockmelon with skin, stale",
  "~1x2 cm³ cut rock melon piece with skin",
  "Flavour",
  
  "Floral",
  "Musk stick",
  "Floral flavour notes",
  "¼ drop of Jasmine flower essence (Aromaster Wine Kit bottle #24)",
  "Flavour",
  
  "Floral",
  "Rose water",
  "Floral flavour notes",
  "¼ drop of Jasmine flower essence (Aromaster Wine Kit bottle #24)",
  "Flavour",
  
  # Aftertaste
  "Bitter",
  "Lingering",
  "Bitter aftertaste",
  "0.3 g/L caffeine solution",
  "Aftertaste",
  
  "Sweet",
  "Confectionary",
  "Sweet aftertaste",
  "25 g/L sucrose solution",
  "Aftertaste"
)


# Prepare the sensory data
sensory_hierarchy <- sensory |>
  select(category, attribute, descriptors) |>
  rename(Level1 = category,
         Level2 = attribute,
         Level3 = descriptors) |>
  mutate(
    Level1 = if_else(Level1 == "Aftertaste", "After\ntaste", Level1),
    top_level = Level1
  )  |>
  pivot_longer(1:3) |>
  group_by(name, value) |>
  mutate(width = n()) |>
  unique() |>
  arrange(name) |>
  group_by(name) |>
  mutate(
    ymid = as.numeric(sub("\\D+", "", name)),
    # Conditional adjustment of ymax and ymin based on level
    ymax = case_when(
      name == "Level1" ~ ymid + 0.5,
      name == "Level2" ~ ymid + 1.25,
      name == "Level3" ~ ymid + 2.5,
      .default = ymid + 0.5
    ),
    ymin = case_when(
      name == "Level1" ~ ymid - 0.5,
      name == "Level2" ~ ymid - 0.5,
      name == "Level3" ~ ymid + 0.25,
      .default = ymid - 0.5
    ),
    xmin = c(0, head(cumsum(width), -1)),
    xmax = cumsum(width),
    xmid = (xmax + xmin) / 2
  )



# Create the visualisation
sensory_hierarchy |>
  ggplot(aes(xmid, ymid, fill = top_level)) +
  geom_rect(aes(
    xmin = xmin,
    xmax = xmax,
    ymin = ymin,
    ymax = ymax,
    alpha = name,
    color = top_level
  )) +
  # Level 1 text (original horizontal orientation)
  geomtextpath::geom_textpath(
    data = . %>% filter(name == "Level1"),
    aes(y = ymid, label = value, group = value),
    size = 3.2,
    spacing = 1.2
  ) +
  # Level 2 text (vertical orientation)
  geomtextpath::geom_textpath(
    data = . %>% filter(name == "Level2"),
    aes(
      y = ymid + 0.35,
      label = value,
      group = value
    ),
    size = 3,
    spacing = 1.2,
    angle = 90,
    text_only = TRUE
  ) +
  # Level 3 text (vertical orientation)
  geomtextpath::geom_textpath(
    data = . %>% filter(name == "Level3"),
    aes(
      y = ymid + 1.3,
      label = value,
      group = value
    ),
    size = 2.8,
    spacing = 1.2,
    angle = 90,
    text_only = TRUE
  ) +
  scale_alpha_manual(values = c(1, 0.3, 0.1)) +
  scale_fill_manual(
    values = c(
      "Aroma" = "#E69F00",
      "Texture" = "#56B4E9",
      "Flavour" = "#009E73",
      "After\ntaste" = "#CC79A7"
    )
  ) +
  scale_colour_manual(
    values = c(
      "Aroma" = "#E69F00",
      "Texture" = "#56B4E9",
      "Flavour" = "#009E73",
      "After\ntaste" = "#CC79A7"
    )
  ) +
  scale_y_continuous(limits = c(-0.5, 5.5)) +
  coord_polar() +
  theme_void() +
  theme(legend.position = "none",
        plot.margin = margin(20, 20, 20, 20))

ggsave("plots/papaya_flavour_wheel.png",
       height = 9,
       width = 9)



# First, load the required additional package
library(ggimage)

# Assuming your papaya image is stored locally, create a data frame for the image
# Replace the path with your actual image path
center_image <- data.frame(
  x = 0,  # Center x coordinate
  y = 0,  # Center y coordinate
  image = "path/to/your/papaya.png"  # Replace with actual path
)

# In your existing ggplot code, add this layer after your other layers but before theme_void():
# ... your existing layers ... +
geom_image(
  data = center_image,
  aes(x = x, y = y, image = image),
  size = 0.15,  # Adjust this value to change image size
  asp = 1  # Maintains aspect ratio
) +
  # ... rest of your code
