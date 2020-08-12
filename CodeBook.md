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


*[1] "subject"                                                    
 [2] "activity"                                                   
 [3] "Time Body Accelerometer Mean ()X"                           
 [4] "Time Body Accelerometer Mean ()Y"                           
 [5] "Time Body Accelerometer Mean ()Z"                           
 [6] "Time Gravity Accelerometer Mean ()X"                        
 [7] "Time Gravity Accelerometer Mean ()Y"                        
 [8] "Time Gravity Accelerometer Mean ()Z"                        
 [9] "Time Body Accelerometer JerkMean ()X"                       
[10] "Time Body Accelerometer JerkMean ()Y"                       
[11] "Time Body Accelerometer JerkMean ()Z"                       
[12] "Time Body Gyroscope Mean ()X"                               
[13] "Time Body Gyroscope Mean ()Y"                               
[14] "Time Body Gyroscope Mean ()Z"                               
[15] "Time Body Gyroscope JerkMean ()X"                           
[16] "Time Body Gyroscope JerkMean ()Y"                           
[17] "Time Body Gyroscope JerkMean ()Z"                           
[18] "Time Body Accelerometer Magnitude Mean ()"                  
[19] "Time Gravity Accelerometer Magnitude Mean ()"               
[20] "Time Body Accelerometer JerkMagnitude Mean ()"              
[21] "Time Body Gyroscope Magnitude Mean ()"                      
[22] "Time Body Gyroscope JerkMagnitude Mean ()"                  
[23] "Frequency Body Accelerometer Mean ()X"                      
[24] "Frequency Body Accelerometer Mean ()Y"                      
[25] "Frequency Body Accelerometer Mean ()Z"                      
[26] "Frequency Body Accelerometer Mean Freq()X"                  
[27] "Frequency Body Accelerometer Mean Freq()Y"                  
[28] "Frequency Body Accelerometer Mean Freq()Z"                  
[29] "Frequency Body Accelerometer JerkMean ()X"                  
[30] "Frequency Body Accelerometer JerkMean ()Y"                  
[31] "Frequency Body Accelerometer JerkMean ()Z"                  
[32] "Frequency Body Accelerometer JerkMean Freq()X"              
[33] "Frequency Body Accelerometer JerkMean Freq()Y"              
[34] "Frequency Body Accelerometer JerkMean Freq()Z"              
[35] "Frequency Body Gyroscope Mean ()X"                          
[36] "Frequency Body Gyroscope Mean ()Y"                          
[37] "Frequency Body Gyroscope Mean ()Z"                          
[38] "Frequency Body Gyroscope Mean Freq()X"                      
[39] "Frequency Body Gyroscope Mean Freq()Y"                      
[40] "Frequency Body Gyroscope Mean Freq()Z"                      
[41] "Frequency Body Accelerometer Magnitude Mean ()"             
[42] "Frequency Body Accelerometer Magnitude Mean Freq()"         
[43] "Frequency Body Body Accelerometer JerkMagnitude Mean ()"    
[44] "Frequency Body Body Accelerometer JerkMagnitude Mean Freq()"
[45] "Frequency Body Body Gyroscope Magnitude Mean ()"            
[46] "Frequency Body Body Gyroscope Magnitude Mean Freq()"        
[47] "Frequency Body Body Gyroscope JerkMagnitude Mean ()"        
[48] "Frequency Body Body Gyroscope JerkMagnitude Mean Freq()"    
[49] "Angle (TimeBody  Accelerometer Mean,gravity)"               
[50] "Angle (TimeBody  Accelerometer JerkMean),gravityMean)"      
[51] "Angle (TimeBody  Gyroscope Mean,gravityMean)"               
[52] "Angle (TimeBody  Gyroscope JerkMean,gravityMean)"           
[53] "Angle (X,gravityMean)"                                      
[54] "Angle (Y,gravityMean)"                                      
[55] "Angle (Z,gravityMean)"                                      
[56] "Time Body Accelerometer STD ()X"                            
[57] "Time Body Accelerometer STD ()Y"                            
[58] "Time Body Accelerometer STD ()Z"                            
[59] "Time Gravity Accelerometer STD ()X"                         
[60] "Time Gravity Accelerometer STD ()Y"                         
[61] "Time Gravity Accelerometer STD ()Z"                         
[62] "Time Body Accelerometer JerkSTD ()X"                        
[63] "Time Body Accelerometer JerkSTD ()Y"                        
[64] "Time Body Accelerometer JerkSTD ()Z"                        
[65] "Time Body Gyroscope STD ()X"                                
[66] "Time Body Gyroscope STD ()Y"                                
[67] "Time Body Gyroscope STD ()Z"                                
[68] "Time Body Gyroscope JerkSTD ()X"                            
[69] "Time Body Gyroscope JerkSTD ()Y"                            
[70] "Time Body Gyroscope JerkSTD ()Z"                            
[71] "Time Body Accelerometer Magnitude STD ()"                   
[72] "Time Gravity Accelerometer Magnitude STD ()"                
[73] "Time Body Accelerometer JerkMagnitude STD ()"               
[74] "Time Body Gyroscope Magnitude STD ()"                       
[75] "Time Body Gyroscope JerkMagnitude STD ()"                   
[76] "Frequency Body Accelerometer STD ()X"                       
[77] "Frequency Body Accelerometer STD ()Y"                       
[78] "Frequency Body Accelerometer STD ()Z"                       
[79] "Frequency Body Accelerometer JerkSTD ()X"                   
[80] "Frequency Body Accelerometer JerkSTD ()Y"                   
[81] "Frequency Body Accelerometer JerkSTD ()Z"                   
[82] "Frequency Body Gyroscope STD ()X"                           
[83] "Frequency Body Gyroscope STD ()Y"                           
[84] "Frequency Body Gyroscope STD ()Z"                           
[85] "Frequency Body Accelerometer Magnitude STD ()"              
[86] "Frequency Body Body Accelerometer JerkMagnitude STD ()"    
[87] "Frequency Body Body Gyroscope Magnitude STD ()"             
[88] "Frequency Body Body Gyroscope JerkMagnitude STD ()"* 


