library(readr)
library(data.table)

## Function used to rename the activities
rename_activities <- function(num) {
    if(num==1) {
        ret <- "WALKING"
    }
    if(num==2) {
        ret <- "WALKING_UPSTAIRS"
    }
    if(num==3) {
        ret <- "WALKING_DOWNSTAIRS"
    }
    if(num==4) {
        ret <- "SITTING"
    }
    if(num==5) {
        ret <- "STANDING"
    }
    if(num==6) {
        ret <- "LAYING"
    }
    ret
}


## Read the features list
features <- read.csv("UCI_HAR_Dataset/features.txt", sep=" ", header=FALSE)

## Select only the means and std's
mean_and_std_features <- subset(features, 
                                grepl("mean", 
                                      features$V2, fixed=TRUE) | 
                                      grepl("std", features$V2) | 
                                      grepl("Mean", features$V2))


## Creates the vector with all column names
column_names = c("Subject", "Activity")
column_names <- append(column_names, as.character(mean_and_std_features[,2]), after=2)


## LOAD THE TEST DATASET
test_subjects <- read.csv("UCI_HAR_Dataset/test/subject_test.txt", header=FALSE)
y_test <- read.csv("UCI_HAR_Dataset/test/y_test.txt", header=FALSE)
x_test <- read_fwf("UCI_HAR_Dataset/test/X_test.txt",
                   fwf_widths(rep(16, 561)))

## Transform the activities 
activities <- sapply(y_test[,1], rename_activities)

## Select only the desired columns
test_dataset <-
    cbind(test_subjects, activities, 
          x_test[, mean_and_std_features[,1]]
          )

## Renames the columns
colnames(test_dataset) <- column_names


## LOAD THE TRAIN DATASET
train_subjects <- read.csv("UCI_HAR_Dataset/train/subject_train.txt", header=FALSE)
y_train <- read.csv("UCI_HAR_Dataset/train/y_train.txt", header=FALSE)
x_train <- read_fwf("UCI_HAR_Dataset/train/X_train.txt",
                   fwf_widths(rep(16, 561)))

## Transform the activities 
activities <- sapply(y_train[,1], rename_activities)

## Select only the desired columns
train_dataset <-
    cbind(train_subjects, activities, 
          x_train[, mean_and_std_features[,1]]
    )

## Renames the columns
colnames(train_dataset) <- column_names


## MERGE THE TWO DATASETS
final <- rbind(test_dataset, train_dataset)


## CREATES NEW DATASET WITH MEAN OF EACH VARIABLE BY SUBJECT AND ACTIVITY
aggregated_averages <- aggregate(final[,3:88], by=list(final$Subject, final$Activity), FUN = mean)
colnames(aggregated_averages)[1] <- "Subject"
colnames(aggregated_averages)[2] <- "Activity"

## Writes the tidy dataset to a file
write.table(aggregated_averages, file="aggregated_averages.txt", row.names=FALSE)

