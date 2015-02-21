corr <- function(directory, threshold = 0, id = 1:332){
    files <- list.files(directory, full.names = TRUE)
    data <- data.frame()
    z <- NULL # output data frame
    for(i in id){
        data <- read.csv(files[i])
        tempdata <- data[2:3]
        tempdata <- tempdata[complete.cases(tempdata), ]
        x <- unlist(tempdata[1])
        y <- unlist(tempdata[2])
        #print(nrow(tempdata))
        if(nrow(tempdata) > threshold){
            z <- c(z, cor(x, y))
        }
        
        
    }
    if(!length(z)){
        z <- 0
    }
    z
}