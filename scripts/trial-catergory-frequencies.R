library(tidyverse)

x <- c("D

L

L

P

??

F

P

F

F

F

F

F

F

F

D

D

D

P

D

D

L

P

D

P

P

D")

y <- 
  x %>%
  str_split(., pattern = "\n") %>%
  unlist %>%
  gsub("^$|\\?\\?", NA, .)

y <- y[!is.na(y)] %>%
  as.factor

yt <- table(y)
addmargins(yt)
prop.table(yt)

