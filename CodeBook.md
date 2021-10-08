This project uses data from "Human Activity Recognition Using Smartphones Dataset, Version 1.0", 
that comes from the accelerometers from the Samsung Galaxy S smartphone.

The data shows 3-axial raw signals from the accelerometer and gyroscope in the following format: tAcc-XYZ, tGyro-XYZ, where "t" is time. Data show changes in these parameters during six types of activities: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING, carried by 30 subjects.

Some transformations made to clean up the data:

    1)The training and test sets were merged 
    2)The measurements on the mean and standard deviation for each measurement were extracted.
    3)The number codes of activities were changed to descriptive activity names.
    4)The variable names were changed to more descriptive ones.
    5)The independent tidy data set was created with the average of each variable for each activity and each subject.

Tidy data was stored in "Tidy_data_set.txt" file and consists of 88 columns of variables and 180 rows of averages of observations.

Column structure:

    col 1: subject id
        value range 1 .. 30
    col 2: activity
        value range LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
    col 3 ... col 88: the mean values of the measured means or the mean value of the measured 
    standard deviations

The list of measurements are listed below:

    "TimeBodyAccelerometerMean()-X"   
    "TimeBodyAccelerometerMean()-Y"                    
    "TimeBodyAccelerometerMean()-Z"     
    "TimeGravityAccelerometerMean()-X"                 
    "TimeGravityAccelerometerMean()-Y"      
    "TimeGravityAccelerometerMean()-Z"                 
    "TimeBodyAccelerometerJerkMean()-X"                 
    "TimeBodyAccelerometerJerkMean()-Y"                
    "TimeBodyAccelerometerJerkMean()-Z"                 
    "TimeBodyGyroscopeMean()-X"                        
    "TimeBodyGyroscopeMean()-Y"                         
    "TimeBodyGyroscopeMean()-Z"                        
    "TimeBodyGyroscopeJerkMean()-X"                     
    "TimeBodyGyroscopeJerkMean()-Y"                    
    "TimeBodyGyroscopeJerkMean()-Z"                     
    "TimeBodyAccelerometerMagnitudeMean()"             
    "TimeGravityAccelerometerMagnitudeMean()"           
    "TimeBodyAccelerometerJerkMagnitudeMean()"         
    "TimeBodyGyroscopeMagnitudeMean()"               
    "TimeBodyGyroscopeJerkMagnitudeMean()"             
    "FrequencyBodyAccelerometerMean()-X"              
    "FrequencyBodyAccelerometerMean()-Y"               
    "FrequencyBodyAccelerometerMean()-Z"              
    "FrequencyBodyAccelerometerMeanFreq()-X"           
    "FrequencyBodyAccelerometerMeanFreq()-Y"          
    "FrequencyBodyAccelerometerMeanFreq()-Z"           
    "FrequencyBodyAccelerometerJerkMean()-X"           
    "FrequencyBodyAccelerometerJerkMean()-Y"           
    "FrequencyBodyAccelerometerJerkMean()-Z"           
    "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
    "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
    "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
    "FrequencyBodyGyroscopeMean()-X"                   
    "FrequencyBodyGyroscopeMean()-Y"                   
    "FrequencyBodyGyroscopeMean()-Z"                    
    "FrequencyBodyGyroscopeMeanFreq()-X"               
    "FrequencyBodyGyroscopeMeanFreq()-Y"               
    "FrequencyBodyGyroscopeMeanFreq()-Z"               
    "FrequencyBodyAccelerometerMagnitudeMean()"        
    "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
    "FrequencyBodyAccelerometerJerkMagnitudeMean()"  
    "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
    "FrequencyBodyGyroscopeMagnitudeMean()"            
    "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
    "FrequencyBodyGyroscopeJerkMagnitudeMean()"         
    "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
    "Angle(TimeBodyAccelerometerMean,Gravity)"          
    "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
    "Angle(TimeBodyGyroscopeMean,GravityMean)"          
    "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
    "Angle(X,GravityMean)"                             
    "Angle(Y,GravityMean)"                             
    "Angle(Z,GravityMean)"                             
    "TimeBodyAccelerometerSTD()-X"                     
    "TimeBodyAccelerometerSTD()-Y"                     
    "TimeBodyAccelerometerSTD()-Z"                     
    "TimeGravityAccelerometerSTD()-X"                  
    "TimeGravityAccelerometerSTD()-Y"                  
    "TimeGravityAccelerometerSTD()-Z"                  
    "TimeBodyAccelerometerJerkSTD()-X"                 
    "TimeBodyAccelerometerJerkSTD()-Y"                 
    "TimeBodyAccelerometerJerkSTD()-Z"                 
    "TimeBodyGyroscopeSTD()-X"                         
    "TimeBodyGyroscopeSTD()-Y"                         
    "TimeBodyGyroscopeSTD()-Z"                         
    "TimeBodyGyroscopeJerkSTD()-X"                     
    "TimeBodyGyroscopeJerkSTD()-Y"                     
    "TimeBodyGyroscopeJerkSTD()-Z"                     
    "TimeBodyAccelerometerMagnitudeSTD()"              
    "TimeGravityAccelerometerMagnitudeSTD()"           
    "TimeBodyAccelerometerJerkMagnitudeSTD()"          
    "TimeBodyGyroscopeMagnitudeSTD()"                  
    "TimeBodyGyroscopeJerkMagnitudeSTD()"              
    "FrequencyBodyAccelerometerSTD()-X"                
    "FrequencyBodyAccelerometerSTD()-Y"                
    "FrequencyBodyAccelerometerSTD()-Z"                
    "FrequencyBodyAccelerometerJerkSTD()-X"            
    "FrequencyBodyAccelerometerJerkSTD()-Y"            
    "FrequencyBodyAccelerometerJerkSTD()-Z"             
    "FrequencyBodyGyroscopeSTD()-X"                    
    "FrequencyBodyGyroscopeSTD()-Y"                    
    "FrequencyBodyGyroscopeSTD()-Z"                    
    "FrequencyBodyAccelerometerMagnitudeSTD()"         
    "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
    "FrequencyBodyGyroscopeMagnitudeSTD()"              
    "FrequencyBodyGyroscopeJerkMagnitudeSTD()"  
