-- Sql script ranks origin of bands

SELECT origin, SUM(fans) AS nb_fans
from metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
