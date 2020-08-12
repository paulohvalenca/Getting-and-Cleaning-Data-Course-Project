library(dplyr)
library(data.table)

filename <- "Coursera_DS3_Final.zip"

# Checking for a existing file.
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, method="curl")
}  

# Checking for folder.
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

features <- fread("UCI HAR Dataset/features.txt", 
                       col.names = c("n","functions"))

activity_labels <- fread("UCI HAR Dataset/activity_labels.txt", 
                         col.names = c("code", "activity_labels"))

subject_test <- fread("UCI HAR Dataset/test/subject_test.txt", 
                           col.names = "subject")

x_test <- fread("UCI HAR Dataset/test/X_test.txt", 
                     col.names = features$functions)

y_test <- fread("UCI HAR Dataset/test/y_test.txt", 
                     col.names = "code")

subject_train <- fread("UCI HAR Dataset/train/subject_train.txt", 
                            col.names = "subject")

x_train <- fread("UCI HAR Dataset/train/X_train.txt", 
                      col.names = features$functions)

y_train <- fread("UCI HAR Dataset/train/y_train.txt", col.names = "code")

################################################################################
# Step 1 - Merges the training and the test sets to create one data set.       #
################################################################################

X <- bind_rows(x_train, x_test)
Y <- bind_rows(y_train, y_test)
sub <- bind_rows(subject_train, subject_test)
merged <- bind_cols(sub , Y, X)

################################################################################
# Step 2 - Extracts only the measurements on the mean and standard deviation   #
#          for each measurement.                                               #    
################################################################################

extracted <- merged %>% select(subject, code, contains("mean"), contains("std"))

################################################################################
# Step 3 - Uses descriptive activity names to name the activities in the data  # 
#          set.                                                                #
################################################################################

extracted$code <- activity_labels[extracted$code, 2]

################################################################################
# Step 4 - Appropriately labels the data set with descriptive variable names.  #
################################################################################

names(extracted)[2] = "activity"
names(extracted) <- gsub("Acc", "Accelerometer ", names(extracted))
names(extracted) <- gsub("Gyro", "Gyroscope ", names(extracted))
names(extracted) <- gsub("Body", "Body ", names(extracted))
names(extracted) <- gsub("BodyBody", "Body ", names(extracted))
names(extracted) <- gsub("Mag", "Magnitude ", names(extracted))
names(extracted) <- gsub("^t", "Time ", names(extracted))
names(extracted) <- gsub("^f", "Frequency ", names(extracted))
names(extracted) <- gsub("tBody", "TimeBody ", names(extracted))
names(extracted) <- gsub("-mean()", "Mean ", names(extracted), 
                         ignore.case = TRUE)
names(extracted) <- gsub("-std()", "STD ", names(extracted), ignore.case = TRUE)
names(extracted) <- gsub("-freq()", "Frequency ", names(extracted), 
                        ignore.case = TRUE)
names(extracted) <- gsub("angle", "Angle ", names(extracted))
names(extracted) <- gsub("Gravity", "Gravity ", names(extracted))
names(extracted) <- gsub("()-", "", names(extracted))
names(extracted) <- gsub("()", "", names(extracted))

################################################################################
# Step 5 - From the data set in step 4, creates a second, independent tidy     #
#           data set with the average of each variable for each activity and   # 
#           each subject.                                                      #
################################################################################

tidydataset <- extracted %>%
    group_by(subject, activity) %>%
    summarise_all(funs(mean))
write.table(tidydataset, "tidydataset.txt", row.name=FALSE)


