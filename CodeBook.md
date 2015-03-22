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
1. The subject, activity and x tables are merged into one data table using the cbind() function.

## Melt data
1. Melt the dataset by specifying Subject, Activity Id and Activity as the only ID variables.
2. Re-cast the melted dataset with Subject and Activity as the only IDs and mean as the aggregator function.
3. Save the result in re-casted dataset as tidy_data_set.txt in the working directory.

# Tidy Data Set

## Data Columns

1	. 	Subject - the id of the person the data was collected for
2	. 	Activity - the name of the activity performed
3	. 	tBodyAcc-mean()-X
4	. 	tBodyAcc-mean()-Y
5	. 	tBodyAcc-mean()-Z
6	. 	tBodyAcc-std()-X
7	. 	tBodyAcc-std()-Y
8	. 	tBodyAcc-std()-Z
9	. 	tGravityAcc-mean()-X
10	. 	tGravityAcc-mean()-Y
11	. 	tGravityAcc-mean()-Z
12	. 	tGravityAcc-std()-X
13	. 	tGravityAcc-std()-Y
14	. 	tGravityAcc-std()-Z
15	. 	tBodyAccJerk-mean()-X
16	. 	tBodyAccJerk-mean()-Y
17	. 	tBodyAccJerk-mean()-Z
18	. 	tBodyAccJerk-std()-X
19	. 	tBodyAccJerk-std()-Y
20	. 	tBodyAccJerk-std()-Z
21	. 	tBodyGyro-mean()-X
22	. 	tBodyGyro-mean()-Y
23	. 	tBodyGyro-mean()-Z
24	. 	tBodyGyro-std()-X
25	. 	tBodyGyro-std()-Y
26	. 	tBodyGyro-std()-Z
27	. 	tBodyGyroJerk-mean()-X
28	. 	tBodyGyroJerk-mean()-Y
29	. 	tBodyGyroJerk-mean()-Z
30	. 	tBodyGyroJerk-std()-X
31	. 	tBodyGyroJerk-std()-Y
32	. 	tBodyGyroJerk-std()-Z
33	. 	tBodyAccMag-mean()
34	. 	tBodyAccMag-std()
35	. 	tGravityAccMag-mean()
36	. 	tGravityAccMag-std()
37	. 	tBodyAccJerkMag-mean()
38	. 	tBodyAccJerkMag-std()
39	. 	tBodyGyroMag-mean()
40	. 	tBodyGyroMag-std()
41	. 	tBodyGyroJerkMag-mean()
42	. 	tBodyGyroJerkMag-std()
43	. 	fBodyAcc-mean()-X
44	. 	fBodyAcc-mean()-Y
45	. 	fBodyAcc-mean()-Z
46	. 	fBodyAcc-std()-X
47	. 	fBodyAcc-std()-Y
48	. 	fBodyAcc-std()-Z
49	. 	fBodyAcc-meanFreq()-X
50	. 	fBodyAcc-meanFreq()-Y
51	. 	fBodyAcc-meanFreq()-Z
52	. 	fBodyAccJerk-mean()-X
53	. 	fBodyAccJerk-mean()-Y
54	. 	fBodyAccJerk-mean()-Z
55	. 	fBodyAccJerk-std()-X
56	. 	fBodyAccJerk-std()-Y
57	. 	fBodyAccJerk-std()-Z
58	. 	fBodyAccJerk-meanFreq()-X
59	. 	fBodyAccJerk-meanFreq()-Y
60	. 	fBodyAccJerk-meanFreq()-Z
61	. 	fBodyGyro-mean()-X
62	. 	fBodyGyro-mean()-Y
63	. 	fBodyGyro-mean()-Z
64	. 	fBodyGyro-std()-X
65	. 	fBodyGyro-std()-Y
66	. 	fBodyGyro-std()-Z
67	. 	fBodyGyro-meanFreq()-X
68	. 	fBodyGyro-meanFreq()-Y
69	. 	fBodyGyro-meanFreq()-Z
70	. 	fBodyAccMag-mean()
71	. 	fBodyAccMag-std()
72	. 	fBodyAccMag-meanFreq()
73	. 	fBodyBodyAccJerkMag-mean()
74	. 	fBodyBodyAccJerkMag-std()
75	. 	fBodyBodyAccJerkMag-meanFreq()
76	. 	fBodyBodyGyroMag-mean()
77	. 	fBodyBodyGyroMag-std()
78	. 	fBodyBodyGyroMag-meanFreq()
79	. 	fBodyBodyGyroJerkMag-mean()
80	. 	fBodyBodyGyroJerkMag-std() 
81	. 	fBodyBodyGyroJerkMag-meanFreq()

