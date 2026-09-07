CREATE TABLE IF NOT EXISTS tbl_collection (
    id                            SERIAL PRIMARY KEY,
    collectionsSetName            VARCHAR(100) NOT NULL,
    releaseDate                   DATE NOT NULL,
    totalCardNumberInCollection   SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_type (
    id          SERIAL PRIMARY KEY,
    typeName    VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS tbl_stage (
    id          SERIAL PRIMARY KEY,
    stageName   VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS tbl_cards (
    id                        SERIAL PRIMARY KEY,
    hp                        SMALLINT,
    name                      VARCHAR(80) NOT NULL,
    info                      TEXT,
    attack                    VARCHAR(100),
    damage                    VARCHAR(20),
    weak                      VARCHAR(30),
    resis                     VARCHAR(30),
    retreat                   VARCHAR(20),
    cardNumberInCollection    SMALLINT NOT NULL,
    collection_id             INT NOT NULL,
    type_id                   INT NOT NULL,
    stage_id                  INT NOT NULL,
    CONSTRAINT fk_collection FOREIGN KEY (collection_id)
        REFERENCES tbl_collection (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_type FOREIGN KEY (type_id)
        REFERENCES tbl_type (id)
        ON DELETE RESTRICT,
    CONSTRAINT fk_stage FOREIGN KEY (stage_id)
        REFERENCES tbl_stage (id)
        ON DELETE RESTRICT
);
