### Project description
The goal of this project was to create an R script called run_analysis.R that 
performed the following functions:
1. Merges the training and test sets to create a single data set.
2. Extracts only the measurements for mean and standard deviation for each measurement.
3. Uses descriptive activity names for each activity in the data set (e.g., "Walking", "Laying", "standing", etc.)
4. Appropriately labels the data set with descriptive variables.
5. Generates a tidy data set with the average of each variable for each activity for each subject.

## Data and Files
The program uses the dataset found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The codebook.md file describes the variables and the transformations performed on the data. 

The run_analysis.R file contains all of the code to perform the tasks listed above. The output is a text file called mean_data.txt and it is also in this repository.