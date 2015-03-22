# Course Project: Getting and Cleaning Data

The aim of this project is to create a tidy data set from training and test data sets coming from an Acceloremeter (Samsung).
All features observed, are group by subject (30 volunteers) and activity (6 differerent activities) and then we apply the mean
for each feature taking into account this grouping.

Raw data can be found under the folder **UCI HAR Dataset** and after executing the script **run_analysis.R**, we get the file
**means_subjects_activities.txt**

## Description of raw data

This is the structure of the files under the working directory (for further information related to the raw data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


* Folder UCI HAR Datase
  * folder **test**
      * File **X_test.txt** - All technical measurements (test data set)
      * File **y_test.txt** - All Activities (test data set)
      * File **subject_test.txt** - All Subjects (test data set)
  * folder **train**
      * File **X_test.txt** - All technical measurements (train data set)
      * File **y_test.txt** - All Activities (train data set)
      * File **subject_test.txt** -  All Subjects (train data set)
  
