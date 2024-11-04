# Extract-unrepeated-and-exclude-number-in-SQL-Server

How to extrat of any row unrepeated and exclude number?

We want to extract only letter characters of this QUERY (Select * from locations;):

[![image.png](https://i.postimg.cc/MZmsmmCm/image.png)](https://postimg.cc/xqqy0MTX)

With this Query we can extract unrepeated and remove number of any row.
SELECT DISTINCT __ select unrepeated rows
SUBSTRING(locations,                                                 \
PATINDEX('%[A-Za-z]+$%', locations),                                  |__ Remove the number of any row
LEN(locations)- PATINDEX('%[A-Za-z]%',locations) + 1) as locations   /
from locations; __ table

