# nba-mount-rushmore-2004-2025
# NBA Mount Rushmore Analysis (2004–2025)

## Project Overview

Who belongs on the NBA's Mount Rushmore of the modern era?

This project uses data analysis and visualization to identify the four players who best represent NBA greatness from 2004 to 2025. Rather than evaluating the league's entire history, the analysis focuses on the period spanning the **Analytics & Superteams Era (2004–2016)** and the **Positionless Era (2016–2025)**. Limiting the timeframe allows for more meaningful comparisons between players who competed under similar rules, styles of play, and strategic environments.

The goal of this project was to combine **objective statistical analysis** with **contextual factors such as legacy and accolades** to construct a data-driven NBA Mount Rushmore.

---

## Research Questions

* Which players had the strongest combination of statistical production and efficiency during the modern NBA era?
* How do traditional box score statistics compare with advanced measures of impact?
* Can data help support a debate that is often driven by opinion and narrative?

---

## Methodology

### Data Collection

* Collected NBA player data using **R** and the **hoopR** package.
* Analyzed player performance from the **2004–2025 NBA seasons**.

### Metrics Evaluated

#### Statistical Production

* Points Per Game (PPG)
* Rebounds Per Game (RPG)
* Assists Per Game (APG)
* PRA (Points + Rebounds + Assists)

#### Efficiency

* True Shooting Percentage (TS%), calculated using the following formula:

`TS% = Points / (2 × (Field Goal Attempts + 0.44 × Free Throw Attempts))`

#### Legacy & Accolades

* Championships
* MVP Awards
* Finals MVP Awards
* All-NBA Selections
* Win Shares per 48 Minutes (Basketball Reference)

---

## Visualizations

### Top 15 Players by PRA

A ranked bar chart was created to identify the era's most productive players based on combined scoring, rebounding, and playmaking output.

https://github.com/gregbeard1/nba-mount-rushmore-2004-2025/blob/b3fd280bf3d206ab4e57d00c9622c8928c483fbd/Top%2015%20Modern%20NBA%20Players%20PRA.png

### Efficiency vs. Scoring

A scatter plot comparing:

* Points Per Game (minimum 20 PPG)
* True Shooting Percentage (minimum 56%)

This visualization highlighted players who paired elite scoring volume with exceptional efficiency.

https://github.com/gregbeard1/nba-mount-rushmore-2004-2025/blob/eb4081cc1ce5795177a06e637bfb3c0ae11a33b6/Efficiency_vs_Scoring.png

---

## Final Mount Rushmore (2004–2025)

* LeBron James
* Stephen Curry
* Nikola Jokić
* Giannis Antetokounmpo

These selections were based on a combination of:

1. Accolades and team success
2. Statistical production
3. Scoring efficiency
4. Historical impact and legacy

---

## Tools & Technologies

* R
* hoopR
* dplyr
* ggplot2
* ggrepel
* Basketball Reference (supplementary historical data)

---

## Key Skills Demonstrated

* Data Collection & Cleaning
* Feature Engineering
* Data Visualization
* Sports Analytics
* Statistical Reasoning
* Storytelling with Data
