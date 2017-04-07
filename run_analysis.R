#Getting and Cleaning Data Programming Assignment 4/1/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# first fetch the data set zip folder from the https site using the downloader package
library(downloader)
library(RCurl)
if(!file.exists("./temp")){dir.create("./temp")} # first create temp directory to download zipfolder to
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl, dest="./temp/getdata_projectfiles_UCI_HAR_Dataset.zip", mode="wb") #uncomment to execute first time you run script
# next extract the zip folder to a new ./data directory
if(!file.exists("./data")){dir.create("./data")} # second create data directory to load extracted zipfolder
unzip("./temp/getdata_projectfiles_UCI_HAR_Dataset.zip", exdir="./data") #uncomment to execute first time you run script
datafolder <- list.files("./data") #extracted data folder name
print(datafolder) #datafolder = UCI HAR Dataset

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 1. Merges the training and the test sets to create one data set.

features <- read.table("./data/UCI HAR Dataset/features.txt") #read feature names from features.txt file, same for train and test data
trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt") #read the train data set first (train first then test in ML)
names(trainData) <- paste(features[,2]) #add feature names to the train data set
print(dim(trainData))
testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt") # read the test data set second (train first then test in ML)
names(testData) <- paste(features[,2]) #add feature names to the test data set
print(dim(testData))
mergedData <- rbind(trainData, testData) # merge the train and test data sets into a single data frame (train first then test in ML) 

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE) # read the subject train values, 70% or 24 subjects
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE) #read the subject test values, 30% or 6 subjects
mergedSubjects <- rbind(subject_train, subject_test) #merge subjects trained and tested into single subjects data frame (100% or 30 total subjects)

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE) #read the activity labels text data file, same for train and test

activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE) # read the activity train values
activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE) # read the activity test values
mergedActivity <- rbind(activity_train, activity_test) # merge the activity train and test values into a single data frame
finalmergedData <- cbind(mergedSubjects, mergedActivity, mergedData)#merge subjects and activity columns with the merged data
names(finalmergedData)[1]<-paste("subject") #name first column in final merged data frame with "subject"
names(finalmergedData)[2]<-paste("activity")#name second column in final merged data frame with "activity"
print(names(finalmergedData))
print(dim(finalmergedData))

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

library(dplyr)
features2 <- grep(paste(c("mean()", "std()"),collapse="|"), names(finalmergedData), value=TRUE)
extractedData <- finalmergedData[features2] # this operation extracts the measurements based of mean and standard deviation, 
extractedData <- cbind(mergedSubjects, mergedActivity, extractedData) #Add activity and subject columns to the list 
names(extractedData)[1]<-paste("subject") #name first column in the extracted data frame with "subject"
names(extractedData)[2]<-paste("activity")#name second column in the extracted data frame with "activity"
print(names(extractedData)) # show the names of the extracte ddat of part#2
print(dim(extractedData)) # show the dimension of the data frame after extracting the measurements with mean() and std() cloumn name

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 3. Uses descriptive activity names to name the activities in the data set

for (i in 1:dim(mergedActivity)[1]) { #this nested loop replaces all activity numerical values with labels based of activity_labels file
        for (j in 1:dim(activity_labels)[1]) { 
                if (extractedData[i,2] == j) { 
                        extractedData[i,2] = as.character(activity_labels[j,2]) 
                        } else{ next }
                }
        }
print(head(extractedData))

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 4. Appropriately labels the data set with descriptive variable names. 

# replace "std()" with "StandarDeviation"
names(extractedData)<-gsub("std()", "StandardDeviation", names(extractedData))
# replace "meanFreq()" with "MeanFrequency"
names(extractedData)<-gsub("meanFreq()", "MeanFrequency", names(extractedData))
# replace "mean()" with "Mean"
names(extractedData)<-gsub("mean()", "Mean", names(extractedData))
# replace "Mag" with "Magnitude"
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
# replace "Acc" with "accelerometer"
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
# replace "Gyro" with "Gyroscope"
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
# replace "BodyBody" with "Body" due to redundancy
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
# replace "t" with "TimeDomain"
names(extractedData)<-gsub("^t", "TimeDomain", names(extractedData))
# replace "f" with "FrequencyDomain"
names(extractedData)<-gsub("^f", "FrequencyDomain", names(extractedData))

print(names(extractedData)) # show names of the extracted data after changing the column names with more decriptive variable names
write.table(extractedData2, "extracted_data2.txt", row.name=FALSE) # write out the extracted data after changing column names with more decriptive names

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.

library(reshape)

extractedData <- extractedData[order(extractedData$subject, extractedData$activity), ] # order the extracted data first by subject then by activity

extractedData2 <- melt(extractedData, id = c("subject", "activity")) # melt the extracted data to make it a very long skiny data frame (813621 x 4) so that
                                                                     # there is only one row for each measurement value, with variable equal to the 
                                                                     # column names in the merged data, and value equal to all the value of each measurement
write.table(extractedData2, "melteddata.txt") # write out the melted long skinny data frame (for debug purposes)
print(dim(extractedData2)) # 813621 x 4
extractedData2 <- dcast(extractedData2, subject + activity ~ variable, mean) # recast the melted data set into a specific shape or new data frame and 
                                                                             # put subject and activity as the variables and take the average value of each variable 
                                                                             # for each subject and activity pair in the melted data set
print(dim(extractedData2)) # 180 x 81 
write.table(extractedData2, "tidydata.txt", row.name=FALSE) # write out the final tidy data after melting and calculating average of each variable

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



