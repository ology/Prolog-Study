-- Test table for the test database!
CREATE TABLE testers (
    name VARCHAR(10) NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT 0,
    modified TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY
) ENGINE=InnoDB;

-- Populate the table.
INSERT INTO testers (name, created, modified) VALUES ('cleetus', null, null);
INSERT INTO testers (name, created, modified) VALUES ('jethro', null, null);
INSERT INTO testers (name, created, modified) VALUES ('goober', null, null);
INSERT INTO testers (name, created, modified) VALUES ('billy-bob', null, null);

-- Usage:
-- github/ology/Prolog-Study/odbc> mysql -u root -p test < testers.sql
