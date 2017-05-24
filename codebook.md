Outline of dataset :
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Activities :-
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

# Features :-
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

# Renaming of features headings :-

* prefix t is replaced by time
* Acc is replaced by Accelerometer
* Gyro is replaced by Gyroscope
* prefix f is replaced by frequency
* Mag is replaced by Magnitude
* BodyBody is replaced by Body

Feature Names :	
Body Acceleration	
Gravity Acceleration	
Body Acceleration Jerk	
Body Angular Speed	
Body Angular Acceleration	
Body Acceleration Magnitude	
Gravity Acceleration Magnitude	
Body Acceleration Jerk Magnitude	
Body Angular Speed Magnitude	
Body Angular Acceleration Magnitude	

Time domain	:
TimeDomain.BodyAcceleration.XYZ	
TimeDomain.GravityAcceleration.XYZ	
TimeDomain.BodyAccelerationJerk.XYZ	
TimeDomain.BodyAngularSpeed.XYZ
TimeDomain.BodyAngularAcceleration.XYZ	
TimeDomain.BodyAccelerationMagnitude	
TimeDomain.GravityAccelerationMagnitude	
TimeDomain.BodyAccelerationJerkMagnitude	
TimeDomain.BodyAngularSpeedMagnitude	
TimeDomain.BodyAngularAccelerationMagnitude	

Frquency Domain :

FrequencyDomain.BodyAcceleration.XYZ
FrequencyDomain.BodyAccelerationJerk.XYZ
FrequencyDomain.BodyAngularSpeed.XYZ
FrequencyDomain.BodyAccelerationMagnitude
FrequencyDomain.BodyAccelerationJerkMagnitude
FrequencyDomain.BodyAngularSpeedMagnitude
FrequencyDomain.BodyAngularAccelerationMagnitude

