# Code book for table **means_subjects_activities**

Data Set Characteristics: Multivariate
Attribute Characteristics: N/A
Associated Tasks: Classification, Clustering

Number of instances: 180
Number of Attributes: 88
Missing Values: N/A

Area: Computer
Date donated: 2012-12-10

## Features description

1. **Subject**
  * Type:int 
  * Description: Volunteers
2. **ActivityName**
  * Type: Factor
  * Description: Type of activity to be measured
  * Values: 
  *  LAYING
  *  SITTING
  *  STANDING
  *  WALKING
  *  WALKING_DOWNSTAIRS
  *  WALKING_UPSTAIRS
3. All rest features (mean and standard deviation)
    * Type: num
    * Description: All mean and std values of the training and test data sets, in turn, these columns have been grouped by                      subject and activity and then calculate the mean for each attribute
    
                   To see further details for these attributes, check the code book on:

                    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
          
  
