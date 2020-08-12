# CodeBook

The tidydataset is the result of appling the 5 steps from the week 4 project of 
the Getting and Cleaning coruse in coursera.

- 1. Merges the training and the test sets to create one data set.
- 2. Extracts only the measurements on the mean and standard deviation for 
       each measurement.
- 3. Uses descriptive activity names to name the activities in the data set.
- 4. Appropriately labels the data set with descriptive variable names.
- 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data was extracted from the data set placed in this Url
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Inside of it you can find the files used in this project: **features.txt, activity_labels.txt, subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt**.

the tidydata data set, wich is the result of these project is, is compounded by 
the means and standar deviation, by subject and actvity, of the existing varibles founded in the **features.txt** file applied to the (*"test and train"*) files wich were bind by row and made one single table.



