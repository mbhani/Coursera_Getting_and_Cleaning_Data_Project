# Coursera Getting and Cleaning Data Course Project

The original data set was obtained from the research that is referenced in the following paper:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### For each record in the original dataset it is provided:
=======================================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


### The following summarizes the variable names in the final dataset *tidydata.txt* at the end of running the script:

* subject 
    + This is an identifier of the subject who carried out the experiment. The experiments have been carried out with a group of  30 volunteers within an age bracket of 19-48 years. The subject values ranges from 1 to 30 in this dataset.
    
* activity
    + This is the activity label. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,                      STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
    
    + The activity labels are found in file activity_labels.txt are are as follows:
    
          1 ==> WALKING
          2 ==> WALKING_UPSTAIRS
          3 ==> WALKING_DOWNSTAIRS
          4 ==> SITTING
          5 ==> STANDING
          6 ==> LAYING

* The dataset includes the following measurements:

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

* The script appropriately labels the data set with descriptive variable names, a comparison between variable names before and after is as follows:

          replace "std()" with "StandarDeviation"
          replace "meanFreq()" with "MeanFrequency"
          replace "mean()" with "Mean"
          replace "Mag" with "Magnitude"
          replace "Acc" with "accelerometer"
          replace "Gyro" with "Gyroscope"
          replace "BodyBody" with "Body" due to redundancy
          replace "t" with "TimeDomain"
          replace "f" with "FrequencyDomain"

