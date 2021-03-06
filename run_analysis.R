# Load tables; this assumes you have downloaded the zipped folder and are using UCI HAR Dataset as working directory
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
sub_test <- read.table("test/subject_test.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
sub_train <- read.table("train/subject_train.txt")

# assign activities and subjects to each row
xy_test <- cbind(x_test, y_test, sub_test)
xy_train <- cbind(x_train, y_train, sub_train)

# join two dataframes
xy_tot <- rbind(xy_test, xy_train)

# find variable names with mean and standard deviation
variables <- read.table("features.txt")
var_list <- grep(paste(c("std", "mean", "Mean"), collapse = '|'), variables$V2)
xy_fin <- xy_tot[c(var_list, 562:563)] # extracts all columns in the list, and adds the final activity column

# join activity names
activity <- read.table("activity_labels.txt")
library(plyr)
names(activity)[1] <- 'activity'
names(xy_fin)[87] <- "activity"
new_df <- join(xy_fin, activity, by = "activity")

# create a new dataframe with the selected columns and the columns with subject and activity
new_df <- new_df[,c(1:86,89,88)]

# name the columns with the correct variable names
names_v <- variables[var_list,2] # makes a vector with the names
g1 <- gsub(",","", names_v)
g2 <- gsub("-","", g1)
g3 <- gsub("\\()","", g2)
g4 <- gsub("mean","Mean", g3)
g5 <- gsub("std","Std", g4)
g6 <- gsub("\\(","", g5)
names <- gsub("\\)","", g6)
names <- c(names, "activity", "subject")
names(new_df)<- names

#write.table(new_df, "Tidy_Samsung_GS_Acc_AIAssignment.txt")

# create new dataset grouped by acivity and subjects with the mean of each variable and writes it in current working directory
grouped <- new_df %>% group_by(activity, subject) %>% summarise_all(funs(mean))
write.table(grouped, "Grouped_Samsung_GS_Acc_AIAssignment.txt", row.names = FALSE)
