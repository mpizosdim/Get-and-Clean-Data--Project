# Getting and Cleaning Data: Project
#Introduction

This repository contains the submission of the course project for the Jonhns Hopkings MOOC in Coursera [Getting and Cleaning Data](https://www.coursera.org/course/getdata). In this course someone can learn how to gather, clean, and manage data from a variety of sources.

# Using the Script
In order to use the script [Run_analysis.R](https://github.com/mpizosdim/Get-and-Clean-Data--Project/commit/e91e08bdd0da4a2e4efc70f33692627240e61e64), you will need to change the working directory in the folder where the data is located in your computer. The working directory can be changed in line 3.
#Summary
The script does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the Script is a data set named [averageData](https://github.com/mpizosdim/Get-and-Clean-Data--Project/blob/master/averageData.txt) which is a data set with the average of each variable for each activity and each subjecy

#Information
Additional information about the variables, data and transformation can be found in the [CodeBook.md](https://github.com/mpizosdim/Get-and-Clean-Data--Project/blob/master/CodeBook.md)
