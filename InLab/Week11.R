library(MASS)

painters

summary(painters$School)

attach(painters)

summary(School)
summary(Composition)

detach(painters)

subset(painters, School == "F")

painters[painters[["School"]] == "F", ]

subset(painters, Composition <= 6)

subset(painters, School == "F", select = c(-3, -5))

splitted <- split(painters, painters$School)

splitted

is.data.frame(splitted$A)

if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}

if (!requireNamespace("writexl", quietly = TRUE)) {
  install.packages("writexl")
}

library(readxl)
library(writexl)

sheet1 <- data.frame(
  `Variable 1` = 1:5,
  `Variable 2` = c(10, 20, 30, 40, 50),
  `Variable 3` = c(100, 200, 300, 400, 500)
)

sheet2 <- data.frame(
  `Variable 4` = 6:10,
  `Variable 5` = c(110, 120, 130, 140, 150),
  `Variable 6` = c(110, 210, 310, 410, 510)
)

write_xlsx(
  list(Sheet1 = sheet1, Sheet2 = sheet2),
  "spexcel.xlsx"
)

dataspexcel <- read_excel(
  "spexcel.xlsx",
  sheet = 1,
  .name_repair = "minimal"
)

dataspexcel

dataspexcel$`Variable 1`

dataspexcel$`Variable 2`

dataspexcel$`Variable 3`

mean(dataspexcel$`Variable 1`)

dataspexcel2 <- read_excel(
  "spexcel.xlsx",
  sheet = 2,
  .name_repair = "minimal"
)

dataspexcel2

dataspexcel2$`Variable 4`

dataspexcel2$`Variable 5`

dataspexcel2$`Variable 6`

mean(dataspexcel2$`Variable 6`)

dataspexcel3 <- read_excel(
  "spexcel.xlsx",
  sheet = 1,
  .name_repair = "minimal"
)

dataspexcel3

dataspexcel4 <- read_excel(
  "spexcel.xlsx",
  n_max = 3,
  .name_repair = "minimal"
)

dataspexcel4

dataspexcel5 <- read_excel(
  "spexcel.xlsx",
  range = "A1:C4",
  .name_repair = "minimal"
)

dataspexcel5

write(
  c(1, 2, 3, 4, 5),
  file = "data.txt",
  ncolumns = 1
)

data_txt <- scan("data.txt")

data_txt

data_table <- data.frame(
  Variable1 = 1:5,
  Variable2 = c(10, 20, 30, 40, 50),
  Variable3 = c(100, 200, 300, 400, 500)
)

write.table(
  data_table,
  file = "data_table.txt",
  sep = "\t",
  row.names = FALSE
)

read.table(
  "data_table.txt",
  header = TRUE,
  sep = "\t"
)

write.csv(
  data_table,
  file = "data.csv",
  row.names = FALSE
)

data_csv <- read.csv(
  "data.csv",
  header = TRUE
)

data_csv

save(data_table, file = "data.RData")

rm(data_table)

load("data.RData")

data_table

gender <- c(1, 2, 1, 2, 1, 1, 1, 2, 1, 1)

gender

table(gender)

table(gender) / length(gender)

quantile(gender)

marks <- c(
  68, 82, 63, 86, 34,
  96, 41, 89, 29, 51,
  75, 77, 56, 59, 42
)

marks

quantile(marks)

quantile(
  marks,
  probs = c(0, 0.25, 0.5, 0.75, 1)
)

quantile(
  marks,
  probs = c(0, 0.20, 0.4, 0.6, 0.8, 1)
)

height <- c(
  166, 125, 130, 142, 147, 159, 159, 147, 165, 156,
  149, 164, 137, 166, 135, 142, 133, 136, 127, 143,
  165, 121, 142, 148, 158, 146, 154, 157, 124, 125,
  158, 159, 164, 143, 154, 152, 141, 164, 131, 152,
  152, 161, 143, 143, 139, 131, 125, 145, 140, 163
)

height

plot(height)

plot(height, col = "red")

gender <- c(1, 2, 1, 2, 1, 1, 1, 2, 1, 1)

table(gender)

barplot(table(gender))

barplot(table(gender) / length(gender))