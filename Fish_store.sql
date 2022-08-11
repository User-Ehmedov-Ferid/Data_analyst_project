ALTER TABLE  fish_store.fish
CHANGE ï»¿Species Species text ;



SELECT Species , MAX(Weight) , MIN(Weight) FROM fish_store.fish
GROUP BY Species;

SELECT Species , Height , Width FROM fish_store.fish 
WHERE Height > 15 AND Width > 5;

SELECT Species ,  AVG(`Vertical length`) AS Average_of_Vertical  ,
AVG(`Diagonal length`) AS Average_of_Diagonal ,
AVG(`Cross length`) AS Average_of_Cross
FROM `fish_store`.`fish` 
GROUP BY Species;

SELECT * FROM fish_store.fish
WHERE Species LIKE 'B%' AND Height > 10 AND Height < 13;



