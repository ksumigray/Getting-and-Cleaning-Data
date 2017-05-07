# Codebook
This codebook summarizes the data fields in the file mean_data.txt

## The data
This dataset was originally acquired from the UCI Machine Learning Repository as
the Human Activity Recognition Using Smartphones Data Set. The mean_data.txt file
summarizes the mean value for each measurement by subject (ID) and by activity.
The experiments acquired information from a group of 30 volunteers wearing a Samsung Galaxy S II on the waist.The six activities performed were as follows:
* Walking
* Walking upstairs
* Walking downstairs
* Sitting
* Standing
* Laying

## Data transformations
The test variable and training variable values were merged into one dataset, and
then the subject IDs for each set of measurements were added to the dataset.
Activity labels were changed to reflect the activity, column names were added so
that it was clear what measurement was included in each column. Finally, the data
were summarized by calculating the mean of each variable for each subject and separated by activity.



## Variables created
*activity_name - Type of activity performed when the measurements were acquired
*subject - The ID of the test subject