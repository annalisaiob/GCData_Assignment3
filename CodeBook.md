# Code Book

The "Grouped_Samsung_GS_Acc_AIAssignment.txt" is a dataframe with 180 observations and 88 variables.

The first two variables are "activity" and "subject". 

### Activity:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### Subject:
1 to 30, The experiments have been carried out with a group of 30 volunteers

### Features from 3 to 88
Each columns has the mean of original columns by activity and subject    
Names with X / ...Y / ...Z have one columns, each for each direction


tBodyAccMeanX / ...Y / ...Z               
tBodyAccStdX / ...Y / ...Z                   
tGravityAccMeanX / ...Y / ...Z              
tGravityAccStdX / ...Y / ...Z                
tBodyAccJerkMeanX / ...Y / ...Z                
tBodyAccJerkStdX / ...Y / ...Z                  
tBodyGyroMeanX / ...Y / ...Z                   
tBodyGyroStdX / ...Y / ...Z                     
tBodyGyroJerkMeanX / ...Y / ...Z                 
tBodyGyroJerkStdX / ...Y / ...Z                  
tBodyAccMagMean                
tBodyAccMagStd                    
tGravityAccMagMean                
tGravityAccMagStd                
tBodyAccJerkMagMean               
tBodyAccJerkMagStd                
tBodyGyroMagMean                
tBodyGyroMagStd                   
tBodyGyroJerkMagMean              
tBodyGyroJerkMagStd              
fBodyAccMeanX / ...Y / ...Z               
fBodyAccStdX / ...Y / ...Z                 
fBodyAccMeanFreqX / ...Y / ...Z          
fBodyAccJerkMeanX / ...Y / ...Z         
fBodyAccJerkStdX / ...Y / ...Z                 
fBodyAccJerkMeanFreqX / ...Y / ...Z        
fBodyGyroMeanX / ...Y / ...Z                    
fBodyGyroStdX / ...Y / ...Z           
fBodyGyroMeanFreqX / ...Y / ...Z           
fBodyAccMagMean      
fBodyAccMagStd                  
fBodyAccMagMeanFreq             
fBodyBodyAccJerkMagMean        
fBodyBodyAccJerkMagStd          
fBodyBodyAccJerkMagMeanFreq  
fBodyBodyGyroMagMean              
fBodyBodyGyroMagStd              
fBodyBodyGyroMagMeanFreq        
BodyBodyGyroJerkMagMean         
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq   
angletBodyAccMeangravity        
angletBodyAccJerkMeangravityMean 
angletBodyGyroMeangravityMean    
angletBodyGyroJerkMeangravityMean
angleXgravityMean                            


(From initial documentation:)

#### Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The set of variables that were kept from these signals are the Mean and Standard Deviation.

The Angle between to vectors was also kept, as it contained a Mean.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

-gravityMean
-tBodyAccMean
-tBodyAccJerkMean
-tBodyGyroMean
-tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
