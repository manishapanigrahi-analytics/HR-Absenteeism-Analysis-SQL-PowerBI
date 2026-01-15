--create a join table

select * from Absenteeism_at_work a
left join compensation b
on a.ID = b.ID

left join Reasons r on 
a.Reason_for_absence = r.Number;

--find the healthiest employees for the bonus

select * from Absenteeism_at_work
where Social_drinker = 0 
and Social_smoker = 0 
and Body_mass_index <25 
and Absenteeism_time_in_hours < (select AVG(Absenteeism_time_in_hours) from Absenteeism_at_work)

--compensation rate increase for non-smokers for budget $983,221 so 0.68 increase per hour // $1414.4 per year

select count(*) as non_smokers from Absenteeism_at_work
where Social_smoker = 0 

--optimizing the query

select 
a.ID,
r.Reason,
Month_of_absence,
Body_mass_index,
CASE WHEN Body_mass_index <18.5 THEN 'Underweight'
     WHEN Body_mass_index between 18.5 and 25 THEN 'Healthy'
     WHEN Body_mass_index between 25 and 30 THEN 'Overweight'
     WHEN Body_mass_index >30 THEN 'Obese'
     ELSE 'Unknown' end as BMI_Category,
CASE WHEN Month_of_absence IN (12,1,2) THEN 'Winter'
     WHEN Month_of_absence IN (3,4,5) THEN 'Spring'
     WHEN Month_of_absence IN (6,7,8) THEN 'Summer'
     WHEN Month_of_absence IN (9,10,11) THEN 'Rainy'
     ELSE 'Unknown' END as Season_Names,
Seasons,
Month_of_absence,
Day_of_the_week,
Transportation_expense,
Education,
Son,
Social_drinker,
Social_smoker,
Pet,
Height,
Disciplinary_failure,
Age,
Work_load_Average_day,
Absenteeism_time_in_hours
from Absenteeism_at_work a
left join compensation b
on a.ID = b.ID
left join Reasons r on 
a.Reason_for_absence = r.Number;

select count(*) from Absenteeism_at_work
where Body_mass_index <18.5