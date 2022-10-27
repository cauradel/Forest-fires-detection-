# Forest-fires-detection-

[Forest fires in the French mediterranean area ]

Manele El Zoghlami

SEPT 2022

Overview

As the climate crisis takes its toll on the world, some regions have been suffering the consequences more than others. Floods, storms, extreme droughts, the impact of climate change is now undeniable.
In France, in the span of a few years, one of the most spectacular ways those changes have been reflected in nature is through fire forests. If the phenomenon is far from being a new one, in those last few years hectares of forest have been destroyed by the flames at an alarming rate. 
If climate change cannot be single-handedly held as responsible for those natural hazards , it has been setting a propitious environment for those fires to start and spread at a concerning rate, the drought acting as a fuel.
For those reasons, it is now imperative for authorities throughout the world to implement the necessary means to prevent as much as possible fires from starting and spreading.

Business Case

In that mindset, my business case will consist of analyzing the main reasons for forest fires in the Mediterranean area of France between March 2020 and September 2022, the most devastated departments of the region and analyzing the potential increase of those forest fires in the last years. I will provide some insights as to what could be done to slow down the spread of forest fires. Finally, I will do some forecasting to try and  predict what the situation will be next year.
I will also use another dataset from INSEE to provide some insights in SQL  about the towns and departments that have been the most hit by forest fires.


Data Preparation

My data set is about forest fires in the French mediterranean area, the database is part of the Prométhée project.
data source: https://www.promethee.com/incendies
4283 rows × 7 columns

Type : Type of forest fires, in this case "forest"
Date : Date when the fire was reported
Departement : Number of the French department
Town : town that was hit by the fire
Area(ha) : Size of land that was lost to the fire
Cause : What set the fire

Data Wrangling and Cleaning

check and convert data type
input missing data
drop rows with missing data for the column 'Cause'
check and remove outliers
check duplication
values in categorical columns: gorup abnormal values into other value
combine/drop/create columns
encode non-numeric columns

Data Storage
.csv file.

Data Analysis

EDA

Understanding of data
Descriptive Analysis
Dashboarding in Tableau : https://public.tableau.com/views/Projet_Final/Forestfiresinthemediterraneanarea?:language=en-US&:display_count=n&:origin=viz_share_link

<img width="1020" alt="Screenshot 2022-09-22 at 14 14 01" src="https://user-images.githubusercontent.com/77899183/192102355-549e6589-833f-4f1a-8e96-4be42fc07765.png">
<img width="1041" alt="Screenshot 2022-09-22 at 14 14 14" src="https://user-images.githubusercontent.com/77899183/192102362-b28f1c76-d94e-4c8d-b1fd-9d9bbff5ab28.png">
<img width="992" alt="Screenshot 2022-09-22 at 14 14 29" src="https://user-images.githubusercontent.com/77899183/192102371-dba16759-fb52-4f4e-bb4b-63db50c603de.png">


Data Manipulation with SQL : 

<img width="704" alt="Screenshot 2022-10-27 at 13 58 02" src="https://user-images.githubusercontent.com/77899183/198278696-f6bd6fd1-ccb6-4f8a-9b7b-16fa7007935d.png">
<img width="691" alt="Screenshot 2022-10-27 at 13 58 10" src="https://user-images.githubusercontent.com/77899183/198278746-9fcade1c-5e2d-4506-99ed-21f12db0eced.png">
<img width="743" alt="Screenshot 2022-10-27 at 13 58 24" src="https://user-images.githubusercontent.com/77899183/198278773-6b34da8f-4b06-45d2-80ab-bb2c390404ef.png">
<img width="691" alt="Screenshot 2022-10-27 at 13 58 36" src="https://user-images.githubusercontent.com/77899183/198278803-d8d8dc94-cd15-4a84-84e4-b49a99c44270.png">
<img width="696" alt="Screenshot 2022-10-27 at 13 58 50" src="https://user-images.githubusercontent.com/77899183/198278819-dc9b307e-0e11-4416-9e4c-e1f15f7f2691.png">






Forecasting with Timeseries

PCA
Model Building
Model Evaluation
Timeseries forecasting with Prophet

<img width="1550" alt="image" src="https://user-images.githubusercontent.com/77899183/192102271-039cb995-9a31-4264-b319-c29d9740f08d.png">
