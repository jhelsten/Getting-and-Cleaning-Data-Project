# Data Source

The source of the data is the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data is in a zipped file.  You will want to unzip the file and save the UCI HAR Dataset folder in your R working directory.

# Data Transformation Steps

The following data transformations are carried out by the run_analysis.R script:
1. The program sets the working directory to UCI HAR Dataset using the setwd() command.

There are 3 data sets in the train and test folder (X, Y and subject)

## X files
1. The program uses the read.table command to convert the X .txt files into tables.
2. The program merges the X files in the train and test folders using the rbind() function.  
3. Then it assigns column names to the columns based on the features file using the names() function.
4. Then the program strips out only the columns pertaining to mean and standard deviation.

## Y files
1. The program uses the read.table command to convert the Y .txt files into tables.
2. The program merges the Y files in the train and test folders using the rbind() function.  
3. Then it assigns activity names to the activity ids in the y merged file from the activity_labels.txt file.
4. Then it assigns column names to the columns of Activity_Id and Activity using the names() function.

## Subject files
1. The program uses the read.table command to convert the subject .txt files into tables.
2. The program merges the subjects files in the train and test folders using the rbind() function.
3. Then it assigns a column name to the column of Subject using the names() function.

## Merge data
1. the subject, activity and x tables are merged into one data table using the cbind() function.

## Melt data
1. Melt the dataset by specifying Subject, Activity Id and Activity as the only ID variables.
2. Re-cast the melted dataset with Subject and Activity as the only IDs and mean as the aggregator function.
3. Save the result in re-casted dataset as tidy_data_set.txt in the working directory.

# Tidy Data Set

## Data Columns

Subject - the id of the person the data was collected for
Activity - the name of the activity performed
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() 
fBodyBodyGyroJerkMag-meanFreq()
