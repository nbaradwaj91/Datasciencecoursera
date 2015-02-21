complete <- function(directory, id = 1:332){
    files <- list.files(directory, full.names = TRUE)
    data <- data.frame()
    odf <- data.frame() # output data frame
    for(i in id){
        data <- read.csv(files[i])
        tempdata <- data[2:3]
        tempdata <- tempdata[complete.cases(tempdata), ]
        odf <- rbind(odf, data.frame(id = i, nobs = nrow(tempdata)))
    }
    odf
}
