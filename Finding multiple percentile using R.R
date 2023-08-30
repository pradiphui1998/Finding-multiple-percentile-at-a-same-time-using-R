library(haven)
df <- read_sav("Final data.sav")
df <- as.data.frame(df)

library(dplyr)



## For the variable NBL
percentiles_NBL <- df %>%
  group_by(GAWeeks) %>%
  summarise(
    Num_Observations = n(),
    Percentile_2.5 = quantile(NBL, 0.025, na.rm = TRUE),
    Percentile_3 = quantile(NBL, 0.03, na.rm = TRUE),
    Percentile_5 = quantile(NBL, 0.05, na.rm = TRUE),
    Percentile_10 = quantile(NBL, 0.10, na.rm = TRUE),
    Percentile_25 = quantile(NBL, 0.25, na.rm = TRUE),
    Percentile_50 = quantile(NBL, 0.50, na.rm = TRUE),
    Percentile_75 = quantile(NBL, 0.75, na.rm = TRUE),
    Percentile_90 = quantile(NBL, 0.90, na.rm = TRUE),
    Percentile_95 = quantile(NBL, 0.95, na.rm = TRUE),
    Percentile_97 = quantile(NBL, 0.97, na.rm = TRUE),
    Percentile_97.5 = quantile(NBL, 0.975, na.rm = TRUE)
    
  )

write.csv(percentiles_NBL,"NBL.csv")


## For the variable PNT
percentiles_PNT <- df %>%
  group_by(GAWeeks) %>%
  summarise(
    Num_Observations = n(),
    Percentile_2.5 = quantile(PNT, 0.025, na.rm = TRUE),
    Percentile_3 = quantile(PNT, 0.03, na.rm = TRUE),
    Percentile_5 = quantile(PNT, 0.05, na.rm = TRUE),
    Percentile_10 = quantile(PNT, 0.10, na.rm = TRUE),
    Percentile_25 = quantile(PNT, 0.25, na.rm = TRUE),
    Percentile_50 = quantile(PNT, 0.50, na.rm = TRUE),
    Percentile_75 = quantile(PNT, 0.75, na.rm = TRUE),
    Percentile_90 = quantile(PNT, 0.90, na.rm = TRUE),
    Percentile_95 = quantile(PNT, 0.95, na.rm = TRUE),
    Percentile_97 = quantile(PNT, 0.97, na.rm = TRUE),
    Percentile_97.5 = quantile(PNT, 0.975, na.rm = TRUE)
  )


write.csv(percentiles_PNT,"PNT.csv")


## For the variable Ratio
percentiles_Ratio <- df %>%
  group_by(GAWeeks) %>%
  summarise(
    Num_Observations = n(),
    Percentile_2.5 = quantile(Ratio, 0.025, na.rm = TRUE),
    Percentile_3 = quantile(Ratio, 0.03, na.rm = TRUE),
    Percentile_5 = quantile(Ratio, 0.05, na.rm = TRUE),
    Percentile_10 = quantile(Ratio, 0.10, na.rm = TRUE),
    Percentile_25 = quantile(Ratio, 0.25, na.rm = TRUE),
    Percentile_50 = quantile(Ratio, 0.50, na.rm = TRUE),
    Percentile_75 = quantile(Ratio, 0.75, na.rm = TRUE),
    Percentile_90 = quantile(Ratio, 0.90, na.rm = TRUE),
    Percentile_95 = quantile(Ratio, 0.95, na.rm = TRUE),
    Percentile_97 = quantile(Ratio, 0.97, na.rm = TRUE),
    Percentile_97.5 = quantile(Ratio, 0.975, na.rm = TRUE)
  )

write.csv(percentiles_Ratio,"Ratio.csv")




