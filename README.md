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

This script generates a tidy data set as output, it is generated under the folder **UCI HAR Dataset** wit the name **run_analysis.R**.

Brief description of the steps to get the file:

1. Read files with training and test data sets
2. Read activities and subjects for the training and test data sets. Columns are renamed to a more descriptive names
3. Read file features in order to be used to changing the column names of the data sets
4. Adding columns subjects and activities to the data sets
5. Concatenate test and train data sets to one unique data set
6. We get rid of the colunms withoun mean or std information
7. We create a new data set to group by subject and activity
8. To the data frame generated in the step 7, we calculate mean of all variables.
9. A file is created with the data frame generated in step 8, file **means_subject_activities.txt**

## File **means_subject_activities.txt**

For further information see file **Codebook.md**
