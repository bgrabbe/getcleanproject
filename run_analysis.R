# use the 'plyr' package functions
#
library(plyr)
#
# Task 1. merge the training and test sets to create one data set
#
# download the data files
#
if (!file.exists("data.zip")){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(url, "data.zip", method="curl")
}
#
# unzip the file
#
if (!file.exists("UCI HAR Dataset")) { 
  unzip("data.zip") 
}
#
# read in the tables (x,y and sub) for both the train and test text files
#
x_train <- read.table("UCI HAR Dataset/train/x_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
sub_train <- read.table("UCI HAR Dataset/train/sub_train.txt")
sub_test <- read.table("UCI HAR Dataset/test/sub_test.txt")
#
# bind the six tables together by their observations
# calling the now three new bound tables my_x, my_y and my_sub 
#
my_x <- rbind(x_train, x_test)
my_y <- rbind(y_train, y_test)
my_sub <- rbind(sub_train, sub_test)
#
# Task 2. only select the measurements of the mean and standard deviation for each measurement
#
# read in the features text file to table 'ftrs'
#
ftrs <- read.table("UCI HAR Dataset/features.txt")
#
# select only columns with 'mean' or 'std' in their names 
# using a regular expression via 'grep'
#
my_ftrs <- grep("-(mean|std)\\(\\)", ftrs[, 2])
#
# then subset the columns so my_x has only the selected mean and std observations
#
my_x <- my_x[, my_ftrs]
#
# add the column names from the features text file
#
names(my_x) <- ftrs[my_ftrs, 2]
#
# Task 3. change the activity names to be descriptive
#
# read in the activity_labels text file to table 'acts'
#
acts <- read.table("UCI HAR Dataset/activity_labels.txt")
#
# update with the correct activity names 
#
my_y[, 1] <- acts[my_y[, 1], 2]
#
# and make them descriptive
#
names(my_y) <- "activity"
#
# Task 4. label the subject table descriptively
#
names(my_sub) <- "subject"
#
# bind into a single data set by their columns
#
everything <- cbind(my_x, my_y, my_sub)
#
# Task 5. create the tidied data set (averaging the columns)
#
tidydata <- ddply(everything, .(subject, activity), function(x) colMeans(x[, 1:66]))
#
# output a text file of tidy data
#
write.table(tidydata, "tidy_data.txt", row.name=FALSE)
#
#
