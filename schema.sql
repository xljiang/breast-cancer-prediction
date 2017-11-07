-- CREATE Database --

DROP DATABASE IF EXISTS `mlmodel_db`;

CREATE DATABASE IF NOT EXISTS mlmodel_db 
    DEFAULT CHARACTER SET utf8mb4 
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE mlmodel_db;

-- CREATE Table --

CREATE TABLE Dataset (
  dataset_id int(16) unsigned NOT NULL AUTO_INCREMENT,
  dataset_name varchar(50) NOT NULL,
  link varchar(250) NOT NULL,
  abstract varchar(250) NULL,
  attribute_number int(16) NULL,
  instance_number varchar(250) NULL,
  data_type varchar(250) NULL,
  UNIQUE KEY (dataset_id),
  PRIMARY KEY (dataset_name)
);

CREATE TABLE Model (
  model_id int(16) unsigned NOT NULL AUTO_INCREMENT,
  model_name varchar(50) NOT NULL,
  dataset_name varchar(50) NOT NULL,
  model_filename varchar(250) NOT NULL,
  score decimal(5,4) NOT NULL,
  UNIQUE KEY (model_id),
  PRIMARY KEY (model_name)
);


-- Seed Data --
INSERT INTO `Dataset` (dataset_name, link) VALUES ('Breast Cancer','https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)');
INSERT INTO `Dataset` (dataset_name, link) VALUES ('Pima Indians Diabetes','https://archive.ics.uci.edu/ml/datasets/Pima+Indians+Diabetes');
INSERT INTO `Dataset` (dataset_name, link) VALUES ('StarCraft2 Replay','https://archive.ics.uci.edu/ml/datasets/SkillCraft1+Master+Table+Dataset');

INSERT INTO `Model` (model_name, dataset_name, pmodel, score) VALUES ('Fake Model', 'Breast Cancer', 'Empty', '0.0000');
