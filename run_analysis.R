library(dplyr)
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
merged.df <- rbind(test, train)

variable_names <- read.table("./UCI HAR Dataset/features.txt")
mean_std_variables <- grep("-(mean|std)\\(\\)", variable_names[,2])
merged.df <- merged.df[, mean_std_variables]

test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
merged_labels <- rbind(test_labels, train_labels)

merged_labels$activity <- gsub(1, 'walking', gsub(2, 'walking_upstairs', gsub(3, 
'walking_downstairs', gsub(4, 'sitting', gsub(5, 'standing', gsub(6, 'laying', 
merged_labels$V1))))))



names(merged.df) <- c(mean_std_variables)
merged.df$activity_name <- c(merged_labels$activity)

subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_number_test <- subject_test$V1
subject_number_train <- subject_train$V1
merged_subject_number <- c(subject_number_test, subject_number_train)
merged.df$subject <- merged_subject_number

melted <- melt(merged.df, id=c('activity_name', 'subject'))
mean_data <- dcast(melted, activity_name + subject ~ variable, mean)


write.table(mean_data, "mean_data.txt", row.names=FALSE, quote=FALSE)