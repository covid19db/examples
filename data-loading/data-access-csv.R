# OxCOVID19 (https://covid19.eng.ox.ac.uk/) - CSV data access in R

library(dplyr)

# EPIDEMIOLOGY table

source = "WRD_ECDC"

url_str=sprintf("https://raw.githubusercontent.com/covid19db/data/master/data-epidemiology/covid19db-epidemiology-%s.csv", source)
df_epidemiology <- read.csv(url_str, stringsAsFactors = FALSE) 
df_epidemiology_sel <- select(df_epidemiology, country, date, confirmed, dead)
head(df_epidemiology_sel)


# MOBILITY table

source = "GOOGLE_MOBILITY"
selected_countrycode = "GBR"
    
url_str=sprintf("https://raw.githubusercontent.com/covid19db/data/master/data-mobility/covid19db-mobility-%s.csv", source)
df_mobility <- read.csv(url_str, stringsAsFactors = FALSE) 
df_mobility <- filter(df_mobility, countrycode == selected_countrycode)
head(df_mobility)


# GOVERNMENT_REPONSE table

selected_countrycode = "GBR"

url_str=sprintf("https://raw.githubusercontent.com/covid19db/data/master/data-government-response/covid19db-government-response-GOVTRACK.csv")
df_govtrack <- read.csv(url_str, stringsAsFactors = FALSE)
df_govtrack <- filter(df_govtrack, countrycode == selected_countrycode)
head(df_govtrack)


# BASELINE MORTALITY table

selected_countrycode = "GBR"

url_str=sprintf("https://raw.githubusercontent.com/covid19db/data/master/data-statistics/covid19db-baseline-mortality.csv")
baseline_mortality <- read.csv(url_str, stringsAsFactors = FALSE)
baseline_mortality <- filter(baseline_mortality, countrycode == selected_countrycode)
head(baseline_mortality)


# COUNTRY STATISTICS table

selected_countrycode = "GBR"

url_str=sprintf("https://raw.githubusercontent.com/covid19db/data/master/data-statistics/covid19db-country-statistics.csv")
df_stats <- read.csv(url_str, stringsAsFactors = FALSE)
df_stats <- filter(df_stats, countrycode == selected_countrycode)
head(df_stats)
