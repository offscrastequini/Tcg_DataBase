-- Base Set, Jungle and Fossil sample cards
-- collection_id: 1 Base Set, 2 Jungle, 3 Fossil
-- type_id: 1 Grass, 2 Fire, 3 Water, 4 Lightning, 5 Psychic, 6 Fighting, 7 Colorless
-- stage_id: 1 Basic, 2 Stage 1, 3 Stage 2

INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
    -- Base Set
    (120, 'Charizard',   'Flame Pokémon',        'Fire Spin',      '100',  'Water',     NULL,       '3',  4,  1, 2, 3),
    (100, 'Blastoise',   'Shellfish Pokémon',    'Hydro Pump',     '40+',  'Lightning', NULL,       '3',  2,  1, 3, 3),
    (60,  'Venusaur',    'Seed Pokémon',         'Solarbeam',      '60',   'Fire',      'Water',    '2',  15, 1, 1, 3),
    (40,  'Bulbasaur',   'Seed Pokémon',         'Leech Seed',     '20',   'Fire',      'Water',    '1',  44, 1, 1, 1),
    (50,  'Ivysaur',     'Seed Pokémon',         'Vine Whip',      '30',   'Fire',      'Water',    '2',  30, 1, 1, 2),
    (40,  'Charmander',  'Lizard Pokémon',       'Ember',          '30',   'Water',     NULL,       '1',  46, 1, 2, 1),
    (60,  'Charmeleon',  'Flame Pokémon',        'Flamethrower',   '50',   'Water',     NULL,       '2',  24, 1, 2, 2),
    (40,  'Squirtle',    'Tiny Turtle Pokémon',  'Bubble',         '20',   'Lightning', NULL,       '1',  63, 1, 3, 1),
    (60,  'Wartortle',   'Turtle Pokémon',       'Withdraw',       '30',   'Lightning', NULL,       '1',  42, 1, 3, 2),
    (40,  'Pikachu',     'Mouse Pokémon',        'Thunder Jolt',   '30',   'Fighting',  'Metal',    '1',  58, 1, 4, 1),

    -- Jungle
    (90,  'Snorlax',     'Sleeping Pokémon',     'Body Slam',      '30',   'Fighting',  NULL,       '4',  11, 2, 7, 1),
    (70,  'Kangaskhan',  'Parent Pokémon',       'Comet Punch',    '20x',  'Fighting',  NULL,       '3',  5,  2, 7, 1),
    (60,  'Scyther',     'Mantis Pokémon',       'Slash',          '30',   'Fire',      'Fighting', '1',  10, 2, 1, 1),
    (70,  'Electrode',   'Ball Pokémon',         'Explosion',      '80',   'Fighting',  NULL,       '1',  2,  2, 4, 2),
    (60,  'Jigglypuff',  'Balloon Pokémon',      'Lullaby',        '—',    'Fighting',  NULL,       '1',  54, 2, 7, 1),
    (70,  'Wigglytuff',  'Balloon Pokémon',      'Do the Wave',    '10+',  'Fighting',  NULL,       '2',  16, 2, 7, 2),
    (60,  'Nidoqueen',   'Drill Pokémon',        'Boyfriends',     '20+',  'Psychic',   NULL,       '3',  7,  2, 6, 3),
    (80,  'Nidoking',    'Drill Pokémon',        'Thrash',         '30+',  'Psychic',   NULL,       '3',  32, 2, 6, 3),
    (50,  'Eevee',       'Evolution Pokémon',    'Tackle',         '20',   'Fighting',  NULL,       '1',  55, 2, 7, 1),
    (70,  'Flareon',     'Flame Pokémon',        'Flamethrower',   '60',   'Water',     NULL,       '2',  3,  2, 2, 2),

    -- Fossil
    (80,  'Aerodactyl',  'Fossil Pokémon',       'Wing Attack',    '30',   'Lightning', 'Fighting', '2',  1,  3, 6, 1),
    (90,  'Kabutops',    'Shellfish Pokémon',    'Slash',          '30',   'Grass',     NULL,       '2',  9,  3, 6, 2),
    (60,  'Kabuto',      'Shellfish Pokémon',    'Scratch',        '20',   'Grass',     NULL,       '1',  50, 3, 6, 1),
    (70,  'Omastar',     'Spiral Pokémon',       'Hydro Pump',     '30+',  'Grass',     NULL,       '2',  20, 3, 3, 2),
    (60,  'Omanyte',     'Spiral Pokémon',       'Water Gun',      '10+',  'Grass',     NULL,       '1',  52, 3, 3, 1),
    (70,  'Hitmonlee',   'Kicking Pokémon',      'Stretch Kick',   '30',   'Psychic',   NULL,       '1',  7,  3, 6, 1),
    (60,  'Hitmonchan',  'Punching Pokémon',     'Special Punch',  '40',   'Psychic',   NULL,       '2',  8,  3, 6, 1),
    (80,  'Lapras',      'Transport Pokémon',    'Water Gun',      '10+',  'Lightning', NULL,       '2',  10, 3, 3, 1),
    (70,  'Ditto',       'Transform Pokémon',    'Transform',      '—',    'Fighting',  NULL,       '1',  3,  3, 7, 1),
    (60,  'Moltres',     'Flame Pokémon',        'Wildfire',       '—',    'Water',     NULL,       '2',  12, 3, 2, 1);
