# Coursera Getting and Cleaning Data Course Project

This is code book that explains the variables used in this project; 

The R script “run_analysis.R” that is part of this repository does all the sorting and merging and extracting of the tidy dataset, use source("run_analysis.R") command in RStudio to run the script. 

At the end of running the script it will output in your local directory three data text files generated as a result of script execution, these text files are:

* extracted_data2.txt
* melteddata.txt
* tidydata.txt

Variable names before running the script:

subject
activity
TimeDomainBodyAccelerometer-Mean()-X
TimeDomainBodyAccelerometer-Mean()-Y 
TimeDomainBodyAccelerometer-Mean()-Z 
TimeDomainBodyAccelerometer-StandardDeviation()-X
TimeDomainBodyAccelerometer-StandardDeviation()-Y
TimeDomainBodyAccelerometer-StandardDeviation()-Z
TimeDomainGravityAccelerometer-Mean()-X
TimeDomainGravityAccelerometer-Mean()-Y
TimeDomainGravityAccelerometer-Mean()-Z 
TimeDomainGravityAccelerometer-StandardDeviation()-X 
TimeDomainGravityAccelerometer-StandardDeviation()-Y 
TimeDomainGravityAccelerometer-StandardDeviation()-Z 
TimeDomainBodyAccelerometerJerk-Mean()-X 
TimeDomainBodyAccelerometerJerk-Mean()-Y 
TimeDomainBodyAccelerometerJerk-Mean()-Z 
TimeDomainBodyAccelerometerJerk-StandardDeviation()-X 
TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y 
TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z 
TimeDomainBodyGyroscope-Mean()-X
TimeDomainBodyGyroscope-Mean()-Y 
TimeDomainBodyGyroscope-Mean()-Z
TimeDomainBodyGyroscope-StandardDeviation()-X
TimeDomainBodyGyroscope-StandardDeviation()-Y
TimeDomainBodyGyroscope-StandardDeviation()-Z
TimeDomainBodyGyroscopeJerk-Mean()-X
TimeDomainBodyGyroscopeJerk-Mean()-Y
TimeDomainBodyGyroscopeJerk-Mean()-Z
TimeDomainBodyGyroscopeJerk-StandardDeviation()-X
TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y
TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z
TimeDomainBodyAccelerometerMagnitude-Mean()
TimeDomainBodyAccelerometerMagnitude-StandardDeviation()
TimeDomainGravityAccelerometerMagnitude-Mean()
TimeDomainGravityAccelerometerMagnitude-StandardDeviation()
TimeDomainBodyAccelerometerJerkMagnitude-Mean()
TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()
TimeDomainBodyGyroscopeMagnitude-Mean()
TimeDomainBodyGyroscopeMagnitude-StandardDeviation()
TimeDomainBodyGyroscopeJerkMagnitude-Mean()
TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()
FrequencyDomainBodyAccelerometer-Mean()-X
FrequencyDomainBodyAccelerometer-Mean()-Y
FrequencyDomainBodyAccelerometer-Mean()-Z
FrequencyDomainBodyAccelerometer-StandardDeviation()-X
FrequencyDomainBodyAccelerometer-StandardDeviation()-Y
FrequencyDomainBodyAccelerometer-StandardDeviation()-Z
FrequencyDomainBodyAccelerometer-MeanFrequency()-X
FrequencyDomainBodyAccelerometer-MeanFrequency()-Y
FrequencyDomainBodyAccelerometer-MeanFrequency()-Z
FrequencyDomainBodyAccelerometerJerk-Mean()-X
FrequencyDomainBodyAccelerometerJerk-Mean()-Y
FrequencyDomainBodyAccelerometerJerk-Mean()-Z
FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-X
FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Y
FrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Z
FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-X
FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-Y
FrequencyDomainBodyAccelerometerJerk-MeanFrequency()-Z
FrequencyDomainBodyGyroscope-Mean()-X
FrequencyDomainBodyGyroscope-Mean()-Y
FrequencyDomainBodyGyroscope-Mean()-Z
FrequencyDomainBodyGyroscope-StandardDeviation()-X
FrequencyDomainBodyGyroscope-StandardDeviation()-Y
FrequencyDomainBodyGyroscope-StandardDeviation()-Z
FrequencyDomainBodyGyroscope-MeanFrequency()-X
FrequencyDomainBodyGyroscope-MeanFrequency()-Y
FrequencyDomainBodyGyroscope-MeanFrequency()-Z
FrequencyDomainBodyAccelerometerMagnitude-Mean()
FrequencyDomainBodyAccelerometerMagnitude-StandardDeviation()
FrequencyDomainBodyAccelerometerMagnitude-MeanFrequency()
FrequencyDomainBodyAccelerometerJerkMagnitude-Mean()
FrequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation()
FrequencyDomainBodyAccelerometerJerkMagnitude-MeanFrequency()
FrequencyDomainBodyGyroscopeMagnitude-Mean()
FrequencyDomainBodyGyroscopeMagnitude-StandardDeviation()
FrequencyDomainBodyGyroscopeMagnitude-MeanFrequency()
FrequencyDomainBodyGyroscopeJerkMagnitude-Mean()
FrequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation()
FrequencyDomainBodyGyroscopeJerkMagnitude-MeanFrequency()
