-- Pioneer/Colonist Change

INSERT INTO Defines (
Name, Value)
SELECT 'PIONEER_POPULATION_CHANGE', '3';

INSERT INTO Defines (
Name, Value)
SELECT 'PIONEER_EXTRA_PLOTS', '3';

INSERT INTO Defines (
Name, Value)
SELECT 'PIONEER_FOOD_PERCENT', '25';

INSERT INTO Defines (
Name, Value)
SELECT 'COLONIST_POPULATION_CHANGE', '5';

INSERT INTO Defines (
Name, Value)
SELECT 'COLONIST_EXTRA_PLOTS', '5';

INSERT INTO Defines (
Name, Value)
SELECT 'COLONIST_FOOD_PERCENT', '50';

UPDATE Units
SET ObsoleteTech = 'TECH_BANKING'
WHERE Class = 'UNITCLASS_SETTLER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='SETTLER_COMMUNITY' AND Value= 1);

UPDATE Units
SET FoundMid = '1'
WHERE Type = 'UNIT_SPANISH_CONQUISTADOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='SETTLER_COMMUNITY' AND Value= 1);