#CodeBook
## Getting and Cleaning Data: Project
by Dimitrios Bizopoulos

# Description

Information about the variables,data and trasfromations for the course project of Getting and Cleaning Data (Coursera MOOC)

# Data
The data set is about the human activity using smartphones. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities: 
* WALKING
* WALKING_UPSTAIRS,
* WALKING_DOWNSTAIRS,
* SITTING,
* STANDING,
* LAYING

The data are taken from a smartphone (Samsung Galaxy S II) attached on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. . Furthermore, the Subject files identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

The following values are found in the data set:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The set of variables that were taken into consideration for the analysis are:

* Mean
* Standard deviation

#Folder Inventory
The data set includes the following files:
* Run_analysis.R: an R script that performs the analysis of the given data
* README.md: the readme file with the general informations.
* averageData.txt: this .txt file contains the output of the Run_analysis.R script. It containts the metadata with the averages of the mean and standard deviations(std) variables of the experiments.
* CodeBook.md: text with the additional information of the analysis.

#Variables
* `TestX`,`TestY`,`TrainX`,`TrainY`,`TestSubject`,`TrainSubject` contans the data from the downloaded files.
* `Data` contains the merged training and test sets.
* `averageData` is a data set with the average of each variable for each activity and each subject


