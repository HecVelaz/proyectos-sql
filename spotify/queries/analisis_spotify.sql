-- Visualizar las 10 primeras filas
SELECT * FROM spotify_tracks LIMIT 10;
-- 10 canciones más populares
SELECT name, artists, popularity
FROM spotify_tracks
ORDER by popularity DESC 
LIMIT 10;
--Consulta sobre las 10 con mayor duracion
--paso el ms a minutos con nueva columna
SELECT name, duration_ms/60000 as duration_min 
from spotify_tracks
order by duration_ms desc
limit 10;