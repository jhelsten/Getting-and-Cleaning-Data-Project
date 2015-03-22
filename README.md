# Getting and Cleaning Data Project

## The run_analysis.R does the following:

1. Merges the training and the test sets from the UCI HAR Dataset folder to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Pre-requisites

You will need to download and unzip the Dataset.zip file from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. When you unzip the file, you will have a UCI HAR Dataset folder, place that folder in your R working directory.

The X files in the train and test folders get merged by the program.  They are the measures.  From this data, the columns pertaining to mean and std are extracted.  The Y files are the activity numbers and are merged with the activity file to get the descriptions.  Last is the subject file.  The program merges the subject, activity and measure data from the test and train folders into one file.

Run source("run_analysis.R"), this will generate a new file tiny_data_set.txt in your working directory (the UCI HAR Dataset folder).  This file will contain subject number, activity id and description and the mean of the measures pertaining to mean and std.


