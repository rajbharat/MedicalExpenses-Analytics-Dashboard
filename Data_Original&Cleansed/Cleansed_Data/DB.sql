update PatientDetails$
set Age_bucket=
CASE 
WHEN AGE <=10 THEN '0-10'
WHEN AGE <=20 THEN '11-20'
WHEN AGE <=30 THEN '21-30'
WHEN AGE <=40 THEN '31-40'
WHEN AGE <=50 THEN '41-50'
WHEN AGE <=60 THEN '51-60'
WHEN AGE <=70 THEN '61-70'
WHEN AGE <=80 THEN '71-80'
WHEN AGE <=90 THEN '81-90'
End


update PatientDetails$
set 
[bmi_Person]=[weight]/ (height*height*0.0001)

update PatientDetails$
set 
[Bin-BMI]= 
CASE 
When [bmi_Person]>= 17.6 and [bmi_Person]<=22.5 then '17.6 - 22.5'
When [bmi_Person]>= 22.6 and [bmi_Person]<=27.5 then '22.6 - 27.5'
When [bmi_Person]>= 27.6 and [bmi_Person]<=32.5 then '27.6 - 32.5'
When [bmi_Person]>= 32.6 and [bmi_Person]<=37.5 then '32.6 - 37.5'
When [bmi_Person]>= 37.6 and [bmi_Person]<=42.5 then '37.6 - 42.5'
When [bmi_Person]>= 42.6 and [bmi_Person]<=47.5 then '42.6 - 47.5'
When [bmi_Person]>= 47.6 and [bmi_Person]<=52.5 then '47.6 - 52.5'
When [bmi_Person]>= 52.6 and [bmi_Person]<=57.5 then '52.6 - 57.5'
When [bmi_Person]>= 57.6 and [bmi_Person]<=62.5 then '57.6 - 62.5'
When [bmi_Person]>= 62.6 and [bmi_Person]<=67.5 then '62.6 - 67.5'
When [bmi_Person]>= 67.6 and [bmi_Person]<=72.5 then '67.6 - 72.5'
When [bmi_Person]>= 72.6 and [bmi_Person]<=77.5 then '72.6 - 77.5'
When [bmi_Person]>= 77.6 and [bmi_Person]<=82.5 then '77.6 - 82.5'
When [bmi_Person]>= 82.6 and [bmi_Person]<=87.5 then '82.6 - 87.5'
End
