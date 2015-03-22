# Course Project: Getting and Cleaning Data

The aim of this project is to create a tidy data set from training and test data sets coming from an Acceloremeter (Samsung Galaxy). All features observed, are group by subjects (30 volunteers) and activities (6 differerent activities) and then we apply the mean for each feature taking into account this grouping.

Raw data can be found under the folder **UCI HAR Dataset** and after executing the script **run_analysis.R**, we get the file
**means_subjects_activities.txt**

## Description of raw data

This is the structure of the files used under the working directory (for further information related to the raw data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

* Folder UCI HAR Database
  * File **activity_labels** - Activity Codes to be measured and their descriptions
  * File **features.txt** - All variables to be measured
  * File **means_subject_activities.txt** - file with the tidy data set after running the script "run_analysis.R"
  * Folder **test**
      * File **X_test.txt** - All technical measurements (test data set)
      * File **y_test.txt** - All Activities (test data set)
      * File **subject_test.txt** - All Subjects (test data set)
  * Folder **train**
      * File **X_test.txt** - All technical measurements (train data set)
      * File **y_test.txt** - All Activities (train data set)
      * File **subject_test.txt** -  All Subjects (train data set)
  
## Description of the R Script **run_analysis.R**

