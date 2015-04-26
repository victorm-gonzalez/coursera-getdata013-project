CodeBook
========

Original dataset
----------------

The info regarding the original dataset can be found on UCI_HAR_Dataset/Readme.txt
The original dataset is splited in two (a train and and test dataset). It contains measurements of a 561-feature vector of 30 subjects performing 6 different activities.

Transformations
---------------

The two dataset (train and test) are merged into one.  The column names are appropiatedly labeled and the activities also are rewritten using the following mapping:

  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
  
Only the following features of the original 561 feature vector are included in the new dataset:

  * tBodyAcc-mean()-X
  * tBodyAcc-mean()-Y
  * tBodyAcc-mean()-Z
  * tBodyAcc-std()-X
  * tBodyAcc-std()-Y
  * tBodyAcc-std()-Z
  * tGravityAcc-mean()-X
  * tGravityAcc-mean()-Y
  * tGravityAcc-mean()-Z
  * tGravityAcc-std()-X
  * tGravityAcc-std()-Y
  * tGravityAcc-std()-Z
  * tBodyAccJerk-mean()-X
  * tBodyAccJerk-mean()-Y
  * tBodyAccJerk-mean()-Z
  * tBodyAccJerk-std()-X
  * tBodyAccJerk-std()-Y
  * tBodyAccJerk-std()-Z
  * tBodyGyro-mean()-X
  * tBodyGyro-mean()-Y
  * tBodyGyro-mean()-Z
  * tBodyGyro-std()-X
  * tBodyGyro-std()-Y
  * tBodyGyro-std()-Z
  * tBodyGyroJerk-mean()-X
  * tBodyGyroJerk-mean()-Y
  * tBodyGyroJerk-mean()-Z
  * tBodyGyroJerk-std()-X
  * tBodyGyroJerk-std()-Y
  * tBodyGyroJerk-std()-Z
  * tBodyAccMag-mean()
  * tBodyAccMag-std()
  * tGravityAccMag-mean()
  * tGravityAccMag-std()
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()
  * tBodyGyroJerkMag-mean()
  * tBodyGyroJerkMag-std()
  * fBodyAcc-mean()-X
  * fBodyAcc-mean()-Y
  * fBodyAcc-mean()-Z
  * fBodyAcc-std()-X
  * fBodyAcc-std()-Y
  * fBodyAcc-std()-Z
  * fBodyAcc-meanFreq()-X
  * fBodyAcc-meanFreq()-Y
  * fBodyAcc-meanFreq()-Z
  * fBodyAccJerk-mean()-X
  * fBodyAccJerk-mean()-Y
  * fBodyAccJerk-mean()-Z
  * fBodyAccJerk-std()-X
  * fBodyAccJerk-std()-Y
  * fBodyAccJerk-std()-Z
  * fBodyAccJerk-meanFreq()-X
  * fBodyAccJerk-meanFreq()-Y
  * fBodyAccJerk-meanFreq()-Z
  * fBodyGyro-mean()-X
  * fBodyGyro-mean()-Y
  * fBodyGyro-mean()-Z
  * fBodyGyro-std()-X
  * fBodyGyro-std()-Y
  * fBodyGyro-std()-Z
  * fBodyGyro-meanFreq()-X
  * fBodyGyro-meanFreq()-Y
  * fBodyGyro-meanFreq()-Z
  * fBodyAccMag-mean()
  * fBodyAccMag-std()
  * fBodyAccMag-meanFreq()
  * fBodyBodyAccJerkMag-mean()
  * fBodyBodyAccJerkMag-std()
  * fBodyBodyAccJerkMag-meanFreq()
  * fBodyBodyGyroMag-mean()
  * fBodyBodyGyroMag-std()
  * fBodyBodyGyroMag-meanFreq()
  * fBodyBodyGyroJerkMag-mean()
  * fBodyBodyGyroJerkMag-std()
  * fBodyBodyGyroJerkMag-meanFreq()
  * angle(tBodyAccMean,gravity)
  * angle(tBodyAccJerkMean),gravityMean)
  * angle(tBodyGyroMean,gravityMean)
  * angle(tBodyGyroJerkMean,gravityMean)
  * angle(X,gravityMean)
  * angle(Y,gravityMean)
  * angle(Z,gravityMean)
  
Finally, we group each variable by subject and activity, and compute the mean.  
  
Final dataset
-------------

The final dataset is presented in the file 'aggregated_averages.txt'

It contains 88 columns: Subject, Activity, and the 86 variables specified in the previous section.
It contains 180 rows (measurements), which are the combination of 30 subjects performing the 6 activities.




