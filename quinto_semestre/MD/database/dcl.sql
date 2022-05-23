USE musical_store;
FLUSH PRIVILEGES;


# Total
CREATE USER total_access@'localhost' IDENTIFIED BY 'root';  
GRANT ALL ON musical_store TO total_access@'localhost';  

# Readonly
CREATE USER read_onlyy@'localhost' IDENTIFIED BY 'root';  
GRANT SELECT ON * TO read_onlyy@'localhost';  

# Read Write
CREATE USER read_writee@'localhost' IDENTIFIED BY 'root';  
GRANT INSERT, UPDATE, SELECT ON * TO read_writee@'localhost';  

