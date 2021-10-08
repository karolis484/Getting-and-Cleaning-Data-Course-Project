This script:
1) Checks if the dataset is present, and if not - downloads and extracts it.
2) Imports txt files with `read.table`

An example:
`activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)`
 
**Downloaded data is stored in:**

  `"activity_lables"` - stores data of performed activities (like walking, sitting)
    
  `"features"` - stores names of columns of the observed values (x)

  `"subject_test"` and `"subject_train"` stores the list of IDs of participants.

  `"x_test"` and `"x_train"` - stores the data with observed values during the testing and training phases.

  `"y_test"` and `"y_train"` - stores a list of performed activities during the testing and training phases.
    
3) Merges the training and the test sets to create one data set using `rbind`

An example: `x <- rbind(x_train, x_test)`
  
**Mearged data consists of:**

 `"x"` - holds the merged values of `"x_test"` and `"x_train"`.
 
 `"y"` - holds the merged values of `"y_test"` and `"y_train"`
 
 `"subject"` -  holds the merged list of subjects IDs (`"subject_test"` and `"subject_train"`)
 
4) Creates column names for `"x",` `"subject"` and `"y"`.

`colnames(x) <-t(features[2])`  is used to bring columnames from `"features"` to the set of observations

5) Merges `"x",` `"y"`, and `"subject"` to one data frame with `merged_data <- cbind(subject, y, x)`.

`"merged_data"` - holds a full merged data of `"x"`, `"y"`, and `"subject"`.


6) Extracts only the measurements on the mean and standard deviation for each measurement. 
    
    `extracted_data <-select(merged_data,subject, activity, contains("mean"), contains("std"))`

7) Uses descriptive activity names to name the activities in the data set.

    `extracted_data$activity <- activity_labels[extracted_data$activity, 2]`   

8)Appropriately labels the data set with descriptive variable names.

The shortcusts like `"Acc"`, `"Gyro"`, `"Mag"` are changed to more discriptive manes like `"Accelerometer"`, `"Gyroscope"`, `"Magnitude"`

An example:
`names(extracted_data)<-gsub("Acc", "Accelerometer", names(extracted_data))`

9) Assignes `"subject"` and `"activity"` columns  to `"as. factor"`.

`extracted_data$subject <- as.factor(extracted_data$subject)`

`extracted_data$activity <- as.factor(extracted_data$activity)`

10) Creates a second, independent tidy data set (`"tidy_data"`) with the average of each variable for each activity and each subject.

`tidy_data <- aggregate(. ~subject + activity, extracted_data, mean)`

`tidy_data <- tidy_data[order(tidy_data$subject,tidy_data$activity),]`

11) Stores the results as a text file.

`write.table(tidy_data, file = "Tidy_data_set.txt", row.names = FALSE)`
