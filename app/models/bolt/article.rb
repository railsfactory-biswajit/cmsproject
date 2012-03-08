class Bolt::Article < ActiveRecord::Base
  
  
##### for STATUS #######  
  PUBLISHED = 0
  UNPUBLISHED = 1
  ARCHIVED = 2
  TRASHED = 3
  STATUS_TYPES = {
    PUBLISHED => "Published",
    UNPUBLISHED => "Unpublished",
    ARCHIVED => "Archived",
    TRASHED => "Trashed"
  }
  
 ######### for ACCESS ######## 
  PUBLIC =0
  REGISTERED =1
  SPECIAL =2
  CUSTOMER_ACCESS_LEVEL =3
  ACCESS_TYPES ={
    
    PUBLIC => "Public",
    REGISTERED => "Registered",
    SPECIAL    => "Special",
    CUSTOMER_ACCESS_LEVEL => "Customer Access Level"
  }
  
 ######### for FEATURED ########
 
 NO =0
 YES =1
 FEATURED_TYPES ={
   NO =>"No",
   YES =>"Yes"
   
 } 
  
  
  
  
  
end
