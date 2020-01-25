# Getting & Cleaning Data - Final Assignment

The data used for the project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at [the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
).

The data itself can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

# Assumptions 

1. For the code to run, the working folder should be "getdata_projectfiles_UCI HAR Dataset\UCI HAR Dataset"

2. This code requires the libraries **plyr**, **dplyr**

# What does run_analysis.R do?

1. The run_analysis.R takes the test and training "X" sets found in the zipped folder above and:

- merges them with their activity labels ("y")
- merges them with their subjects
- appends the two sets

2. It then takes the "features.txt" file and finds, among those variable names, each name containing "mean/Mean" or "std". 
The resulting vector, containing the positions of variable names with those characters, is then used to select the corresponding columns.
The "subject" and "activity" columns are also added.

3. The "activity_labels.txt" is then joined to the dataframe, to give actual names to the activity column.

4. Underscores, brackets, commas and other symbols are removed from the variable names; the columns are renamed with the formatted variable names.

5. Finally, the final dataframe is grouped by activity and subject and mean values are computed for each column. This grouped dataset is saved as
text file in the working directory.
