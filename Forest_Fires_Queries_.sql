create database fire;
use fire;
select count(dep.Code_Departement) from dep;
select count(df_forest_fire3.Type) from df_forest_fire3;

ALTER TABLE `correspondance-code-insee-code-postal1`
RENAME TO communes;

ALTER TABLE df_forest_fire3
RENAME TO forest_fires;

CREATE TABLE dep
  AS (SELECT Code_Departement, Departement
      FROM communes);

ALTER TABLE forest_fires
RENAME COLUMN `Area (ha)` TO Area_ha;

select dep.Code_Departement,dep.Departement, forest_fires.Commune, 
forest_fires.Date, forest_fires.Area_ha, forest_fires.Cause
from forest_fires
left join dep
on forest_fires.Code_Departement=dep.Code_Departement;

select forest_fires.Date, forest_fires.Commune, forest_fires.Area_ha, 
communes.Population, communes.Altitude_Moyenne, communes.Superficie, communes.Code_Departement
from forest_fires
inner join communes
on forest_fires.Commune=communes.Commune
order by communes.Population DESC;
#Communes with the most population

select forest_fires.Commune, COUNT(DISTINCT(forest_fires.Area_ha)), communes.Population, 
communes.Altitude_Moyenne, communes.Code_Departement
from forest_fires
inner join communes
on forest_fires.Commune=communes.Commune
group by forest_fires.Commune, communes.Population, communes.Altitude_Moyenne, communes.Code_Departement
order by COUNT(DISTINCT(forest_fires.Area_ha)) DESC;
#Towns with the most fires

select communes.Code_Departement, communes.Departement, COUNT(DISTINCT(forest_fires.Area_ha)), 
communes.Population, communes.Altitude_Moyenne
from forest_fires
inner join communes
on forest_fires.Commune=communes.Commune
group by  communes.Code_Departement,  communes.Departement, communes.Population, communes.Altitude_Moyenne
order by COUNT(DISTINCT(forest_fires.Area_ha)) DESC;
#Departement with the most fires



SELECT
  dep.Code_Departement,
  dep.Departement,
  forest_fires.Commune,
  forest_fires.Date,
  forest_fires.Area_ha,
  forest_fires.Cause,
  communes.Altitude_Moyenne,
  communes.Superficie,
  communes.Population,
  communes.geo_point_2d
FROM dep
JOIN forest_fires
  ON dep.Code_Departement = forest_fires.Code_Departement
JOIN communes
  ON forest_fires.Code_Departement = communes.Code_Departement;
  #Joining all the tables together
  


