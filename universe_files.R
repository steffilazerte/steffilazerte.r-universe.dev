library(dplyr)

df <- tribble(
  ~package,                  ~url,
  "weathercan",              "https://github.com/ropensci/weathercan",
  "LITAP",                   "https://github.com/FRDC-SHL/LITAP",
  "cavityuse",               "https://github.com/steffilazerte/cavityuse",
  "feedr",                   "https://github.com/animalnexus/feedr",
  "feedrUI",                 "https://github.com/animalnexus/feedrUI",
  "motus",                   "https://github.com/MotusWTS/motus",
  "naturecounts",            "https://github.com/BirdStudiesCanada/naturecounts",
  "bcgwcat",                 "https://github.com/bcgov/bcgwcat",
  "bcaquiferdata",           "https://github.com/bcgov/bcaquiferdata",
# "aquifer-factsheets",      "https://github.com/bcgov/aquifer-factsheets",
  "bcgwlreports",            "https://github.com/bcgov/bcgwlreports",
  "moosecounter",            "https://github.com/psolymos/moosecounter") |>
  mutate(
    branch = if_else(package %in% c("weathercan"), "*release", NA))

jsonlite::write_json(df, 'packages.json', pretty = TRUE)
