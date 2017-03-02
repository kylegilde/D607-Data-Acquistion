
####TIDY DATA####
# Each variable is saved in its own column.
# Each observation is saved in its own row.
# Each "type" of observation stored in a single table (here, storms).


# install.packages("devtools")
# devtools::install_github("rstudio/EDAWR")
#file:///C:/Users/kyleg/Downloads/wrangling-webinar.pdf
library(EDAWR)

####4 tidyr functions####
cases
#gather
gather(cases, "year", "n", 2:4)
pollution
#spread
spread(pollution, size, amount)
storms
#separate
storms2 <- separate(storms, date, c("year", "month", "day"), sep = "-")
storms2
#unite
storms2 %>% unite("date", year, month, day, sep="-")

####dplyr FUNCTIONS####
library(EDAWR)
select(storms, storm, pressure)
select(storms, -storm)
select(storms, wind:date)
# dplyr FUNCTIONS:
# contains() Select columns whose name contains a character string
# ends_with() Select columns whose name ends with a string
# everything() Select every column
# matches() Select columns whose name matches a regular expression
# num_range() Select columns named x1, x2, x3, x4, x5
# one_of() Select columns whose names are in a group of names
# starts_with() Select columns whose name starts with a character string

filter(storms, wind >= 50)
filter(storms, storm %in% c("Alberto", "Alex", "Allison"))
?Comparison
?base::Logic
any
all

mutate(storms, ratio = pressure/wind, inverse = ratio^-1)
# pmin(), pmax() Element-wise min and max
# cummin(), cummax() Cumulative min and max
# cumsum(), cumprod() Cumulative sum and product
# dplyr FUNCTIONS:
# between() Are values between a and b?
# cume_dist() Cumulative distribution of values
# cumall(), cumany() Cumulative all and any
# cummean() Cumulative mean
# lead(), lag() Copy with values one position
# ntile() Bin vector into n buckets
# dense_rank(), min_rank(),
# percent_rank(), row_number() Various ranking methods

pollution %>% summarise(median = median(amount), variance = var(amount), n = n())
# min(), max() Minimum and maximum values
# mean() Mean value
# median() Median value
# sum() Sum of values
# var, sd() Variance and standard deviation of a vector
# dplyr FUNCTIONS:
# first() First value in a vector
# last() Last value in a vector
# nth() Nth value in a vector
# n() The number of values in a vector
# n_distinct() The number of distinct values in a vector

arrange(storms, desc(wind))
        
####Units of Analysis####
pollution
pollution %>% 
  group_by(city) %>%
  summarise(mean = mean(amount), sum = sum(amount), n = n()) %>% 
  arrange(desc(mean))

tb
tb %>%
  na.omit() %>% 
  group_by(country, year) %>%
  summarise(cases = sum(cases))

####JOINING DATA####
bind_cols()
bind_rows()
union() #like sql
intersect()
setdiff() #opposite of intersect
left_join(table1, table2, by = "name")
left_join(songs2, artists2, by = c("first", "last")) #join on 2 conditions
inner_join()
semi_join()
anti_join()