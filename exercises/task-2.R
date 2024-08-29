# Code chunk 1
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
lemurs <- read_csv(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/lemur_data.csv",
  col_types = cols_only(sex = "c", age_at_wt_mo = "d", weight_g = "d"))

# Code chunk 2
ggplot(data = lemurs,
       mapping = aes(x = age_at_wt_mo,
                     y = weight_g,
                     colour = sex)) +
  geom_point(size = 0.2) +
  geom_smooth(method = "lm") +
  labs(title = "Weight of lemurs",
       x = "Age (months)",
       y = "Weight (g)") +
  theme_minimal()
