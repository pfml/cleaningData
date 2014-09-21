# Wearable computing

## Original Data

The original data were raw sensor signals produced by 3-axial accelerometers and gyroscope of a smartphone weared by a group of volunteers performing activities. Raw datas were post-processed with various signal processing techniques to measurement vector consisting of 561 features. For detailed description of the original dataset, please see `features_info.txt` in
the zipped dataset file.

- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Data sets after applying run_analysis script

Use `write.table(sensorAvgByActivityBySubject, file = "sensorAvgByActivityBySubject.txt")` in line 75 of the script (delete or comment `row.name=FALSE` to obtain the dataset with explicit row names.

 [1] "subject", numbered form 1 to 30                                                                  
 [2] "activity", explicit : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING        
 
 Normalized  and bounded within [-1,1] :
 
 [3] "Time_Domain.BodyAcceleration.Mean.X"                                      
 [4] "Time_Domain.BodyAcceleration.Mean.Y"                                      
 [5] "Time_Domain.BodyAcceleration.Mean.Z"                                      
 [6] "Time_Domain.BodyAcceleration.Standard_Deviation.X"                        
 [7] "Time_Domain.BodyAcceleration.Standard_Deviation.Y"                        
 [8] "Time_Domain.BodyAcceleration.Standard_Deviation.Z"                        
 [9] "Time_Domain.GravityAcceleration.Mean.X"                                   
[10] "Time_Domain.GravityAcceleration.Mean.Y"                                   
[11] "Time_Domain.GravityAcceleration.Mean.Z"                                   
[12] "Time_Domain.GravityAcceleration.Standard_Deviation.X"                     
[13] "Time_Domain.GravityAcceleration.Standard_Deviation.Y"                     
[14] "Time_Domain.GravityAcceleration.Standard_Deviation.Z"                     
[15] "Time_Domain.BodyAccelerationJerk.Mean.X"                                  
[16] "Time_Domain.BodyAccelerationJerk.Mean.Y"                                  
[17] "Time_Domain.BodyAccelerationJerk.Mean.Z"                                  
[18] "Time_Domain.BodyAccelerationJerk.Standard_Deviation.X"                    
[19] "Time_Domain.BodyAccelerationJerk.Standard_Deviation.Y"                    
[20] "Time_Domain.BodyAccelerationJerk.Standard_Deviation.Z"                    
[21] "Time_Domain.BodyAngular_Speed.Mean.X"                                     
[22] "Time_Domain.BodyAngular_Speed.Mean.Y"                                     
[23] "Time_Domain.BodyAngular_Speed.Mean.Z"                                     
[24] "Time_Domain.BodyAngular_Speed.Standard_Deviation.X"                       
[25] "Time_Domain.BodyAngular_Speed.Standard_Deviation.Y"                       
[26] "Time_Domain.BodyAngular_Speed.Standard_Deviation.Z"                       
[27] "Time_Domain.BodyAngular_Acceleration.Mean.X"                              
[28] "Time_Domain.BodyAngular_Acceleration.Mean.Y"                              
[29] "Time_Domain.BodyAngular_Acceleration.Mean.Z"                              
[30] "Time_Domain.BodyAngular_Acceleration.Standard_Deviation.X"                
[31] "Time_Domain.BodyAngular_Acceleration.Standard_Deviation.Y"                
[32] "Time_Domain.BodyAngular_Acceleration.Standard_Deviation.Z"                
[33] "Time_Domain.BodyAccelerationMagnitude.Mean"                               
[34] "Time_Domain.BodyAccelerationMagnitude.Standard_Deviation"                 
[35] "Time_Domain.GravityAccelerationMagnitude.Mean"                            
[36] "Time_Domain.GravityAccelerationMagnitude.Standard_Deviation"              
[37] "Time_Domain.BodyAccelerationJerkMagnitude.Mean"                           
[38] "Time_Domain.BodyAccelerationJerkMagnitude.Standard_Deviation"             
[39] "Time_Domain.BodyAngular_SpeedMagnitude.Mean"                              
[40] "Time_Domain.BodyAngular_SpeedMagnitude.Standard_Deviation"                
[41] "Time_Domain.BodyAngular_AccelerationMagnitude.Mean"                       
[42] "Time_Domain.BodyAngular_AccelerationMagnitude.Standard_Deviation"         
[43] "Frequency_Domain.BodyAcceleration.Mean.X"                                 
[44] "Frequency_Domain.BodyAcceleration.Mean.Y"                                 
[45] "Frequency_Domain.BodyAcceleration.Mean.Z"                                 
[46] "Frequency_Domain.BodyAcceleration.Standard_Deviation.X"                   
[47] "Frequency_Domain.BodyAcceleration.Standard_Deviation.Y"                   
[48] "Frequency_Domain.BodyAcceleration.Standard_Deviation.Z"                   
[49] "Frequency_Domain.BodyAccelerationJerk.Mean.X"                             
[50] "Frequency_Domain.BodyAccelerationJerk.Mean.Y"                             
[51] "Frequency_Domain.BodyAccelerationJerk.Mean.Z"                             
[52] "Frequency_Domain.BodyAccelerationJerk.Standard_Deviation.X"               
[53] "Frequency_Domain.BodyAccelerationJerk.Standard_Deviation.Y"               
[54] "Frequency_Domain.BodyAccelerationJerk.Standard_Deviation.Z"               
[55] "Frequency_Domain.BodyAngular_Speed.Mean.X"                                
[56] "Frequency_Domain.BodyAngular_Speed.Mean.Y"                                
[57] "Frequency_Domain.BodyAngular_Speed.Mean.Z"                                
[58] "Frequency_Domain.BodyAngular_Speed.Standard_Deviation.X"                  
[59] "Frequency_Domain.BodyAngular_Speed.Standard_Deviation.Y"                  
[60] "Frequency_Domain.BodyAngular_Speed.Standard_Deviation.Z"                  
[61] "Frequency_Domain.BodyAccelerationMagnitude.Mean"                          
[62] "Frequency_Domain.BodyAccelerationMagnitude.Standard_Deviation"            
[63] "Frequency_Domain.BodyBodyAccelerationJerkMagnitude.Mean"                  
[64] "Frequency_Domain.BodyBodyAccelerationJerkMagnitude.Standard_Deviation"    
[65] "Frequency_Domain.BodyBodyAngular_SpeedMagnitude.Mean"                     
[66] "Frequency_Domain.BodyBodyAngular_SpeedMagnitude.Standard_Deviation"       
[67] "Frequency_Domain.BodyBodyAngular_AccelerationMagnitude.Mean"              
[68] "Frequency_Domain.BodyBodyAngular_AccelerationMagnitude.Standard_Deviation"

