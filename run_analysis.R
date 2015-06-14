
rm(list=ls())
setwd('C:/Users/Dimitrios/Documents/Dimitris_general/Coursera/Getting and Cleaning Data/Assignment/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset')
files <- dir(recursive=TRUE,pattern ='\\.txt$')

#Read features and activity data using grepl to track the corresponding .txt files
ActivityLabels <- read.table(files[grepl('activity_labels',files)],col.names=c('number','activity'))
Features <- read.table(files[grepl('features.txt',files)])
matchMeanStd <- grep('(mean|std)',tolower(Features[,2]))

#Read test files using grepl to track the corresponding .txt files
TestSubject <- read.table(files[grepl('test/subject_test',files)],header=FALSE,col.names=c('Subject'))
TestX <- read.table(files[grepl('test/X_test',files)],header=FALSE,col.names=Features[,2])[,matchMeanStd]
TestY <- read.table(files[grepl('test/y_test',files)],header=FALSE,,col.names=c('activity'))

#Read train files using grepl to track the corresponding .txt files
TrainSubject <- read.table(files[grepl('train/subject_train',files)],header=FALSE,,col.names=c('Subject'))
TrainX <- read.table(files[grepl('train/X_train',files)],header=FALSE,col.names=Features[,2])[,matchMeanStd]
TrainY <- read.table(files[grepl('train/y_train',files)],header=FALSE,,col.names=c('activity'))


# merge data for Train Train and Test 
TrainData <- cbind(TrainSubject,TrainX,TrainY)
TestData <- cbind(TestSubject,TestX,TestY)

# add a new variable for each data set to specify what kind of data is it:Train or Test
TrainData$DataType <- 'Train'
TestData$DataType <- 'Test'

# Compine Train and Test data in one data frame
Data <- rbind(TrainData,TestData)

# Getting only the means and std values from the compined data frame
Data$activity <- ActivityLabels$activity[match(Data$activity,ActivityLabels$number)]

# Cleaning the names of the data frane
names(Data)<-gsub('[mM]ean','Mean',names(Data))
names(Data)<-gsub('std','STD',names(Data))
names(Data)<-gsub('[Ff]req',' Frequency ',names(Data))
names(Data)<-gsub('^t','Time  ',names(Data))
names(Data)<-gsub('\\.',' ',names(Data))

#New DATA SET with the averages of each variable for each activity and each subject
averages_data <- aggregate(Data[,-c(1,88,89)],by=list(Activity=Data$activity,Subject=Data$Subject),mean)
names(averages_data)[-c(1,2)]<-paste0('Mean: ',names(averages_data)[-c(1,2)])
# Write new data set in a .txt file
write.table(averages_data,'MetaData.txt',row.names=FALSE)