install.packages("readr")
library(readr)

url <- "https://data.ct.gov/api/views/iyru-82zq/rows.csv?accessType=DOWNLOAD"
local_file <- "csv/data/Admissions_to_DMHAS_Addiction_Treatment_by_Town__Year__and_Month.csv"

data <- read_csv(url)

data_local <- read_csv(local_file)

write_csv(data_local, "csv/data/summarized_data.csv")
write_csv(data_local, "summarized_data.csv")

write_csv(data_local, "csv/data/summarized_data.csv", na="")

