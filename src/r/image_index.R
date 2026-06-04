library(dplyr)
library(jsonlite)

img_folders <- list.files("assets/img")

img_files <- list()

for (folder in img_folders) {
    img_files[[folder]] <- list.files(paste0("assets/img/", folder), full.names = TRUE)
}

write_json(img_files, "assets/img/img_files.json", pretty = TRUE, auto_unbox = TRUE)


