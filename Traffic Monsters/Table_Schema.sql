# Create Table for Database , Drop Tables if needed
DROP TABLE IF EXISTS Street_Condition;
DROP TABLE IF EXISTS Rush_Hour_Routes;




Create Table Street_Condition(
Cnn integer PRIMARY KEY,
Street character varying(50) NOT NULL,
Street_Maintenance character varying(50) NOT NULL
);




Create Table Rush_Hour_Routes(
Cnn integer PRIMARY KEY,
Street character varying(50) NOT NULL,
Neighborhood character varying(50) NOT NULL
);


# Joined both tables using the INNER JOIN clause
SELECT 
    Rush_Hour_Routes.Cnn
	Street,
	Neighborhood,
	Street_Maintenance
FROM
    "Rush_Hour_Routes"
INNER JOIN Street_Condition On Street_Condition.Cnn=Rush_Hour_Routes.Cnn;
	
