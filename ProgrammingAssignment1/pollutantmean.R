pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332){
    files <- list.files(directory, full.names = TRUE)
    data <- data.frame()
    for(i in id){
        data <- rbind(data, read.csv(files[i]))
    }
    coi <- data[, pollutant] # coi = column of interest
    coi <- coi[!is.na(coi)]
    mean(coi)
}