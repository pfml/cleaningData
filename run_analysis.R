############################################
# Getting and Cleaning Data Course Project #  
# pfml - 20140920                          #
# ver 1.2                                  #
############################################

require (plyr)

##################################################################################
# 0. load test, training sets and the activities
# ----------------------------------------------
# This script in the main directory where the data had been downloaded and unzipped
###################################################################################

train = read.table("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
train[,562] = read.table("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
train[,563] = read.table("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
test = read.table("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
test[,562] = read.table("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
test[,563] = read.table("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
activityLabels = read.table("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE, col.names = c("activityId", "activity"))
features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE, colClasses = c("character"))

##################################################################
# 1. Merges the training and the test sets to create one data set.
##################################################################

# Binding sensor data
sensor <- rbind(train, test)

# Label columns
sensorLabels <- rbind(rbind(features, c(562, "subject")), c(563, "activityId"))[,2]
names(sensor) <- sensorLabels

##################################################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Use "mean\(\\)" to not include meanFreq() and angles-related datas (post-processed measurements)
##################################################################################################

sensorMeanStd <- sensor[,grepl("mean\\(\\)|std\\(\\)|subject|activityId", names(sensor))]

###########################################################################
# 3. Uses descriptive activity names to name the activities in the data set
###########################################################################

sensorMeanStd <- join(sensorMeanStd, activityLabels, by = "activityId", match = "first")
sensorMeanStd <- sensorMeanStd[,-1]

##############################################################
# 4. Appropriately labels the data set with descriptive names.
##############################################################

# Remove parentheses
names(sensorMeanStd) <- gsub('\\(|\\)',"",names(sensorMeanStd), perl = TRUE)
# syntactical validation
names(sensorMeanStd) <- make.names(names(sensorMeanStd))
# more descriptive names
names(sensorMeanStd) <- gsub('Acc',"Acceleration",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('GyroJerk',"Angular_Acceleration",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('Gyro',"Angular_Speed",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('Mag',"Magnitude",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('^t',"Time_Domain.",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('^f',"Frequency_Domain.",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('\\.mean',".Mean",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('\\.std',".Standard_Deviation",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('Freq\\.',"Frequency.",names(sensorMeanStd))
names(sensorMeanStd) <- gsub('Freq$',"Frequency",names(sensorMeanStd))

######################################################################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
######################################################################################################################

sensorAvgByActivityBySubject = ddply(sensorMeanStd, c("subject","activity"), numcolwise(mean))
write.table(sensorAvgByActivityBySubject, file = "sensorAvgByActivityBySubject.txt", row.name=FALSE)
