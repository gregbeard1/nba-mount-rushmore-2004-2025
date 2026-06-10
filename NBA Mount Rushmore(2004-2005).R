#NBA Mount Rushmore (2004-2025)
library(hoopR)
library(dplyr)

# Pull season stats
nba_stats <- hoopR::load_nba_player_box(seasons = 2005:2025)

# Filter modern era (2004–2025)
modern_players <- nba_stats %>%
  mutate(
    ts_pct = points / (2 * (field_goals_attempted + 0.44 * free_throws_attempted))) %>%
  filter(season >= 2005) %>%
  group_by(athlete_display_name) %>%
  summarise(
    ppg = mean(points, na.rm = TRUE),
    apg = mean(assists, na.rm = TRUE),
    rpg = mean(rebounds, na.rm = TRUE),
    ts = mean(ts_pct, na.rm = TRUE))


#Build PRA stat
player_summary <- nba_stats %>%
  group_by(athlete_display_name) %>%
  summarise(
    ppg = mean(points, na.rm = TRUE),
    apg = mean(assists, na.rm = TRUE),
    rpg = mean(rebounds, na.rm = TRUE)
  )
#Create PRA Score
player_summary <- player_summary %>%
  mutate(
    PRA =
      coalesce(ppg, 0) +
      coalesce(apg, 0) +
      coalesce(rpg, 0)
  )


#Build Bar Chart of PRA
library(dplyr)
library(ggplot2)
library(forcats)

#Take top 15
top15 <- player_summary %>%
  filter(!is.na(PRA)) %>%
  arrange(desc(PRA)) %>%
  slice_head(n = 15)

#Build Chart
ggplot(
  top15,
  aes(
    x = reorder(athlete_display_name, PRA),
    y = PRA)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Top 15 Modern NBA Players by PRA",
    x = NULL,
    y = "PRA") +
  theme_minimal()

#Filter for Top Scorers 
top_scorers <- modern_players %>%
  filter(ppg>= 20, ts >= 0.56)

#Create Plot for Efficiency vs Scoring
library(ggrepel)
ggplot(top_scorers, aes(x = ppg, y = ts)) +
  geom_point(alpha = 0.6) +
  geom_text_repel(
    aes(label = athlete_display_name),
    size = 2.35
  ) +
  labs(
    title = "Modern NBA Dominance: Efficiency vs Scoring",
    x = "Points per Game (at least 20 PPG)",
    y = "True Shooting % (at least 56%)"
  ) +
  theme_minimal()
