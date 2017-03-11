

library(reshape2)

# set working directory #
workdir<-"~/datascience/data"
setwd(workdir)
if (!file.exists(workdir)){file.create(workdir)}

#download zip file from url and unzip it#
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile<-"dataset.zip"
if(!file.exists(zipfile)){download.file(url, destfile =zipfile)}
if (!file.exists("UCI HAR Dataset")) { unzip(zipfile)}

# read activity labels and feature variables from downloaded files#
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activitylabels[,2] <- as.character(activitylabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# find indexes for wanted feature variables #
index_wanted_features<-grep(".*mean.*|.*std.*", features[,2])

# read training data from three different files and combine data thru cbind #
activity_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
data_train <- read.table("UCI HAR Dataset/train/X_train.txt")[index_wanted_features]
dataset_train<-cbind(activity_train,subject_train,data_train)

# read test data from three different files and combine data thru cbind #
activity_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
data_test <- read.table("UCI HAR Dataset/test/X_test.txt")[index_wanted_features]
dataset_test<-cbind(activity_test,subject_test,data_test)

# combine training and test data thru rbind #
dataset<-rbind(dataset_train,dataset_test)

# shorten feature names and add descriptive names for columns # 
featurenames_short<-gsub("[()]","",features[index_wanted_features,2])
colnames(dataset)<-c("activity","subject",featurenames_short)

# replace the numeric numbers with descriptive names for the activities"
dataset[,1]<-as.factor(activitylabels[dataset[,1],2])
dataset[,2]<-as.factor(dataset[,2])

# calculate mean for each activity and subject"
dataset_melt<-melt(dataset, id=c("activity","subject"))
tidy_mean<-dcast(dataset_melt, activity+subject~variable, mean)

# write mean for each activity and subject to a file (tidy.txt) #
write.table(tidy_mean, "tidy.txt", row.names = FALSE, quote = FALSE)


