  ## Datenbank anlegen
CREATE DATABASE secheader;
USE secheader;

  ## Tabelle für Header anlegen
CREATE TABLE headertable(
  header_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  header_fieldname VARCHAR (255) NOT NULL,
  header_kind VARCHAR (50),
  header_descr TEXT
);

  ## Tabelle für Values anlegen
CREATE TABLE valuetable(
  value_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fieldvalue VARCHAR (50) NOT NULL,
  considered_secure BOOLEAN,
  recommended_val BOOLEAN,
  belongs_to_header_id INT(8),
  FOREIGN KEY (belongs_to_header_id) REFERENCES headertable(header_id),
  value_descr TEXT
);

  ## Tabelle für Vulnerabilities anlegen
CREATE TABLE vulntable(
  vuln_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vuln_name VARCHAR (50) NOT NULL,
  vuln_descr TEXT,
  vuln_cwe VARCHAR (50),
  vuln_source VARCHAR (150)
);

  ## Kreuztabelle für Header & Werte anlegen
CREATE TABLE headervaluetable(
  header_id INT(8),
  FOREIGN KEY (header_id) REFERENCES headertable(header_id),
  value_id INT(8),
  FOREIGN KEY (value_id) REFERENCES valuetable(value_id),
  vuln_id INT(8),
  FOREIGN KEY (vuln_id) REFERENCES vulntable(vuln_id)
);
