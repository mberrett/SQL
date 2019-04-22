/*
A median is defined as a number separating the higher half
of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N)
from STATION and round your answer to  decimal places.
*/

/*
SELECT FLOOR(CEIL(LAT_N, 4))
FROM STATION

output = 249 */

SELECT ROUND(LAT_N, 4)
FROM STATION S
ORDER BY LAT_N
LIMIT 249, 1
