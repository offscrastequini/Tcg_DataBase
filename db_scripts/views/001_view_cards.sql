CREATE OR REPLACE VIEW vw_cards_detailed AS
SELECT 
    c.id,
    c.name,
    c.hp,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionsSetName AS collection_name,
    col.releaseDate AS collection_release_date,
    col.totalCardNumberInCollection AS collection_total_cards,
    t.typeName AS type_name,
    s.stageName AS stage_name
FROM tbl_cards c
JOIN tbl_collection col ON c.collection_id = col.id
JOIN tbl_type t ON c.type_id = t.id
JOIN tbl_stage s ON c.stage_id = s.id;
