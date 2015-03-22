library(dplyr)

## Training data sets
train_DS <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_train <- rename(subject_train, Subject=V1)

act_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
act_train <- rename(act_train, ActivityCode=V1)

## Test data sets
tests_DS <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_tests <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_tests <- rename(subject_tests, Subject=V1)

act_tests <- read.table("./UCI HAR Dataset/test/y_test.txt")
act_tests <- rename(act_tests, ActivityCode=V1)

## Activities
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities <- rename(activities, ActivityCode=V1, ActivityName=V2)

## Features (colunm variables)
features <- read.table("./UCI HAR Dataset/features.txt")

## Change column names to the ones coming from the features file
colnames(train_DS) <- features$V2
colnames(tests_DS) <- features$V2


## Add subjects and activities to the data frames
train_DS <- cbind(act_train, train_DS)
train_DS <- cbind(subject_train, train_DS)

tests_DS <- cbind(act_tests, tests_DS)
tests_DS <- cbind(subject_tests, tests_DS);


## Merge (concatenate data DS = train_DS + tests_DS)
complete_DS <- rbind(train_DS, tests_DS)
## Here we are adding the activities description to the data set
complete_DS <- merge(activities, complete_DS)

## Get rid of unnecessary columns (only std and mean columns are necessary for the moment)
header <- colnames(complete_DS)
## keep alive our first three columns added in the previous lines of this script
v <- c(TRUE, TRUE, TRUE)
for (i in 4:length(header)) {
    if (grepl("std", header[i]) | grepl("mean", header[i]) | grepl("Mean", header[i]) | grepl("Std", header[i])) {
        v[i] <- TRUE
    } else {
        v[i] <- FALSE
    }
}
## Tidy Data set to start with proper analysis
DS <- complete_DS[, which(v)]
DS <- select(DS, -ActivityCode)

## Remove unuseful objects, memory conservative
rm(tests_DS); rm(train_DS); rm(features); rm(act_tests); rm(subject_tests); rm(act_train); rm(subject_train);rm(activities); rm(complete_DS)

## Group by Subejct and Activity Name to calculate all averages
group_by_DS <- group_by(DS, Subject, ActivityName)

## Data frame to be returned as average¡ of all variables group by Subject and ActivityName
mean_DS <- summarise_each(group_by_DS, funs(mean))

write.table(mean_DS, file="./UCI HAR Dataset/means_subjects_activities.txt", row.names=FALSE, sep=",")


