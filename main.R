df <- read.csv("CollegeDistance.csv")[,-1]

# ---- Base Graphics ----
boxplot(df$score ~ df$income, main = "Plot of Test Scores by Household Income", xlab = "Income", ylab = "Score")

# ---- Lattice Graphics ----
library(lattice)
bwplot(score ~ home, data = df, panel = panel.violin,
       main = "Plot of Test Scores by Home Ownership", 
       xlab = "Does the Family Own Their Home?",
       ylab = "Score")

# ---- ggplot2 Graphics ----
library(ggplot2)

ggplot(df, aes(x = score, fill = ethnicity)) +
  geom_density(alpha = 0.4) +
  labs(title = "Test Score Distribution by Ethnicity",
       x = "Score",
       y = "")