#You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Step 1 - the training and the test sets to create one data set.
# dowload packages for data tables
if (!require("data.table")) {
  install.packages("data.table")
}
library(data.table)
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

# Get y data from test and train directories.
y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")
# merge y data
y_data = rbind(y_test,y_train)
# merge activity descriptions with y data
y_activities <- read.table("./activity_labels.txt")[,2]
y_data[,2] = y_activities[y_data[,1]]
# label y data
names(y_data) = c("Activity_ID", "Activity_Label")

# Get subject data from test and train directories.
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
