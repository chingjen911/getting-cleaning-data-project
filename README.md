# getting-cleaning-data-project
---
title: Getting and Cleaning Data Project"
---

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. I have uploaded the following documents to Github repository

* read.me
* run_analysis.R
* codebook.md

run_analysis.R executes the following items.

* Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Extract data from the files: activity_labels.txt, features.txt, Y_train.txt, subject_train.txt, X_train.txt, Y_test.txt, subject_test.txt, X_test.txt (check codebook)
* Merges the training and the test sets to create one data set.
* Extracts only the measurements (check codebook) on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* creates a second, independent tidy data set with the average of each variable for each activity and each subject.

codebook.md desscribes

* inputs files downloaded from the web address above
* 81 Varibales used in analysis
* data transformation
* output file: tidy.txt
