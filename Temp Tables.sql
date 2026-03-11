# Templ Tables
CREATE temporary table temp_table
(
first_name varchar(50),
last_name  varchar(50),
favorite_movie varchar(100)
);
select * 
from temp_table;

INSERT INTO temp_table 
VALUES
