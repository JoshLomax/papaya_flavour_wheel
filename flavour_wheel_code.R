library(tidyverse)
aftertaste <- tibble::tribble(
  ~attribute, ~definition, ~reference,
  "other", "Any other flavour (please describe)", "n/a",
  "bitter", "Bitter aftertaste", "As above in flavour",
  "sweet", "Sweet aftertaste", "As above in flavour",
  "metallic", "Metallic aftertaste", "n/a",
  "prickly", "Tingle or heat of pepperiness", "n/a"
)
sensory <- tibble::tribble(
  ~attribute, ~definition, ~reference,
  
  # Aroma
  "overall aroma intensity", "The overall aroma intensity from none to high", "n/a",
  "sweet fruit", "Aroma of fresh sweet fruit such as honeydew melon or mango", "~1x2 cm³ cut honeydew melon piece w/o skin, 1ml orange juice (Golden Circle, no added sugar, Orange Juice, long life)",
  "musty-off note", "Aroma of ripe rock melon, over-ripe fruit, sulphurous, fermented", "~1x2 cm³ cut rock melon piece w/ skin",
  "fishy", "Aroma of tuna, fishy or seaweed", "~0.5 cm² piece canned tuna (Aldi Ocean Rise Yellowfin tuna in Springwater)",
  "citrus", "Aroma of citrus peel or juice", "1 mm each string of rind from an orange, mandarin and lemon",
  "floral", "Floral notes (Jasmine flower)", "¼ drop of Jasmine flower essence (Aromaster Wine Kit bottle #24)",
  "green", "Green notes (cucumber, grassy)", "(Aromaster Wine Kit bottle #24)",
  "other", "Any other aroma (please describe)", "n/a",
  
  # Texture
  "resistance", "Degree to which sample resists initial bite firmness, could be crisp when high", "n/a",
  "velvety", "Smoothness of sample during initial 2–3 bites (lack of particles/grit), silky smooth is high", "n/a",
  "juiciness", "Degree to which sample releases juice during chewing", "n/a",
  "dissolving", "Degree to which sample disintegrates in the mouth", "n/a",
  "fibrous", "Presence of fibres or stringy texture", "n/a",
  
  # Flavour
  "overall flavour intensity", "The overall flavour intensity from none to high", "n/a",
  "sweetness", "Sweetness associated with cooked sweet potato or carrot", "25 g/L sucrose solution",
  "sourness", "Sourness associated with citric acid", "0.3 g/L citric acid solution",
  "bitterness", "Bitterness from over-ripe rockmelon with skin", "0.3 g/L caffeine solution",
  "musty-off note", "Flavour of ripe rockmelon, over-ripe fruit, sulphurous, fermented", "As above in aroma",
  "floral", "Floral flavour notes", "As above in aroma",
  "green", "Green flavour notes (cucumber, grassy)", "As above in aroma"
)