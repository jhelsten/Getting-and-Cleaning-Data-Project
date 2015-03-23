#You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# dowload packages for data tables
if (!require("data.table")) {
  install.packages("data.table")
}
library(data.table)

# dowload packages for reshape2 so melt and dcast function can be used
if (!require("reshape2")) {
  install.packages("reshape2")
}
library(reshape2)

# change directory to UCI HAR Dataset
setwd("./UCI HAR Dataset")

# Get X data from test and train directories.
X_test <- read.table("./test/X_test.txt")
X_train <- read.table("./train/X_train.txt")
# merge X data
X_data = rbind(X_test,X_train)
# label X data
X_labels <- read.table("./features.txt")[,2]
names(X_data) = X_labels
# Find the features related to mean and 
# standard deviation.
X_mean_std <- grepl("mean|std", X_labels)
# Extract only the measurements on the mean and 
# standard deviation for each measurement.
X_data = X_data[,X_mean_std]
# removed () from variable names
names(X_data) = sub("\\()","",names(X_data),)

# Get y data from test and train directories.
y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")
# merge y data
y_data = rbind(y_test,y_train)
# merge activity descriptions with y data
y_activities <- read.table("./activity_labels.txt")[,2]
y_data[,2] = y_activities[y_data[,1]]
# label y data
names(y_data) = c("Activity_Id", "Activity")

# Get subject data from test and train directories.
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
# merge subject data
subject_data = rbind(subject_test,subject_train)
# merge activity descriptions with y data
# label subject data
names(subject_data) = c("Subject")

# Merge subject data, y (activity) data and x data together
raw_data = cbind(subject_data, y_data, X_data)

# melt the dataset
id_vars = c("Subject", "Activity_Id", "Activity")
measure_vars = setdiff(colnames(raw_data), id_vars)
melted_data <- melt(raw_data, id=id_vars, measure.vars=measure_vars)
# Apply mean function to dataset using dcast function
tidy_data = dcast(melted_data, Subject + Activity ~ variable, mean)

#Please upload your data set as a txt file created 
# with write.table() using row.name=FALSE
write.table(tidy_data, file = "./tidy_data_set.txt", row.names = FALSE)
