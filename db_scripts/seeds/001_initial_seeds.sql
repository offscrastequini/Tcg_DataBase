-- Lookups: collections, types, stages
-- Run after db_scripts/tables/001_card_table.sql

INSERT INTO tbl_collection (collectionsSetName, releaseDate, totalCardNumberInCollection)
VALUES
    ('Base Set', '1999-01-09', 102),
    ('Jungle',   '1999-06-16', 64),
    ('Fossil',   '1999-10-10', 62);

INSERT INTO tbl_type (typeName)
VALUES
    ('Grass'),
    ('Fire'),
    ('Water'),
    ('Lightning'),
    ('Psychic'),
    ('Fighting'),
    ('Colorless');

INSERT INTO tbl_stage (stageName)
VALUES
    ('Basic'),
    ('Stage 1'),
    ('Stage 2');
