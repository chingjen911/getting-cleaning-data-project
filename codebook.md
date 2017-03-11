---
title: "CodeBook for GettingAndCleaningData Project"
output: github_document
---

## Input files
* activity names and codes in the data set: activity_labels.txt 
* feature varibales the data set: features.txt
* activity codes in the training data: Y_train.txt
* subject codes in the training data: subject_train.txt
* measurements in the training data: X_train.txt
* activity codes in the test data: Y_test.txt
* subject codes in the test data: subject_test.txt
* measurements in the test data: X_test.txt


## 81 Varibales used in analysis 
 [1] "activity"                      "subject"                       "tBodyAcc-mean-X"      
 
 [4] "tBodyAcc-mean-Y"               "tBodyAcc-mean-Z"               "tBodyAcc-std-X"    
 
 [7] "tBodyAcc-std-Y"                "tBodyAcc-std-Z"                "tGravityAcc-mean-X"   
 
[10] "tGravityAcc-mean-Y"            "tGravityAcc-mean-Z"            "tGravityAcc-std-X"     

[13] "tGravityAcc-std-Y"             "tGravityAcc-std-Z"             "tBodyAccJerk-mean-X"   

[16] "tBodyAccJerk-mean-Y"           "tBodyAccJerk-mean-Z"           "tBodyAccJerk-std-X"   

[19] "tBodyAccJerk-std-Y"            "tBodyAccJerk-std-Z"            "tBodyGyro-mean-X"        

[22] "tBodyGyro-mean-Y"              "tBodyGyro-mean-Z"              "tBodyGyro-std-X"       

[25] "tBodyGyro-std-Y"               "tBodyGyro-std-Z"               "tBodyGyroJerk-mean-X"       

[28] "tBodyGyroJerk-mean-Y"          "tBodyGyroJerk-mean-Z"          "tBodyGyroJerk-std-X"       

[31] "tBodyGyroJerk-std-Y"           "tBodyGyroJerk-std-Z"           "tBodyAccMag-mean"         

[34] "tBodyAccMag-std"               "tGravityAccMag-mean"           "tGravityAccMag-std"        

[37] "tBodyAccJerkMag-mean"          "tBodyAccJerkMag-std"           "tBodyGyroMag-mean"         

[40] "tBodyGyroMag-std"              "tBodyGyroJerkMag-mean"         "tBodyGyroJerkMag-std"      

[43] "fBodyAcc-mean-X"               "fBodyAcc-mean-Y"               "fBodyAcc-mean-Z"          

[46] "fBodyAcc-std-X"                "fBodyAcc-std-Y"                "fBodyAcc-std-Z"       

[49] "fBodyAcc-meanFreq-X"           "fBodyAcc-meanFreq-Y"           "fBodyAcc-meanFreq-Z"      

[52] "fBodyAccJerk-mean-X"           "fBodyAccJerk-mean-Y"           "fBodyAccJerk-mean-Z"  

[55] "fBodyAccJerk-std-X"            "fBodyAccJerk-std-Y"            "fBodyAccJerk-std-Z"   

[58] "fBodyAccJerk-meanFreq-X"       "fBodyAccJerk-meanFreq-Y"       "fBodyAccJerk-meanFreq-Z"  

[61] "fBodyGyro-mean-X"              "fBodyGyro-mean-Y"              "fBodyGyro-mean-Z"  

[64] "fBodyGyro-std-X"               "fBodyGyro-std-Y"               "fBodyGyro-std-Z"   

[67] "fBodyGyro-meanFreq-X"          "fBodyGyro-meanFreq-Y"          "fBodyGyro-meanFreq-Z"  

[70] "fBodyAccMag-mean"              "fBodyAccMag-std"               "fBodyAccMag-meanFreq"  

[73] "fBodyBodyAccJerkMag-mean"      "fBodyBodyAccJerkMag-std"       "fBodyBodyAccJerkMag-meanFreq" 

[76] "fBodyBodyGyroMag-mean"         "fBodyBodyGyroMag-std"          "fBodyBodyGyroMag-meanFreq"  

[79] "fBodyBodyGyroJerkMag-mean"     "fBodyBodyGyroJerkMag-std"      "fBodyBodyGyroJerkMag-meanFreq"

## Data Transformation
* read activity labels and feature variables from downloaded files#
* find indexes for wanted feature variables #
* read training data from three different files and combine data thru cbind #
* read test data from three different files and combine data thru cbind #
* combine training and test data thru rbind #
* shorten feature names and add descriptive names for columns # 
* replace the numeric numbers with descriptive names for the activities"
* calculate mean for each activity and subject"
* write mean for each activity and subject to a file (tidy.txt) #

## output file
tidy.txt (180 observations of 81 variables)

