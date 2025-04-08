--cantidad de datos (filas)
SELECT COUNT(*) AS total_registros
FROM game_data_all;
--informacion de colummnas
PRAGMA table_info(game_data_all);

--10 juegos con mayor rating  
select game, rating
from game_data_all 
order by rating desc
limit 15;
--10 juegos con mayor review positiva
select game, rating, positive_reviews 
from game_data_all 
order by positive_reviews desc
limit 15;
-- Encontrar un juego
SELECT * 
FROM game_data_all 
WHERE game LIKE '%Jedi%';
--fecha de salida de csgo
select game, release 
from game_data_all
where game like '%global offe%'
