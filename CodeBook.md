#CodeBook
## Getting and Cleaning Data: Project
by Dimitrios Bizopoulos

# Description

Information about the variables,data and trasfromations for the course project of Getting and Cleaning Data (Coursera MOOC)

# Data
The data set is about the human activity using smartphones. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities: 
* WALKING,
* WALKING_UPSTAIRS,
* WALKING_DOWNSTAIRS,
* SITTING,
* STANDING,
* LAYING

Inittialy the variables are stored with a numeric id [1-6], where after are changed to the variables listed above.
The data are taken from a smartphone (Samsung Galaxy S II) attached on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. . Furthermore, the Subject files identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

The following values are found in the data set:

* tBodyAcc-XYZ: Body accelaration in time domain
* tGravityAcc-XYZ: Gravity accelaration in time domain
* tBodyAccJerk-XYZ: Body acceleration Jerk in time domain
* tBodyGyro-XYZ: Body gyroscopic in time domain
* tBodyGyroJerk-XYZ: Body gyroscopic Jerk in time domain
* tBodyAccMag: Body acceleration Mgnitude in time domain
* tGravityAccMag: Gravity acceleration Mgnitude in time domain
* tBodyAccJerkMag: Body acceleration Jerk Magnitude in time domain
* tBodyGyroMag: Body gyroscopic Magnitude in time domain
* tBodyGyroJerkMag: Body gyroscopic Jerk Magnitude in time domain
* fBodyAcc-XYZ: Body accelaration in frequency domain
* fBodyAccJerk-XYZ: Body accelaration Jerk in frequency domain
* fBodyGyro-XYZ: Body gyroscopic in frequency domain
* fBodyAccMag: Body accelaration Magnitude in frequency domain
* fBodyAccJerkMag: Body accelaration Jerk Magnitude in frequency domain
* fBodyGyroMag: Body gyroscopic Magnitude in frequency domain
* fBodyGyroJerkMag: Body gyroscopic Jerk Magnitude in frequency domain

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The set of variables that were taken into consideration for the analysis are:

* Mean
* Standard deviation

#Folder Inventory
The data set includes the following files:
* *Run_analysis.R*: an R script that performs the analysis of the given data
* *README.md*: the readme file with the general informations.
* *averageData.txt*: this .txt file contains the output of the Run_analysis.R script. It containts the metadata with the averages of the mean and standard deviations(std) variables of the experiments.
* *CodeBook.md*: text with the additional information of the analysis.

#Variables
* `TestX`,`TestY`,`TrainX`,`TrainY`,`TestSubject`,`TrainSubject` contans the data from the downloaded files.
* `Data` contains the merged training and test sets.
* `averageData` is a data set with the average of each variable (mean or standart deviation results are stored) for each activity and each subject

#Code
* Code block 1: In this block all the variables in the global environment are removed as well as the path is set. Furthermore using `dir` function the files exist in the working directory are stored in the `files` variable.
* Code block 2: Using `read.table`  we read the features and the activity data. `grepl` function is used to find the corresponidng files in the `files` variable. Finally, using `grep` we extract only the measurements on the mean and standard deviation for each measurement.
* Code block 3: Similar with the code block 2, Test files are readed in this block including `TestSubject`,`TestX`,`TestY`.
* Code block 4: Similar with the code block 2, Train files are readed in this block including `TrainSubject`,`TrainX`,`TrainY`.
* Code block 5: Using `cbind` which compines 2 data frames column wised, the data are merged in two variables: `TrainData` and `TestData`
* Code block 6: A new variable is added in the `TrainData` and `TestData` in order to understand the difference when we later compine these two data frames.
* Code block 7: Using `rbind` which compineds 2 data frames row wised, the two data frames generated in the previous block are compined to form the `Data` frame.
* Code block 8: Using `match` function descriptive activity namesare stored to name the activities in the data set by using the `ActivityLabels` data frame which describes the activities.
* Code block 9: The names of the variables in the `Data` data frame are cleaned to be more clear to the reader. 
* Code block 10: creation of  a second, independent tidy data set with the average of each variable for each activity and each subject using `aggregate` function.
* Code block 11: The data frame created in the previous code block is written to a .txt file using the `write.table` function.

# References
1. Human Activity Recognition Using Smartphones Data Set.URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones . Accessed: 14/6/2015
