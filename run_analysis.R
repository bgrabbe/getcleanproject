library(plyr)
#
# 1. merge the training and test sets to create one data set
#
# get the tables from each of the folders in the dataset
#
# process train and test tables
#
x_trn <- read.table("train/x_trn.txt")
x_test <- read.table("test/X_test.txt")
sub_tst <- read.table("test/sub_tst.txt")
y_trn <- read.table("train/y_trn.txt")
y_test <- read.table("test/y_test.txt")
sub_trn <- read.table("train/sub_trn.txt")
#
# bind the tables together, call them my_x and my_y and my_sub 
#
my_x <- rbind(x_trn, x_test)
my_y <- rbind(y_trn, y_test)
my_sub <- rbind(sub_trn, sub_tst)
#
# 2. only select the measurements on the mean and standard deviation for each measurement
#
ftrs <- read.table("features.txt")
#
# only columns with 'mean' or 'std' in their names 
# then subset the columns and tidy the column names
#
my_ftrs <- grep("-(mean|std)\\(\\)", ftrs[, 2])
my_x <- my_x[, my_ftrs]
names(my_x) <- ftrs[my_ftrs, 2]
#
# 3. change the activity names to be descriptive
#
acts <- read.table("activity_labels.txt")
#
# update with correct activity names and make them descriptive
#
my_y[, 1] <- acts[my_y[, 1], 2]
names(my_y) <- "activity"
#
# 4. label the data set with descriptive variable names
#
names(my_sub) <- "subject"
#
# bind into a single data set
#
everything <- cbind(my_x, my_y, my_sub)
#
# 5. create the tidied data set (only using column 1:66, as the rest not relevant for this exercise)
#
#
tidydata <- ddply(everything, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(tidydata, "tidy_data.txt", row.name=FALSE)
