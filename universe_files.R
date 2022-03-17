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
  "rems2aquachem",           "https://github.com/bcgov/rems2aquachem",
# "aquifer-factsheets",      "https://github.com/bcgov/aquifer-factsheets",
  "bcgwlreports",            "https://github.com/bcgov/bcgwlreports",
  "bcaquiferdata",           "https://github.com/steffilazerte/bcaquiferdata",
  "moosecounter",            "https://github.com/psolymos/moosecounter")
  #"fasstrshiny",             "https://github.com/bcgov/fasstrshiny")

jsonlite::write_json(df, 'packages.json', pretty = TRUE)
