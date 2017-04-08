# Coursera Getting and Cleaning Data Course Project

This is a repository that has the course project data sets and R script file and detail documentation of the project deliverables and goals. 

The purpose of this project is to demonstrate ability to collect, work with, message and clean, post process raw data set. The goal is to prepare tidy data set that can be used for later analysis by others.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the following link where the data was obtained for research purposes (Human Activity Recognition Using Smart Phones):

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following link is the raw data that was downloaded and used as part of this project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script “run_analysis.R” that is part of this repository does all the sorting and merging and extracting of the tidy dataset, use source("run_analysis.R") command in RStudio to run the script. 

At the end of running the script it will output in your local directory three data text files generated as a result of script execution, these text files are:

* extracted_data2.txt
* melteddata.txt
* tidydata.txt

The “run_analysis.R” script does the following:

1. Upon running the script for the first time in RStudio, it will initially create a temporary directory called “./temp” under your working directory where script is loaded , then it fetches the data set zip folder from the https website using the “downloader” package,

2. After downloading the zip folder , it create a “./data” directory (if not already existed) in your working directory and it extracts the zip folder to the “./data/ UCI HAR Dataset” new directory (Notice that downloading the data set zip folder for the first time and extracting it only need to be done once after you execute the script for the first time, after that you need to comment the file “download()” and the “unzip()” function commands from the script to avoid downloading the same data multiple times every time you execute the script. In this repository we included the data and the temp folders for convenience but are not needed to run the script as it can generate automatically these folders upon the first time you run the script.)

3. Next it loads the feature names from features.txt file (names are the same for train and test data) then it add the feature names to both the training and the test data sets

4. The script then merges the machine learning training and the test data sets (after adding feature names) to create one single data set

5. Load the numerical subject data for the training and test data from subject_train.txt (70% or 24 subjects) and from subject_test.txt (30% or 6 subjects) files under the “./data/ UCI HAR Dataset” directory, then it merges subjects trained and tested data into single subjects data frame (100% or 30 total subjects) 

6. Loads the activity labels text data file (./data/UCI HAR Dataset/activity_labels.txt), which is the same for both training and testing data sets

7. Loads the activity train and test values from y_train.txt and y_test.txt files, then it merges the activity train and test values into a single data frame

8. Merges the subjects and activity data frames with the merged data 

9. Names the first column and second column of the newly merged data with subject and activity names.

10. Extracts only the measurements on the mean and standard deviation for each measurement. 

11. Uses descriptive activity names to name the activities in the data set, and then it labels the data set with descriptive variable names. After changing the names it write an output text file for the merged cleaned data set called: extracted_data2.txt (10299 x 81)

12. Order the extracted data (extracted_data2.txt)  first ordered by subject then ordered by activity

13. Melt the extracted ordered data to make it a very long skinny data frame (813621 x 4) so that there is only one row for each measurement value, with variable equal to the column names in the merged data, and value equal to all the value of each measurement

14. Writes out the melted long skinny data frame to an output text file called: melteddata.txt (813621 x 4) is used for debug purposes only.

15. Recast the melted data set into a specific shape and new data frame and put subject and activity as the variables, and takes the average value of each variable for each subject and activity pair in the melted data set. 

16. Finally it writes out the final tidy data set (after melting and recasting) and calls it “tidydata.txt” (181 x  81 data frame)

* The following summarizes the variable names in the final dataset tidydata.txt at the end of running the script:

+ subject 
+ activity
+ TimeDomainBodyAccelerometer-Mean()-X
+ TimeDomainBodyAccelerometer-Mean()-Y

