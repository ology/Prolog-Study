-- Test table for the test database!
CREATE TABLE testers (
    name VARCHAR(50) NOT NULL,
    created TIMESTAMP DEFAULT 0,
    modified TIMESTAMP DEFAULT 0 ON UPDATE CURRENT_TIMESTAMP,
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY
) ENGINE=InnoDB;

-- Populate the table.
insert into testers set created=NOW(), name='cleetus';
insert into testers set created=NOW(), name='jethro';
insert into testers set created=NOW(), name='goober';
insert into testers set created=NOW(), name='billy-bob';

