Wearable computing
==================

"Getting and cleaning data" course project - sept. 2014

The script run_analysis.R processes smartphone data for individuals performing various tasks according to the instructions in Coursera's Cleaning and Getting Data Peer Assessment assignment.

The processing steps are as follows :
 0. load test, training sets and the activities files
 1. Merges the training and the test sets to create one sensor data set
 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive names.
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Tidy dataset
------------

The resulting tidy dataset contains one row for each subject / activity pair and columns for subject, activity, and each feature that is issued from a mean or standard deviation calculation from the original dataset.
The [CodeBook](https://github.com/pfml/cleaningData/blob/master/CodeBook.md ) describes the variables contained in this dataset.