TimeDomainBodyAccelerometer-Mean()-Z TimeDomainBodyAccelerometer-StandardDeviation()-X TimeDomainBodyAccelerometer-StandardDeviation()-Y TimeDomainBodyAccelerometer-StandardDeviation()-Z TimeDomainGravityAccelerometer-Mean()-X TimeDomainGravityAccelerometer-Mean()-Y TimeDomainGravityAccelerometer-Mean()-Z TimeDomainGravityAccelerometer-StandardDeviation()-X TimeDomainGravityAccelerometer-StandardDeviation()-Y TimeDomainGravityAccelerometer-StandardDeviation()-Z TimeDomainBodyAccelerometerJerk-Mean()-X TimeDomainBodyAccelerometerJerk-Mean()-Y TimeDomainBodyAccelerometerJerk-Mean()-Z TimeDomainBodyAccelerometerJerk-StandardDeviation()-X TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z TimeDomainBodyGyroscope-Mean()-X TimeDomainBodyGyroscope-Mean()-Y TimeDomainBodyGyroscope-Mean()-Z TimeDomainBodyGyroscope-StandardDeviation()-X TimeDomainBodyGyroscope-StandardDeviation()-Y TimeDomainBodyGyroscope-StandardDeviation()-Z TimeDomainBodyGyroscopeJerk-Mean()-X TimeDomainBodyGyroscopeJerk-Mean()-Y TimeDomainBodyGyroscopeJerk-Mean()-Z TimeDomainBodyGyroscopeJerk-StandardDeviation()-X TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z TimeDomainBodyAccelerometerMagnitude-Mean() TimeDomainBodyAccelerometerMagnitude-StandardDeviation() TimeDomainGravityAccelerometerMagnitude-Mean() TimeDomainGravityAccelerometerMagnitude-StandardDeviation() TimeDomainBodyAccelerometerJerkMagnitude-Mean() TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation() TimeDomainBodyGyroscopeMagnitude-Mean() TimeDomainBodyGyroscopeMagnitude-StandardDeviation() TimeDomainBodyGyroscopeJerkMagnitude-Mean() TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation() FrequencyDomainBodyAccelerometer-Mean()-X FrequencyDomainBodyAccelerometer-Mean()-Y FrequencyDomainBodyAccelerometer-Mean()-Z FrequencyDomainBodyAccelerometer-StandardDeviation()-X FrequencyDomainBodyAccelerometer-StandardDeviation()-Y FrequencyDomainBodyAccelerometer-StandardDeviation()-Z FrequencyDomainBodyAccelerometer-MeanFrequency()-X FrequencyDomainBodyAccelerometer-MeanFrequency()-Y FrequencyDomainBodyAccelerometer-MeanFrequency()-Z FrequencyDomainBodyAccelerometerJerk-Mean()-X FrequencyDomainBodyAccelerometerJerk-Mean()-Y FrequencyDomainBodyAccelerometerJerk-Mean()-Z FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-X FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Y FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Z FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-X FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-Y FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-Z FrequencyDomainBodyGyroscope-Mean()-X FrequencyDomainBodyGyroscope-Mean()-Y FrequencyDomainBodyGyroscope-Mean()-Z FrequencyDomainBodyGyroscope-StandardDeviation()-X FrequencyDomainBodyGyroscope-StandardDeviation()-Y FrequencyDomainBodyGyroscope-StandardDeviation()-Z FrequencyDomainBodyGyroscope-MeanFrequency()-X FrequencyDomainBodyGyroscope-MeanFrequency()-Y FrequencyDomainBodyGyroscope-MeanFrequency()-Z FrequencyDomainBodyAccelerometerMagnitude-Mean() FrequencyDomainBodyAccelerometerMagnitude-StandardDeviation() FrequencyDomainBodyAccelerometerMagnitude-MeanFrequency() FrequencyDomainBodyAccelerometerJerkMagnitude-Mean() FrequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation() FrequencyDomainBodyAccelerometerJerkMagnitude-MeanFrequency() FrequencyDomainBodyGyroscopeMagnitude-Mean() FrequencyDomainBodyGyroscopeMagnitude-StandardDeviation() FrequencyDomainBodyGyroscopeMagnitude-MeanFrequency() FrequencyDomainBodyGyroscopeJerkMagnitude-Mean() FrequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation() FrequencyDomainBodyGyroscopeJerkMagnitude-MeanFrequency()



