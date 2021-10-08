#Loading libraries
library(data.table)
library(dplyr)


# Checking if folder exists, or it needs to be extracted, or downloaded and extracted.
if (!file.exists("UCI HAR Dataset")){ 
        filename <- "Coursera_DS3_Final.zip"
        if (!file.exists(filename)){
                fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                download.file(fileURL, filename, method="curl")
               
        }   
        unzip(filename) 
}
# Importing data.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# 1. Merges the training and the test sets to create one data set.

x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Creates columns names.
colnames(x) <-t(features[2])
colnames(subject) <- c("subject")
colnames(y) <-c("activity")
# Merges data.

merged_data <- cbind(subject, y, x)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

extracted_data <-select(merged_data,subject, activity, contains("mean"), contains("std"))

#3. Uses descriptive activity names to name the activities in the data set
extracted_data$activity <- activity_labels[extracted_data$activity, 2]

#4. Appropriately labels the data set with descriptive variable names. 

names(extracted_data)<-gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data)<-gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data)<-gsub("BodyBody", "Body", names(extracted_data))
names(extracted_data)<-gsub("Mag", "Magnitude", names(extracted_data))
names(extracted_data)<-gsub("^t", "Time", names(extracted_data))
names(extracted_data)<-gsub("^f", "Frequency", names(extracted_data))
names(extracted_data)<-gsub("tBody", "TimeBody", names(extracted_data))
names(extracted_data)<-gsub("-mean()", "Mean", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("-std()", "STD", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("-freq()", "Frequency", names(extracted_data), ignore.case = TRUE)
names(extracted_data)<-gsub("angle", "Angle", names(extracted_data))
names(extracted_data)<-gsub("gravity", "Gravity", names(extracted_data))

#5.From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.


extracted_data$subject <- as.factor(extracted_data$subject)
extracted_data$activity <- as.factor(extracted_data$activity)
extracted_data <- data.table(extracted_data)

tidy_data <- aggregate(. ~subject + activity, extracted_data, mean)
tidy_data <- tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, file = "Tidy_data_set.txt", row.names = FALSE)
